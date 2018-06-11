package com.entity;

public class LaborDispatch {
	/**
	 * 劳务派遣
	 */
	private int ld_id;
	
	private String ld_member;
	
	private String ld_usldrnamld;
	
	private String ld_passwor;

	public int getLd_id() {
		return ld_id;
	}

	public void setLd_id(int ld_id) {
		this.ld_id = ld_id;
	}

	public String getLd_member() {
		return ld_member;
	}

	public void setLd_member(String ld_member) {
		this.ld_member = ld_member;
	}

	public String getLd_usldrnamld() {
		return ld_usldrnamld;
	}

	public void setLd_usldrnamld(String ld_usldrnamld) {
		this.ld_usldrnamld = ld_usldrnamld;
	}

	public String getLd_passwor() {
		return ld_passwor;
	}

	public void setLd_passwor(String ld_passwor) {
		this.ld_passwor = ld_passwor;
	}

	@Override
	public String toString() {
		return "Labor_dispatch [ld_id=" + ld_id + ", ld_member=" + ld_member + ", ld_usldrnamld=" + ld_usldrnamld
				+ ", ld_passwor=" + ld_passwor + "]";
	}
	
	
}
