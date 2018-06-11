package com.entity;

public class EnterpriseProfile {
	/**
	 * 企业简介
	 */
	private int ep_id;
	
	private String ep_name;
	
	private String ep_abbreviation;
	
	private String ep_nature;
	
	private int ep_scale;
	
	private String ep_address;
	
	private String ep_header;
	
	private String ep_category;
	
	private String ep_website;
	
	private String ep_email;
	
	private String ep_postalCode;
	
	private String ep_profile;
	
	private String ep_authentication;
	
	private String ep_createTime;
	
	private String ep_updateTime;
	
	private Enterprise enterprise;

	public int getEp_id() {
		return ep_id;
	}

	public void setEp_id(int ep_id) {
		this.ep_id = ep_id;
	}

	public String getEp_name() {
		return ep_name;
	}

	public void setEp_name(String ep_name) {
		this.ep_name = ep_name;
	}

	public String getEp_abbreviation() {
		return ep_abbreviation;
	}

	public void setEp_abbreviation(String ep_abbreviation) {
		this.ep_abbreviation = ep_abbreviation;
	}

	public String getEp_nature() {
		return ep_nature;
	}

	public void setEp_nature(String ep_nature) {
		this.ep_nature = ep_nature;
	}

	public int getEp_scale() {
		return ep_scale;
	}

	public void setEp_scale(int ep_scale) {
		this.ep_scale = ep_scale;
	}

	public String getEp_address() {
		return ep_address;
	}

	public void setEp_address(String ep_address) {
		this.ep_address = ep_address;
	}

	public String getEp_header() {
		return ep_header;
	}

	public void setEp_header(String ep_header) {
		this.ep_header = ep_header;
	}

	public String getEp_category() {
		return ep_category;
	}

	public void setEp_category(String ep_category) {
		this.ep_category = ep_category;
	}

	public String getEp_website() {
		return ep_website;
	}

	public void setEp_website(String ep_website) {
		this.ep_website = ep_website;
	}

	public String getEp_email() {
		return ep_email;
	}

	public void setEp_email(String ep_email) {
		this.ep_email = ep_email;
	}

	public String getEp_postalCode() {
		return ep_postalCode;
	}

	public void setEp_postalCode(String ep_postalCode) {
		this.ep_postalCode = ep_postalCode;
	}

	public String getEp_profile() {
		return ep_profile;
	}

	public void setEp_profile(String ep_profile) {
		this.ep_profile = ep_profile;
	}

	public String getEp_authentication() {
		return ep_authentication;
	}

	public void setEp_authentication(String ep_authentication) {
		this.ep_authentication = ep_authentication;
	}

	public String getEp_createTime() {
		return ep_createTime;
	}

	public void setEp_createTime(String ep_createTime) {
		this.ep_createTime = ep_createTime;
	}

	public String getEp_updateTime() {
		return ep_updateTime;
	}

	public void setEp_updateTime(String ep_updateTime) {
		this.ep_updateTime = ep_updateTime;
	}

	public Enterprise getEnterprise() {
		return enterprise;
	}

	public void setEnterprise(Enterprise enterprise) {
		this.enterprise = enterprise;
	}

	@Override
	public String toString() {
		return "EnterpriseProfile [ep_id=" + ep_id + ", ep_name=" + ep_name + ", ep_abbreviation=" + ep_abbreviation
				+ ", ep_nature=" + ep_nature + ", ep_scale=" + ep_scale + ", ep_address=" + ep_address + ", ep_header="
				+ ep_header + ", ep_category=" + ep_category + ", ep_website=" + ep_website + ", ep_email=" + ep_email
				+ ", ep_postalCode=" + ep_postalCode + ", ep_profile=" + ep_profile + ", ep_authentication="
				+ ep_authentication + ", ep_createTime=" + ep_createTime + ", ep_updateTime=" + ep_updateTime
				+ ", enterprise=" + enterprise + "]";
	}
	
	
}
