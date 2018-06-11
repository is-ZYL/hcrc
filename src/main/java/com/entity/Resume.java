package com.entity;

import java.util.List;

public class Resume {
	/**
	 * 个人简历
	 */
	private int r_id;
	
	private String r_rname;//简历名字
	
	private String r_name;//真实姓名
	
	private String r_sex;
	
	private String r_header;//头像
	
	private int r_age;
	
	private String r_address;
	
	private String r_phone;
	
	private int r_experience;
	
	private String r_qq;
	
	private String r_weChat;
	
	private String r_judgement;
	
	private String r_email;
	
	private Users user;
	
	private String r_speciality;
	
	private String r_personalRoom;
	
	private String r_softwareSkills;
	
	private String r_expressDelivery;
	
	private String r_sendtime;
	
	private String r_whoRead;
	
	private String r_flushTime;
	
	
	private List<JobExperience> jobExperience;//工作经验
	
	private List<EducationalExperience> educationalExperience;//培训经历
	
	private List<ResumeSoftwareskills> softwareskills; //软件技能
	
	private List<ProjectExperience> projectExperiences; //项目经验
	
	private List<TrainExperience> trainExperiences;//培训经历
	
	public List<EducationalExperience> getEducationalExperience() {
		return educationalExperience;
	}

	public void setEducationalExperience(List<EducationalExperience> educationalExperience) {
		this.educationalExperience = educationalExperience;
	}

	public List<JobExperience> getJobExperience() {
		return jobExperience;
	}

	public void setJobExperience(List<JobExperience> jobExperience) {
		this.jobExperience = jobExperience;
	}

	public List<ResumeSoftwareskills> getSoftwareskills() {
		return softwareskills;
	}

	public void setSoftwareskills(List<ResumeSoftwareskills> softwareskills) {
		this.softwareskills = softwareskills;
	}


	public List<ProjectExperience> getProjectExperiences() {
		return projectExperiences;
	}

	public void setProjectExperiences(List<ProjectExperience> projectExperiences) {
		this.projectExperiences = projectExperiences;
	}

	public List<TrainExperience> getTrainExperiences() {
		return trainExperiences;
	}

	public void setTrainExperiences(List<TrainExperience> trainExperiences) {
		this.trainExperiences = trainExperiences;
	}

	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}

	public String getR_rname() {
		return r_rname;
	}

	public void setR_rname(String r_rname) {
		this.r_rname = r_rname;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getR_sex() {
		return r_sex;
	}

	public void setR_sex(String r_sex) {
		this.r_sex = r_sex;
	}

	public int getR_age() {
		return r_age;
	}

	public void setR_age(int r_age) {
		this.r_age = r_age;
	}

	public String getR_address() {
		return r_address;
	}

	public void setR_address(String r_address) {
		this.r_address = r_address;
	}

	public String getR_phone() {
		return r_phone;
	}

	public void setR_phone(String r_phone) {
		this.r_phone = r_phone;
	}

	public int getR_experience() {
		return r_experience;
	}

	public void setR_experience(int r_experience) {
		this.r_experience = r_experience;
	}

	public String getR_qq() {
		return r_qq;
	}

	public void setR_qq(String r_qq) {
		this.r_qq = r_qq;
	}


	public String getR_judgement() {
		return r_judgement;
	}

	public void setR_judgement(String r_judgement) {
		this.r_judgement = r_judgement;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public String getR_speciality() {
		return r_speciality;
	}

	public void setR_speciality(String r_speciality) {
		this.r_speciality = r_speciality;
	}

	public String getR_personalRoom() {
		return r_personalRoom;
	}

	public void setR_personalRoom(String r_personalRoom) {
		this.r_personalRoom = r_personalRoom;
	}

	public String getR_softwareSkills() {
		return r_softwareSkills;
	}

	public void setR_softwareSkills(String r_softwareSkills) {
		this.r_softwareSkills = r_softwareSkills;
	}

	public String getR_expressDelivery() {
		return r_expressDelivery;
	}

	public void setR_expressDelivery(String r_expressDelivery) {
		this.r_expressDelivery = r_expressDelivery;
	}

	public String getR_sendtime() {
		return r_sendtime;
	}

	public void setR_sendtime(String r_sendtime) {
		this.r_sendtime = r_sendtime;
	}

	public String getR_whoRead() {
		return r_whoRead;
	}

	public void setR_whoRead(String r_whoRead) {
		this.r_whoRead = r_whoRead;
	}

	public String getR_email() {
		return r_email;
	}

	public void setR_email(String r_email) {
		this.r_email = r_email;
	}

	public String getR_weChat() {
		return r_weChat;
	}

	public void setR_weChat(String r_weChat) {
		this.r_weChat = r_weChat;
	}

	


	public String getR_flushTime() {
		return r_flushTime;
	}

	public void setR_flushTime(String r_flushTime) {
		this.r_flushTime = r_flushTime;
	}

	public String getR_header() {
		return r_header;
	}

	public void setR_header(String r_header) {
		this.r_header = r_header;
	}

	@Override
	public String toString() {
		return "Resume [r_id=" + r_id + ", r_rname=" + r_rname + ", r_name=" + r_name + ", r_sex=" + r_sex
				+ ", r_header=" + r_header + ", r_age=" + r_age + ", r_address=" + r_address + ", r_phone=" + r_phone
				+ ", r_experience=" + r_experience + ", r_qq=" + r_qq + ", r_weChat=" + r_weChat + ", r_judgement="
				+ r_judgement + ", r_email=" + r_email + ", user=" + user + ", r_speciality=" + r_speciality
				+ ", r_personalRoom=" + r_personalRoom + ", r_softwareSkills=" + r_softwareSkills
				+ ", r_expressDelivery=" + r_expressDelivery + ", r_sendtime=" + r_sendtime + ", r_whoRead=" + r_whoRead
				+ ", jobExperience=" + jobExperience + ", educationalExperience=" + educationalExperience + "]";
	}


	
	
	
	
	
}
