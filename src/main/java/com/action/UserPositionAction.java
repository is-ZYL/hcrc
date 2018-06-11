package com.action;

import java.awt.Font;
import java.io.File;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.sql.Ref;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.entity.EducationalExperience;
import com.entity.JobExperience;
import com.entity.ProjectExperience;
import com.entity.Resume;
import com.entity.ResumeSoftwareskills;
import com.entity.TrainExperience;
import com.entity.Users;
import com.service.IUserPositionService;

import val.VerificationCode;

@Controller
@RequestMapping("user_po")
public class UserPositionAction {

	private IUserPositionService service;
	
	@Autowired
	public void setService(IUserPositionService service) {
		this.service = service;
	}

	/*
	 * 用户注册
	 * @param user
	 * @param request
	 * @param val
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("user_regDo")
	public String user_regDo(Users user, HttpServletRequest request, String val) throws Exception {
		String VAL = (String) request.getSession().getAttribute("comment");
		if (VAL.equalsIgnoreCase(val)) {
			boolean flag = service.userRegDo(user);
			if (flag) {
				return "redirect:user_positionMain.html";
			}
		}
		return "redirect:/user_reg";
	}

	/**
	 * 检查用户名是否合格 1表示可以注册，0表示该用户名已经被注册
	 * @param u_phone
	 * @return
	 */
	@RequestMapping("user_checkUPhone")
	@ResponseBody
	public Integer checkUPhone(String u_phone) {
		String selectUPhone = service.selectUPhone(u_phone);
		if (selectUPhone == null) {
			return 1;
		} else {
			return 0;
		}
	}

	/**
	 * 用户进入首页（未登录）
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_positionMain.html")
	public String positionMain(@PathVariable("uri") String uri) {
		return uri + "/positionMain";
	}

	/**
	 * 用户进入修改密码页面
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_accountSecurity")
	public String accountSecurity(@PathVariable("uri") String uri) {
		return uri + "/accountSecurity";
	}

	/**
	 * 用户个人中心
	 * @return
	 */
	@RequestMapping("{uri}_center")
	public String userCenter(HttpServletRequest request, @PathVariable("uri") String uri) {
		Users user = (Users) request.getSession().getAttribute("user");
		// 说明未登录 返回首页登录
		if (user == null) {
			return "no";
		}
		return uri + "/userCenter";
	}

	/**
	 * 用户简历中心
	 * @return
	 */
	@RequestMapping("{uri}_myResume")
	public String myResume(HttpServletRequest request, @PathVariable("uri") String uri) {
		Users user = (Users) request.getSession().getAttribute("user");
		// 说明未登录 返回首页登录
		if (user == null) {
			return "no";
		}
		List<Resume> resumes =service.selectAllResumeByUid(user);
		request.setAttribute("resumes", resumes);
		return uri + "/myResume";
	}

	/**
	 * 用户查看简历
	 * @return
	 */
	@RequestMapping("{uri}_checkResume")
	public String checkResume(HttpServletRequest request, @PathVariable("uri") String uri,Resume resume) {
		Users user = (Users) request.getSession().getAttribute("user");
		// 说明未登录 返回首页登录
		if (user == null) {
			return "no";
		}
		Resume resumes = service.selectResumeByUId(resume);
		request.setAttribute("resumes", resumes);
		return uri + "/checkResume";
	}

	/**
	 * 用户进入创建简历页面
	 * @return
	 */
	@RequestMapping("{uri}_createResume")
	public String createResume(HttpServletRequest request, @PathVariable("uri") String uri) {
		Users user = (Users) request.getSession().getAttribute("user");
		// 说明未登录 返回首页登录
		if (user == null) {
			return "no";
		}
		return uri + "/createResume";
	}

	/**
	 * 检查用户用户创建的简历是否合格（不允许有重复的简历名称）
	 * 
	 * @param request
	 * @param r_rname
	 * @return
	 */
	@RequestMapping("user_checkResumeName")
	@ResponseBody
	public String checkResumeName(HttpServletRequest request, Resume resume) {
		Users user = (Users) request.getSession().getAttribute("user");
		if (user == null) {
			return "userIsNull";
		}
		resume.setUser(user);
		String selectUPhone = service.selectRnameByUId(resume);
		if (selectUPhone == null) {
			return "ok";
		} else {
			return "no";
		}
	}

	/**
	 * 用户创建简历
	 * 
	 * @return
	 */
	@RequestMapping("createResumeDo")
	@ResponseBody
	public String createResumeDo(Resume resume, HttpServletRequest request, MultipartFile file) {
		Users user = (Users) request.getSession().getAttribute("user");
		// 说明未登录 返回首页登录
		if (user == null) {
			return "no";
		}
		// 查询当前用户的简历条数，限制在三条以内
		int resumeCount = service.selectResumeCountByUid(user);
		// 超出范围
		if (resumeCount >= 3) {
			return "outRang";
		} else {
			String path = request.getSession().getServletContext().getRealPath("/userUpload");
			String name = file.getOriginalFilename();// 真实名字
			String uuid = UUID.randomUUID().toString();// 防止有一样的文件名字 产生一个随机的字符串
			String fileName = uuid + name.substring(name.lastIndexOf("."));// 将字符串与文件名进行拼接
			File dir = new File(path, fileName);
			resume.setR_header(fileName);
			resume.setUser(user);
			boolean createBasicResume = service.createBasicResume(resume);
			if (!dir.exists()) {
				dir.mkdirs();
			}
			try {
				file.transferTo(dir);// 写进上传的文件夹内
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}

			// 完成基本信息的保存过后 查询得出改简历的id 以便再次进行保存其他信息
			if (createBasicResume) {
				Long r_id = service.selectResumeId(resume);
				request.getSession().setAttribute("r_id", r_id);
				request.getSession().setAttribute("basicResume", "ok");
				request.getSession().setAttribute("r_rname", resume.getR_rname());
				return "ok";
			} else {
				return "no";
			}
		}

	}

	/**
	 * 保存用户工作经历
	 * @param request
	 * @param jobExperience
	 * @param r_id
	 * @param resume
	 * @return
	 */
	@RequestMapping("saveJobExperience")
	@ResponseBody
	public String saveJobExperience(HttpServletRequest request,JobExperience jobExperience,Resume resume) {
		int Num = service.checkJobExperienceNumByRID(resume.getR_id());
		if(Num >=3) {
			return "outRang";
		}
		jobExperience.setResume(resume);
		boolean IssaveJobExperience = service.saveJobExperience(jobExperience);
		if (IssaveJobExperience) {
			List<JobExperience> jobExperiences = service.selectJobExperienceByRID(resume.getR_id());
			request.getSession().setAttribute("jobExperiences",jobExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	/**
	 * 更新当前简历的工作经历
	 * @param request
	 * @param jobExperience
	 * @param r_id
	 * @param resume
	 * @return
	 */
	@RequestMapping("updateJobExperience")
	@ResponseBody
	public String updateJobExperience(HttpServletRequest request,JobExperience jobExperience,Resume resume) {
		jobExperience.setResume(resume);
		boolean IsupdateJobExperience = service.updateJobExperience(jobExperience);
		if (IsupdateJobExperience) {
			List<JobExperience> jobExperiences = service.selectJobExperienceByRID(resume.getR_id());
			request.getSession().setAttribute("jobExperiences",jobExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	/**
	 * 删除当前简历的工作经历
	 * @param request
	 * @param workExperienceeditorNum
	 * @param r_id
	 * @return
	 */
	@RequestMapping("deleteJobExperience")
	@ResponseBody
	public String deleteJobExperience(HttpServletRequest request,String workExperienceeditorNum,String r_id) {
		 int je_id;
		if (workExperienceeditorNum != null) {
			je_id = Integer.parseInt(workExperienceeditorNum);
		}else {
			return "null";
		}
		boolean IsdeleteJobExperience = service.deleteJobExperience(je_id);
		if (IsdeleteJobExperience) {
			List<JobExperience> jobExperiences = service.selectJobExperienceByRID(Integer.parseInt(r_id));
			request.getSession().setAttribute("jobExperiences",jobExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	
	
	/**
	 * 保存用户项目经历
	 * @param request
	 * @param projectExperience
	 * @param r_id
	 * @param resume
	 * @return
	 */
	@RequestMapping("saveProjectExperience")
	@ResponseBody
	public String saveProjectExperience(HttpServletRequest request,ProjectExperience projectExperience,Resume resume) {
		int Num = service.checkProjectExperienceNumByRID(resume.getR_id());
		if(Num >=3) {
			return "outRang";
		}
		projectExperience.setResume(resume);
		boolean IssaveProjectExperience = service.saveProjectExperience(projectExperience);
		if (IssaveProjectExperience) {
			List<ProjectExperience> projectExperiences = service.selectProjectExperienceByRID(resume.getR_id());
			request.getSession().setAttribute("projectExperiences",projectExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	/**
	 * 更新当前简历的项目经历
	 * @param request
	 * @param projectExperience
	 * @param r_id
	 * @param resume
	 * @return
	 */
	@RequestMapping("updateProjectExperience")
	@ResponseBody
	public String updateProjectExperience(HttpServletRequest request,ProjectExperience projectExperience,Resume resume) {
		projectExperience.setResume(resume);
		boolean IsupdateProjectExperience = service.updateProjectExperience(projectExperience);
		if (IsupdateProjectExperience) {
			List<ProjectExperience> ProjectExperiences = service.selectProjectExperienceByRID(resume.getR_id());
			request.getSession().setAttribute("projectExperiences",ProjectExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	/**
	 * 删除当前简历的项目经历
	 * @param request
	 * @param projectExperienceeditorNum
	 * @param r_id
	 * @return
	 */
	@RequestMapping("deleteProjectExperience")
	@ResponseBody
	public String deleteProjectExperience(HttpServletRequest request,String projectExperienceeditorNum,String r_id) {
		int pe_id;
		if (projectExperienceeditorNum != null) {
			pe_id = Integer.parseInt(projectExperienceeditorNum);
		}else {
			return "null";
		}
		boolean IsdeleteProjectExperience = service.deleteProjectExperience(pe_id);
		if (IsdeleteProjectExperience) {
			List<ProjectExperience> projectExperiences = service.selectProjectExperienceByRID(Integer.parseInt(r_id));
			request.getSession().setAttribute("projectExperiences",projectExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	

	/**
	 * 保存用户教育经历
	 * @param request
	 * @param educationalExperience
	 * @param r_id
	 * @param resume
	 * @return
	 */
	@RequestMapping("saveEducationExperience")
	@ResponseBody
	public String saveEducationExperience(HttpServletRequest request,EducationalExperience educationalExperience,Resume resume) {
		int Num = service.checkEducationExperienceNumByRID(resume.getR_id());
		if(Num >=3) {
			return "outRang";
		}
		educationalExperience.setResume(resume);
		boolean IssaveEducationExperience = service.saveEducationalExperience(educationalExperience);
		if (IssaveEducationExperience) {
			List<EducationalExperience> educationalExperiences= service.selectEducationExperienceByRID(resume.getR_id());
			request.getSession().setAttribute("educationalExperiences",educationalExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	/**
	 * 更新当前简历的教育经历
	 * @param request
	 * @param educationalExperience
	 * @param r_id
	 * @param resume
	 * @return
	 */
	@RequestMapping("updateEducationExperience")
	@ResponseBody
	public String updateEducationExperience(HttpServletRequest request,EducationalExperience educationalExperience,Resume resume) {
		educationalExperience.setResume(resume);
		boolean IsupdateEducationExperience = service.updateEducationExperience(educationalExperience);
		if (IsupdateEducationExperience) {
			List<EducationalExperience> educationalExperiences = service.selectEducationExperienceByRID(resume.getR_id());
			request.getSession().setAttribute("educationalExperiences",educationalExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	/**
	 * 删除当前简历的教育经历
	 * @param request
	 * @param educationExperienceeditorNum
	 * @param r_id
	 * @return
	 */
	@RequestMapping("deleteEducationExperience")
	@ResponseBody
	public String deleteEducationExperience(HttpServletRequest request,String educationExperienceeditorNum,String r_id) {
		int ed_id=0;
		if (educationExperienceeditorNum != null) {
			ed_id = Integer.parseInt(educationExperienceeditorNum);
		}else {
			return "null";
		}
		boolean IsdeleteEducationalExperience = service.deleteEducationExperience(ed_id);
		if (IsdeleteEducationalExperience) {
			List<EducationalExperience> educationalExperiences= service.selectEducationExperienceByRID(Integer.parseInt(r_id));
			request.getSession().setAttribute("educationalExperiences",educationalExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	
	
	/**
	 * 保存用户教育经历
	 * @param request
	 * @param educationalExperience
	 * @param r_id
	 * @param resume
	 * @return
	 */
	@RequestMapping("saveTrainExperience")
	@ResponseBody
	public String saveTrainExperience(HttpServletRequest request,TrainExperience trainExperience,Resume resume) {
		int Num = service.checkTrainExperienceNumByRID(resume.getR_id());
		if(Num >=3) {
			return "outRang";
		}
		trainExperience.setResume(resume);
		boolean IssaveEducationExperience = service.saveTrainExperience(trainExperience);
		if (IssaveEducationExperience) {
			List<TrainExperience> trainExperiences= service.selectTrainExperienceByRID(resume.getR_id());
			request.getSession().setAttribute("trainExperiences",trainExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	/**
	 * 更新当前简历的教育经历
	 * @param request
	 * @param educationalExperience
	 * @param r_id
	 * @param resume
	 * @return
	 */
	@RequestMapping("updateTrainExperience")
	@ResponseBody
	public String updateTrainExperience(HttpServletRequest request,TrainExperience trainExperience,Resume resume) {
		trainExperience.setResume(resume);
		boolean IsupdateTrainExperience = service.updateTrainExperience(trainExperience);
		if (IsupdateTrainExperience) {
			List<TrainExperience> trainExperiences = service.selectTrainExperienceByRID(resume.getR_id());
			request.getSession().setAttribute("trainExperiences",trainExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	/**
	 * 删除当前简历的教育经历
	 * @param request
	 * @param educationExperienceeditorNum
	 * @param r_id
	 * @return
	 */
	@RequestMapping("deleteTrainExperience")
	@ResponseBody
	public String deleteTrainExperience(HttpServletRequest request,String trainExperienceeditorNum,String r_id) {
		int te_id;
		if (trainExperienceeditorNum != null) {
			te_id = Integer.parseInt(trainExperienceeditorNum);
		}else {
			return "null";
		}
		boolean IsdeleteEducationalExperience = service.deleteTrainExperience(te_id);
		if (IsdeleteEducationalExperience) {
			List<TrainExperience> trainExperiences= service.selectTrainExperienceByRID(Integer.parseInt(r_id));
			request.getSession().setAttribute("trainExperiences",trainExperiences);
			return "ok";
		} else {
			return "no";
		}
	}
	
	
	/**
	 * 保存用户的特长
	 * @param request
	 * @param r_id
	 * @param r_speciality
	 * @param resume
	 * @return
	 */
	@RequestMapping("saveR_Speciality")
	@ResponseBody
	public String saveR_Speciality(HttpServletRequest request,Resume resume) {
		String r_specialitys = service.checkR_SpecialityByRID(resume.getR_id());
		if (r_specialitys != null) {
		String[]r_specialityes = r_specialitys.split(",");
		if(r_specialityes.length >=3) {
			return "outRang";
		}
		resume.setR_id(resume.getR_id());
		if (r_specialityes.length >0) {
			boolean IssaveR_Speciality = service.saveR_Speciality(r_specialitys+resume.getR_speciality()+",",resume.getR_id());
			if (IssaveR_Speciality) {
				String r_Speciality = service.checkR_SpecialityByRID(resume.getR_id());
				String[]speciality = r_Speciality.split(",");
				request.getSession().setAttribute("speciality",speciality);
				return "ok";
			} else {
				return "no";
			}
		}else {
			boolean IssaveR_Speciality = service.saveR_Speciality(resume.getR_speciality()+",",resume.getR_id());
			if (IssaveR_Speciality) {
				String r_Speciality = service.checkR_SpecialityByRID(resume.getR_id());
				String[]speciality = r_Speciality.split(",");
				request.getSession().setAttribute("speciality",speciality);
				return "ok";
			} else {
				return "no";
			}
		}
		}else {
			boolean IssaveR_Speciality = service.saveR_Speciality(resume.getR_speciality()+",",resume.getR_id());
			if (IssaveR_Speciality) {
				String r_Speciality = service.checkR_SpecialityByRID(resume.getR_id());
				request.getSession().setAttribute("speciality",r_Speciality);
				return "ok";
			} else {
				return "no";
			}
		}
	}
	
	/**
	 * 删除用户的特长
	 * @param request
	 * @param r_id
	 * @param r_speciality
	 * @param resume
	 * @return
	 */
	@RequestMapping("deleteSpeciality")
	@ResponseBody
	public String deleteSpeciality(HttpServletRequest request,Resume resume) {
		String r_specialitys = service.checkR_SpecialityByRID(resume.getR_id());
		String[]r_specialityes = r_specialitys.split(",");
		//通过循环找出要删除的特长  并从数组中删除
		String a = "";//循环掉不要的再将新的数组拼接在一起重新保存数据库
		int i = 0;
		for (String string : r_specialityes) {
			if (!resume.getR_speciality().equals(string)) {
				r_specialityes[i] = string;
				a= r_specialityes[i]+",";
				i++;
			}
		}
		//将数据库的数据清除并重新将a的数据存入数据库
			service.saveR_Speciality(null,resume.getR_id());
			boolean IssaveR_Speciality = service.saveR_Speciality(a,resume.getR_id());
			if (IssaveR_Speciality) {
				String r_Speciality = service.checkR_SpecialityByRID(resume.getR_id());
				String[]speciality = r_Speciality.split(",");
				request.getSession().setAttribute("speciality",speciality);
				return "ok";
			} else {
				return "no";
			}
	}
	
	

	/**
	 * 保存当前简历的个人空间信息
	 * @param request
	 * @param resume
	 * @param r_personalRoom
	 * @return
	 */
	@RequestMapping(value="saveR_personalRoom",method=RequestMethod.POST)
	@ResponseBody
	public String saveR_personalRoom(HttpServletRequest request, Resume resume) {
		boolean IsSaveR_personalRoom = service.saveR_personalRoom(resume);
		if (IsSaveR_personalRoom) {
			String R_personalRoom= service.selectR_personalRoomByRID(resume.getR_id());
			request.getSession().setAttribute("R_personalRoom",R_personalRoom);
			return "ok";
		} else {
			return "no";
		}
	}
	
	
	/**
	 * 保存当前简历的个人空间信息
	 * @param request
	 * @param resume
	 * @param r_personalRoom
	 * @return
	 */
	@RequestMapping(value="skillSave",method=RequestMethod.POST)
	@ResponseBody
	public String skillSave(HttpServletRequest request,ResumeSoftwareskills softwareskills,Resume resume ) {
		List<ResumeSoftwareskills> list = service.selectSkillByRID(resume.getR_id());
		if (list.size() >= 3) {
			List<ResumeSoftwareskills> softwareskilles = service.selectSkillByRID(resume.getR_id());
			request.getSession().setAttribute("softwareskilles",softwareskilles);
			return "outRang";
		} else {
			softwareskills.setResume(resume);
			boolean skillSave = service.skillSave(softwareskills);
			if (skillSave) {
				List<ResumeSoftwareskills> softwareskilles = service.selectSkillByRID(resume.getR_id());
				request.getSession().setAttribute("softwareskilles",softwareskilles);
				return "ok";
			} else {
				List<ResumeSoftwareskills> softwareskilles = service.selectSkillByRID(resume.getR_id());
				request.getSession().setAttribute("softwareskilles",softwareskilles);
				return "no";
			}
		}
	}
	
	
	/**
	 * 删除当前简历的个人空间信息
	 * @param request
	 * @param resume
	 * @param r_personalRoom
	 * @return
	 */
	@RequestMapping(value="deletePersonalRoom",method=RequestMethod.POST)
	@ResponseBody
	public String deletePersonalRoom(HttpServletRequest request) {
		Resume resume = new Resume();
		boolean IsSaveR_personalRoom = service.saveR_personalRoom(resume);
		if (IsSaveR_personalRoom) {
			String R_personalRoom= service.selectR_personalRoomByRID(resume.getR_id());
			request.getSession().setAttribute("R_personalRoom",R_personalRoom);
			return "ok";
		} else {
			return "no";
		}
	}
	
	
	/**
	 * 删除当前简历的个人空间信息
	 * @param request
	 * @param resume
	 * @param r_personalRoom
	 * @return
	 */
	@RequestMapping(value="skillDelete",method=RequestMethod.POST)
	@ResponseBody
	public String skillDelete(HttpServletRequest request,ResumeSoftwareskills softwareskills,Resume resume) {
		softwareskills.setResume(resume);
		boolean IsOk = service.skillDeleteById(softwareskills);
		if (IsOk) {
			List<ResumeSoftwareskills> softwareskilles = service.selectSkillByRID(resume.getR_id());
			request.getSession().setAttribute("softwareskilles",softwareskilles);
			return "ok";
		} else {
			List<ResumeSoftwareskills> softwareskilles = service.selectSkillByRID(resume.getR_id());
			request.getSession().setAttribute("softwareskilles",softwareskilles);
			return "no";
		}
	}
	
	
	/**
	 * 用户刷新简历
	 * @return
	 */
	@RequestMapping("{uri}_flushResume")
	public String flushResume(HttpServletRequest request, @PathVariable("uri") String uri,Resume resume) {
		Users user = (Users) request.getSession().getAttribute("user");
		// 说明未登录 返回首页登录
		if (user == null) {
			return "no";
		}
		boolean isFlushResume = service.flushResume(resume);
		if (isFlushResume) {
			return "ok";
		} else {
			return "no";
		}
	}

	/**
	 * 用户职位投递
	 * 
	 * @return
	 */
	@RequestMapping("{uri}_postDelivery")
	public String postDelivery(HttpServletRequest request, @PathVariable("uri") String uri) {
		Users user = (Users) request.getSession().getAttribute("user");
		// 说明未登录 返回首页登录
		if (user == null) {
			return "no";
		}
		return uri + "/postDelivery";
	}

	/**
	 * 用户职位收藏
	 * 
	 * @return
	 */
	@RequestMapping("{uri}_jobCollection")
	public String JobCollection(HttpServletRequest request, @PathVariable("uri") String uri) {
		Users user = (Users) request.getSession().getAttribute("user");
		// 说明未登录 返回首页登录
		if (user == null) {
			return "no";
		}
		return uri + "/jobCollection";
	}

	/**
	 * 用户企业屏蔽
	 * 
	 * @return
	 */
	@RequestMapping("{uri}_shieldedEnterprise")
	public String shieldedEnterprise(HttpServletRequest request, @PathVariable("uri") String uri) {
		Users user = (Users) request.getSession().getAttribute("user");
		// 说明未登录 返回首页登录
		if (user == null) {
			return "no";
		}
		return uri + "/shieldedEnterprise";
	}

	/**
	 * 用户登录
	 * 
	 * @param user
	 * @param map
	 * @param IsCheckd
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("user_login")
	@ResponseBody
	public Users loginDo(Users user, HttpServletRequest request, boolean IsCheckd, HttpServletResponse response)
			throws Exception {
		Users users = service.userLoginDo(user);
		request.getSession().setAttribute("user", users);
		if (users != null) {
			return users;
		}
		return null;
	}

	/**
	 * 退出登录
	 * 
	 * @return
	 */
	@RequestMapping("signOut")
	@ResponseBody
	public String SignOut(HttpServletRequest request) {
		request.getSession().removeAttribute("user");
		return "ok";
	}

	/**
	 * 用户更改密码
	 * 
	 * @return
	 */
	@RequestMapping("updatePassword")
	@ResponseBody
	public String updatePassword(HttpServletRequest request, String u_password_OLD, String u_password) {
		Users user = (Users) request.getSession().getAttribute("user");
		// 说明未登录 返回首页登录
		if (user == null) {
			return "null";
		}
		user.setU_password(u_password_OLD);
		if (service.selectUPassword(user) == null) {
			return "no";
		} else {
			user.setU_password(u_password);
			boolean isPass = service.userUpdatePass(user);
			return isPass == true ? "ok" : "No";
		}
	}

	/**
	 * 验证码
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("img")
	public String img(HttpServletRequest request, HttpServletResponse response) {
		VerificationCode code = new VerificationCode(request, response);
		return code.val(80, 30, new Font("Georgia", Font.ITALIC, 18), new Font("微软雅黑", Font.ITALIC, 25));
	}

}
