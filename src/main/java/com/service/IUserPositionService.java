package com.service;

import java.util.List;

import com.entity.EducationalExperience;
import com.entity.JobExperience;
import com.entity.ProjectExperience;
import com.entity.Resume;
import com.entity.ResumeSoftwareskills;
import com.entity.TrainExperience;
import com.entity.Users;

public interface IUserPositionService {
	/* 用户注册 */
	public boolean userRegDo(Users user) throws Exception;

	/* 用户登录 */
	public Users userLoginDo(Users user) throws Exception;

	/* 判断注册，用户名是否存在 */
	public String selectUPhone(String u_phone);

	/* 判断注册，用户名是否存在 */
	public String selectUPassword(Users user);

	/* 用户注册 */
	public boolean userUpdatePass(Users user);

	/* 用户新建简历（基本信息） */
	public boolean createBasicResume(Resume resume);

	/* 查询简历的id */
	public Long selectResumeId(Resume resume);

	/* 判断该用户的简历名称是否合格 */
	public String selectRnameByUId(Resume resume);

	/* 查询用户的简历条数 */
	public int selectResumeCountByUid(Users user);

	/* 保存用户填写的工作经历 */
	public boolean saveJobExperience(JobExperience jobExperience);

	/* 查询当前简历的所有工作经验信息 */
	public List<JobExperience> selectJobExperienceByRID(Integer r_id);

	/* 查询用户的工作经验条数 */
	public int checkJobExperienceNumByRID(int r_id);

	/* 更新用户的工作经验 */
	public boolean updateJobExperience(JobExperience jobExperience);

	/* 删除用户的工作经验 */
	public boolean deleteJobExperience(int je_id);

	/* 查询用户的项目经验条数 */
	public int checkProjectExperienceNumByRID(int parseInt);

	/* 保存用户填写的项目经验*/
	public boolean saveProjectExperience(ProjectExperience projectExperience);

	/* 查询当前简历的所有项目经验信息 */
	public List<ProjectExperience> selectProjectExperienceByRID(int r_id);

	/* 更新用户的项目经验 */
	public boolean updateProjectExperience(ProjectExperience projectExperience);

	/* 删除用户的项目经验 */
	public boolean deleteProjectExperience(int pe_id);

	/* 查询用户的教育经历条数 */
	public int checkEducationExperienceNumByRID(int parseInt);

	/* 保存用户填写的教育经历*/
	public boolean saveEducationalExperience(EducationalExperience educationalExperience);

	/* 查询当前简历的所有教育经历信息 */
	public List<EducationalExperience> selectEducationExperienceByRID(int r_id);

	/* 更新用户的教育经历*/
	public boolean updateEducationExperience(EducationalExperience educationalExperience);

	/* 删除用户的教育经历 */
	public boolean deleteEducationExperience(int ed_id);

	/* 查询用户的培训经历条数 */
	public int checkTrainExperienceNumByRID(int r_id);

	/* 保存用户填写的培训经历*/
	public boolean saveTrainExperience(TrainExperience trainExperience);

	/* 查询当前简历的所有培训经历信息 */
	public List<TrainExperience> selectTrainExperienceByRID(int r_id);

	/* 更新用户的培训经历*/
	public boolean updateTrainExperience(TrainExperience trainExperience);
	
	/* 删除用户的培训经历 */
	public boolean deleteTrainExperience(int te_id);

	/*查询当前简历的特长*/
	public String checkR_SpecialityByRID(int r_id);

	/*保存当前简历的特长*/
	public boolean saveR_Speciality(String r_speciality,int r_id);

	/*保存当前简历的个人空间信息*/
	public boolean saveR_personalRoom(Resume resume);

	/*查询当前简历的个人空间信息*/
	public String selectR_personalRoomByRID(int r_id);

	/*保存当前简历的技能*/
	public boolean skillSave(ResumeSoftwareskills softwareskills);

	/*查询当前简历的技能*/
	public List<ResumeSoftwareskills> selectSkillByRID(int r_id);

	/*删除当前简历的技能*/
	public boolean skillDeleteById(ResumeSoftwareskills softwareskills);

	/*查询当前用户的所有简历*/
	public List<Resume> selectAllResumeByUid(Users user);

	/*通过id查询简历*/
	public Resume selectResumeByUId(Resume resume);

	/*刷新简历时间*/
	public boolean flushResume(Resume resume);


}
