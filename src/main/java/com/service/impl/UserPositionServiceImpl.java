package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IUserPositionDao;
import com.entity.EducationalExperience;
import com.entity.JobExperience;
import com.entity.ProjectExperience;
import com.entity.Resume;
import com.entity.ResumeSoftwareskills;
import com.entity.TrainExperience;
import com.entity.Users;
import com.service.IUserPositionService;

@Service
public class UserPositionServiceImpl implements IUserPositionService {

	@Autowired
	private IUserPositionDao userPositionDao;


	@Override
	@Transactional
	public boolean userRegDo(Users user) throws Exception {
		return userPositionDao.userRegDo(user) > 0;
	}
	
	
	@Override
	@Transactional
	public Users userLoginDo(Users user) throws Exception {
		return userPositionDao.userLoginDo(user);
	}


	@Override
	@Transactional
	public String selectUPhone(String u_phone) {
		return userPositionDao.selectUPhone(u_phone);
	}


	@Override
	@Transactional
	public String selectUPassword(Users user) {
		return userPositionDao.selectUPassword(user);
	}


	@Override
	@Transactional
	public boolean userUpdatePass(Users user) {
		return userPositionDao.updateUPassword(user)>0;
	}


	@Override
	@Transactional
	public boolean createBasicResume(Resume resume) {
		return userPositionDao.insertBasicResume(resume)>0;
	}


	@Override
	@Transactional
	public Long selectResumeId(Resume resume) {
		return userPositionDao.selectResumeId(resume);
	}


	@Override
	@Transactional
	public String selectRnameByUId(Resume resume) {
		return userPositionDao.selectRnameByUId(resume);
	}


	@Override
	@Transactional
	public int selectResumeCountByUid(Users user) {
		return userPositionDao.selectResumeCountByUid(user);
	}


	@Override
	@Transactional
	public boolean saveJobExperience(JobExperience jobExperience) {
		return userPositionDao.insertJobExperience(jobExperience)>0;
	}


	@Override
	@Transactional
	public List<JobExperience> selectJobExperienceByRID(Integer r_id) {
		return userPositionDao.selectJobExperienceByRID(r_id);
	}


	@Override
	@Transactional
	public int checkJobExperienceNumByRID(int r_id) {
		return userPositionDao.checkJobExperienceNumByRID(r_id);
	}


	@Override
	@Transactional
	public boolean updateJobExperience(JobExperience jobExperience) {
		return userPositionDao.updateJobExperience(jobExperience)>0;
	}


	@Override
	@Transactional
	public boolean deleteJobExperience(int je_id) {
		return userPositionDao.deleteJobExperience(je_id)>0;
	}


	@Override
	@Transactional
	public int checkProjectExperienceNumByRID(int r_id) {
		return userPositionDao.checkProjectExperienceNumByRID(r_id);
	}


	@Override
	@Transactional
	public boolean saveProjectExperience(ProjectExperience projectExperience) {
		return userPositionDao.saveProjectExperience(projectExperience)>0;
	}


	@Override
	@Transactional
	public List<ProjectExperience> selectProjectExperienceByRID(int r_id) {
		return userPositionDao.selectProjectExperienceByRID(r_id);
	}


	@Override
	@Transactional
	public boolean updateProjectExperience(ProjectExperience projectExperience) {
		return userPositionDao.updateProjectExperience(projectExperience)>0;
	}


	@Override
	@Transactional
	public boolean deleteProjectExperience(int pe_id) {
		return userPositionDao.deleteProjectExperience(pe_id)>0;
	}


	@Override
	@Transactional
	public int checkEducationExperienceNumByRID(int r_id) {
		return userPositionDao.checkEducationExperienceNumByRID(r_id);
	}


	@Override
	@Transactional
	public boolean saveEducationalExperience(EducationalExperience educationalExperience) {
		return userPositionDao.saveEducationalExperience(educationalExperience)>0;
	}


	@Override
	@Transactional
	public List<EducationalExperience> selectEducationExperienceByRID(int r_id) {
		return userPositionDao.selectEducationExperienceByRID(r_id);
	}


	@Override
	@Transactional
	public boolean updateEducationExperience(EducationalExperience educationalExperience) {
		return userPositionDao.updateEducationExperience(educationalExperience)>0;
	}


	@Override
	@Transactional
	public boolean deleteEducationExperience(int ed_id) {
		return userPositionDao.deleteEducationExperience(ed_id)>0;
	}


	@Override
	@Transactional
	public int checkTrainExperienceNumByRID(int r_id) {
		return userPositionDao.checkTrainExperienceNumByRID(r_id);
	}


	@Override
	@Transactional
	public boolean saveTrainExperience(TrainExperience trainExperience) {
		return userPositionDao.saveTrainExperience(trainExperience)>0;
	}


	@Override
	@Transactional
	public List<TrainExperience> selectTrainExperienceByRID(int r_id) {
		return userPositionDao.selectTrainExperienceByRID(r_id);
	}


	@Override
	@Transactional
	public boolean updateTrainExperience(TrainExperience trainExperience) {
		return userPositionDao.updateTrainExperience(trainExperience)>0;
	}


	@Override
	@Transactional
	public boolean deleteTrainExperience(int te_id) {
		return userPositionDao.deleteTrainExperience(te_id)>0;
	}


	@Override
	@Transactional
	public String checkR_SpecialityByRID(int r_id) {
		return userPositionDao.checkR_SpecialityByRID(r_id);
	}


	@Override
	@Transactional
	public boolean saveR_Speciality(String r_speciality,int r_id) {
		return userPositionDao.saveR_Speciality(r_speciality,r_id)>0;
	}


	@Override
	@Transactional
	public boolean saveR_personalRoom(Resume resume) {
		return userPositionDao.saveR_personalRoom(resume)>0;
	}


	@Override
	@Transactional
	public String selectR_personalRoomByRID(int r_id) {
		return userPositionDao.selectR_personalRoomByRID(r_id);
	}


	@Override
	@Transactional
	public boolean skillSave(ResumeSoftwareskills softwareskills) {
		return userPositionDao.skillSave(softwareskills) > 0;
	}


	@Override
	@Transactional
	public List<ResumeSoftwareskills> selectSkillByRID(int r_id) {
		return userPositionDao.selectSkillByRID(r_id);
	}


	@Override
	@Transactional
	public boolean skillDeleteById(ResumeSoftwareskills softwareskills) {
		return userPositionDao.skillDeleteById(softwareskills)>0;
	}


	@Override
	@Transactional
	public List<Resume> selectAllResumeByUid(Users user) {
		return userPositionDao.selectAllResumeByUid(user);
	}


	@Override
	@Transactional
	public Resume selectResumeByUId(Resume resume) {
		return userPositionDao.selectResumeByRId(resume);
	}


	@Override
	@Transactional
	public boolean flushResume(Resume resume) {
		return userPositionDao.flushResume(resume)>0;
	}

	
	
}
