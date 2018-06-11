package com.entity;

public class Enterprise {
	/**
	 * 企业账号
	 */
	private int e_id;
	
	private String e_username;
	
	private String e_password;

	private String e_carded;//身份证
	
	private String e_corporatename;//公司全称
	
	private String e_businesslicense;//营业执照
	
	private String  e_Contactnumber;//联系电话

	public int getE_id() {
		return e_id;
	}

	public void setE_id(int e_id) {
		this.e_id = e_id;
	}

	public String getE_username() {
		return e_username;
	}

	public void setE_username(String e_username) {
		this.e_username = e_username;
	}

	public String getE_password() {
		return e_password;
	}

	public void setE_password(String e_password) {
		this.e_password = e_password;
	}

	public String getE_carded() {
		return e_carded;
	}

	public void setE_carded(String e_carded) {
		this.e_carded = e_carded;
	}

	public String getE_corporatename() {
		return e_corporatename;
	}

	public void setE_corporatename(String e_corporatename) {
		this.e_corporatename = e_corporatename;
	}

	public String getE_businesslicense() {
		return e_businesslicense;
	}

	public void setE_businesslicense(String e_businesslicense) {
		this.e_businesslicense = e_businesslicense;
	}

	public String getE_Contactnumber() {
		return e_Contactnumber;
	}

	public void setE_Contactnumber(String e_Contactnumber) {
		this.e_Contactnumber = e_Contactnumber;
	}

	@Override
	public String toString() {
		return "Enterprise [e_id=" + e_id + ", e_username=" + e_username + ", e_password=" + e_password + ", e_carded="
				+ e_carded + ", e_corporatename=" + e_corporatename + ", e_businesslicense=" + e_businesslicense
				+ ", e_Contactnumber=" + e_Contactnumber + "]";
	}

	
}
