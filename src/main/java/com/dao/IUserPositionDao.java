package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.entity.EducationalExperience;
import com.entity.JobExperience;
import com.entity.ProjectExperience;
import com.entity.Resume;
import com.entity.ResumeSoftwareskills;
import com.entity.TrainExperience;
import com.entity.Users;

@Repository
public interface IUserPositionDao {

	/* 用户注册 */
	public Long userRegDo(Users user);

	/* 用户登录 */
	public Users userLoginDo(Users user);

	/* 判断注册，用户名是否存在 */
	public String selectUPhone(String u_phone);

	/* 判断原密码是否正确 */
	public String selectUPassword(Users user);

	/* 用户注册 */
	public Long updateUPassword(Users user);

	/* 用户新建简历（基本信息） */
	public Long insertBasicResume(Resume resume);

	/* 查询简历的id */
	public Long selectResumeId(Resume resume);

	/* 判断该用户的简历名称是否合格 */
	public String selectRnameByUId(Resume resume);

	/* 查询用户的简历条数 */
	public int selectResumeCountByUid(Users user);

	/* 保存用户填写的工作经历 */
	public int insertJobExperience(JobExperience jobExperience);

	/* 查询当前简历的所有工作经历 */
	public List<JobExperience> selectJobExperienceByRID(Integer r_id);

	/* 查询用户的工作经验条数 */
	public int checkJobExperienceNumByRID(int r_id);

	/* 更新用户的工作经验*/
	public int updateJobExperience(JobExperience jobExperience);

	/* 删除用户的工作经验*/
	public int deleteJobExperience(int je_id);

	/* 查询用户的项目经验条数 */
	public int checkProjectExperienceNumByRID(int r_id);

	/* 保存用户填写的项目经历验*/
	public int saveProjectExperience(ProjectExperience projectExperience);

	/* 查询当前简历的所有项目经验*/
	public List<ProjectExperience> selectProjectExperienceByRID(int r_id);

	/* 更新用户的项目经验*/
	public int updateProjectExperience(ProjectExperience projectExperience);

	/* 删除用户的项目经验*/
	public int deleteProjectExperience(int pe_id);

	/* 查询用户的教育经历条数 */
	public int checkEducationExperienceNumByRID(int r_id);

	/* 保存用户填写的教育经历*/
	public int saveEducationalExperience(EducationalExperience educationalExperience);

	/* 查询当前简历的所有教育经历*/
	public List<EducationalExperience> selectEducationExperienceByRID(int r_id);

	/* 更新用户的教育经历*/
	public int updateEducationExperience(EducationalExperience educationalExperience);

	/* 删除用户的教育经历*/
	public int deleteEducationExperience(int ed_id);

	/* 查询用户的培训经历条数 */
	public int checkTrainExperienceNumByRID(int r_id);

	/* 保存用户填写的培训经历*/
	public int saveTrainExperience(TrainExperience trainExperience);

	/* 查询当前简历的所有培训经历*/
	public List<TrainExperience> selectTrainExperienceByRID(int r_id);

	/* 更新用户的培训经历*/
	public int updateTrainExperience(TrainExperience trainExperience);

	/* 删除用户的培训经历*/
	public int deleteTrainExperience(int te_id);

	/*查询当前简历的特长*/	
	public String checkR_SpecialityByRID(int r_id);

	/* 保存用户填写的特长*/
	public int saveR_Speciality(@Param("r_speciality")String r_speciality,@Param("r_id")int r_id);

	/* 保存用户填写的个人空间*/
	public int saveR_personalRoom(Resume resume);

	/*查询当前简历的个人空间*/	
	public String selectR_personalRoomByRID(int r_id);

	/* 保存用户填写的技能特长*/
	public int skillSave(ResumeSoftwareskills softwareskills);

	/*查询当前简历的技能特长*/	
	public List<ResumeSoftwareskills> selectSkillByRID(int r_id);

	/*删除用户填写的技能特长*/
	public int skillDeleteById(ResumeSoftwareskills softwareskills);

	/*查询当前用户的所有简历*/	
	public List<Resume> selectAllResumeByUid(Users user);

	/*通过id查询简历*/	
	public Resume selectResumeByRId(Resume resume);

	/*通过id刷新简历*/	
	public int flushResume(Resume resume);


}
