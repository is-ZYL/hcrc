package com.entity;

public class LaborImage {
	/**
	 * 培训联盟形象
	 */
	private int li_id;
	
	private String li_image;
	
	private int li_imgNum;
	
	private LaborDispatch labor_dispatch;

	public int getLi_id() {
		return li_id;
	}

	public void setLi_id(int li_id) {
		this.li_id = li_id;
	}

	public String getLi_image() {
		return li_image;
	}

	public void setLi_image(String li_image) {
		this.li_image = li_image;
	}

	public int getLi_imgNum() {
		return li_imgNum;
	}

	public void setLi_imgNum(int li_imgNum) {
		this.li_imgNum = li_imgNum;
	}

	public LaborDispatch getLabor_dispatch() {
		return labor_dispatch;
	}

	public void setLabor_dispatch(LaborDispatch labor_dispatch) {
		this.labor_dispatch = labor_dispatch;
	}

	@Override
	public String toString() {
		return "LaborImage [li_id=" + li_id + ", li_image=" + li_image + ", li_imgNum=" + li_imgNum
				+ ", labor_dispatch=" + labor_dispatch + "]";
	}
	
	
}
