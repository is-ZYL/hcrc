package com.entity;

public class TrainEnterpriseOrder {
	/**
	 * 企业与培训学苑订单	
	 */
	private int teo_id;
	
	private int teo_personnelNum;
	
	private String teo_state;
	
	private String teo_freshTime;
	
	private TrainStudents train_students;
	
	private Position position;
	
	private Trains trains;

	public int getTeo_id() {
		return teo_id;
	}

	public void setTeo_id(int teo_id) {
		this.teo_id = teo_id;
	}

	public int getTeo_personnelNum() {
		return teo_personnelNum;
	}

	public void setTeo_personnelNum(int teo_personnelNum) {
		this.teo_personnelNum = teo_personnelNum;
	}

	public String getTeo_state() {
		return teo_state;
	}

	public void setTeo_state(String teo_state) {
		this.teo_state = teo_state;
	}

	public String getTeo_freshTime() {
		return teo_freshTime;
	}

	public void setTeo_freshTime(String teo_freshTime) {
		this.teo_freshTime = teo_freshTime;
	}

	public TrainStudents getTrain_students() {
		return train_students;
	}

	public void setTrain_students(TrainStudents train_students) {
		this.train_students = train_students;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	public Trains getTrains() {
		return trains;
	}

	public void setTrains(Trains trains) {
		this.trains = trains;
	}

	@Override
	public String toString() {
		return "TrainEnterpriseOrder [teo_id=" + teo_id + ", teo_personnelNum=" + teo_personnelNum + ", teo_state="
				+ teo_state + ", teo_freshTime=" + teo_freshTime + ", train_students=" + train_students + ", position="
				+ position + ", trains=" + trains + "]";
	}
	
	
}
