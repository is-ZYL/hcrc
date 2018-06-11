package com.entity;

public class Jobdelivery {
	/**
	 * 用户与企业职位投递
	 */
	private int jd_id;
	
	private String jd_situation;
	
	private String jd_sendTime;
	
	private String jd_interviewTime;
	
	private Resume resume;
	
	private Position position;

	public int getJd_id() {
		return jd_id;
	}

	public void setJd_id(int jd_id) {
		this.jd_id = jd_id;
	}

	public String getJd_situation() {
		return jd_situation;
	}

	public void setJd_situation(String jd_situation) {
		this.jd_situation = jd_situation;
	}

	public String getJd_sendTime() {
		return jd_sendTime;
	}

	public void setJd_sendTime(String jd_sendTime) {
		this.jd_sendTime = jd_sendTime;
	}

	public String getJd_interviewTime() {
		return jd_interviewTime;
	}

	public void setJd_interviewTime(String jd_interviewTime) {
		this.jd_interviewTime = jd_interviewTime;
	}

	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	@Override
	public String toString() {
		return "Jobdelivery [jd_id=" + jd_id + ", jd_situation=" + jd_situation + ", jd_sendTime=" + jd_sendTime
				+ ", jd_interviewTime=" + jd_interviewTime + ", resume=" + resume + ", position=" + position + "]";
	}
	
	
	
}
