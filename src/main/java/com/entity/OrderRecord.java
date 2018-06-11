package com.entity;

public class OrderRecord {
	/**
	 * 企业订单竟单记录
	 */
	private int od_id;
	
	private LaborEnterpriseOrder labor_enterprise_order;
	
	private int or_singleCase;

	public int getOd_id() {
		return od_id;
	}

	public void setOd_id(int od_id) {
		this.od_id = od_id;
	}

	public LaborEnterpriseOrder getLabor_enterprise_order() {
		return labor_enterprise_order;
	}

	public void setLabor_enterprise_order(LaborEnterpriseOrder labor_enterprise_order) {
		this.labor_enterprise_order = labor_enterprise_order;
	}

	public int getOr_singleCase() {
		return or_singleCase;
	}

	public void setOr_singleCase(int or_singleCase) {
		this.or_singleCase = or_singleCase;
	}

	@Override
	public String toString() {
		return "OrderRecord [od_id=" + od_id + ", labor_enterprise_order=" + labor_enterprise_order + ", or_singleCase="
				+ or_singleCase + "]";
	}
	
	
}
