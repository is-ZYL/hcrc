package com.entity;

public class EducationalExperience {
	private int ed_id;
	
	private String school_name;
	
	private String start_time;
	
	private String end_time; 
	
	private String system;//系
	
	private String major;//专业
	
	private String education;//学历
	
	private Resume resume;

	public int getEd_id() {
		return ed_id;
	}

	public void setEd_id(int ed_id) {
		this.ed_id = ed_id;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public String getSystem() {
		return system;
	}

	public void setSystem(String system) {
		this.system = system;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}

	@Override
	public String toString() {
		return "EducationalExperience [ed_id=" + ed_id + ", school_name=" + school_name + ", start_time=" + start_time
				+ ", end_time=" + end_time + ", system=" + system + ", major=" + major + ", education=" + education
				+ ", resume=" + resume + "]";
	}
	
	
}
