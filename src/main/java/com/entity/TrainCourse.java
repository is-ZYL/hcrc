package com.entity;

public class TrainCourse {
	/**
	 * 培训科目
	 */
	private int tc_id;
	
	private String tc_name;
	
	private Trains trains;

	public int getTc_id() {
		return tc_id;
	}

	public void setTc_id(int tc_id) {
		this.tc_id = tc_id;
	}

	public String getTc_name() {
		return tc_name;
	}

	public void setTc_name(String tc_name) {
		this.tc_name = tc_name;
	}

	public Trains getTrains() {
		return trains;
	}

	public void setTrains(Trains trains) {
		this.trains = trains;
	}

	@Override
	public String toString() {
		return "TrainCourse [tc_id=" + tc_id + ", tc_name=" + tc_name + ", trains=" + trains + "]";
	}
	
}
