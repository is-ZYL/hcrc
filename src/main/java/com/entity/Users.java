package com.entity;

import java.util.List;

public class Users {
	/**
	 * 个人用户
	 */
	private int u_id;
	
	private String u_phone;
	
	private String u_password;
	
	private String u_header;
	
	private List<Resume> resume;
	
	

	public List<Resume> getResume() {
		return resume;
	}

	public void setResume(List<Resume> resume) {
		this.resume = resume;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public String getU_password() {
		return u_password;
	}

	public void setU_password(String u_password) {
		this.u_password = u_password;
	}

	public String getU_header() {
		return u_header;
	}

	public void setU_header(String u_header) {
		this.u_header = u_header;
	}

	@Override
	public String toString() {
		return "Users [u_id=" + u_id + ", u_phone=" + u_phone + ", u_password=" + u_password + ", u_header=" + u_header
				+ ", resume=" + resume + "]";
	}

	
	

	
	
}
