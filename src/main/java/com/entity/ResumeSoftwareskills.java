package com.entity;
//软件技能表
public class ResumeSoftwareskills {

	private int rs_id;
	
	private String rs_name;//技能名字
	
	private String rs_proficiency;//技能熟练度
	
	private  Resume resume; //外键到简历表

	public ResumeSoftwareskills() {
		super();
	}

	public int getRs_id() {
		return rs_id;
	}

	public void setRs_id(int rs_id) {
		this.rs_id = rs_id;
	}

	public String getRs_name() {
		return rs_name;
	}

	public void setRs_name(String rs_name) {
		this.rs_name = rs_name;
	}

	public String getRs_proficiency() {
		return rs_proficiency;
	}

	public void setRs_proficiency(String rs_proficiency) {
		this.rs_proficiency = rs_proficiency;
	}

	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	} 
	
}
