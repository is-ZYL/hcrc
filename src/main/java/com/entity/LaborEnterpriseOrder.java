package com.entity;

public class LaborEnterpriseOrder {
/**
 * 企业与劳务派遣订单
 */
	private int leo_id;
	
	private String leo_personnelNum;
	
	private String leo_state;
	
	private String leo_freshTime;
	
	private LaborPersonnel labor_personnel;
	
	private Position position;
	
	private LaborDispatch labor_dispatch;

	public int getLeo_id() {
		return leo_id;
	}

	public void setLeo_id(int leo_id) {
		this.leo_id = leo_id;
	}

	public String getLeo_personnelNum() {
		return leo_personnelNum;
	}

	public void setLeo_personnelNum(String leo_personnelNum) {
		this.leo_personnelNum = leo_personnelNum;
	}

	public String getLeo_state() {
		return leo_state;
	}

	public void setLeo_state(String leo_state) {
		this.leo_state = leo_state;
	}

	public String getLeo_freshTime() {
		return leo_freshTime;
	}

	public void setLeo_freshTime(String leo_freshTime) {
		this.leo_freshTime = leo_freshTime;
	}

	public LaborPersonnel getLabor_personnel() {
		return labor_personnel;
	}

	public void setLabor_personnel(LaborPersonnel labor_personnel) {
		this.labor_personnel = labor_personnel;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	public LaborDispatch getLabor_dispatch() {
		return labor_dispatch;
	}

	public void setLabor_dispatch(LaborDispatch labor_dispatch) {
		this.labor_dispatch = labor_dispatch;
	}

	@Override
	public String toString() {
		return "LaborEnterpriseOrder [leo_id=" + leo_id + ", leo_personnelNum=" + leo_personnelNum + ", leo_state="
				+ leo_state + ", leo_freshTime=" + leo_freshTime + ", labor_personnel=" + labor_personnel
				+ ", position=" + position + ", labor_dispatch=" + labor_dispatch + "]";
	}
	
	
	
}
