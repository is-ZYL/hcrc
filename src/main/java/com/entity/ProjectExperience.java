package com.entity;

public class ProjectExperience {
	/**
	 * 项目经验
	 */
	private int pe_id;
	
	private String pe_start;
	
	private String pe_end;
	
	private String pe_name;
	
	private String pe_position;
	
	private String pe_describe;
	
	private Resume resume;

	public int getPe_id() {
		return pe_id;
	}

	public void setPe_id(int pe_id) {
		this.pe_id = pe_id;
	}

	public String getPe_start() {
		return pe_start;
	}

	public void setPe_start(String pe_start) {
		this.pe_start = pe_start;
	}

	public String getPe_end() {
		return pe_end;
	}

	public void setPe_end(String pe_end) {
		this.pe_end = pe_end;
	}


	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}

	public String getPe_name() {
		return pe_name;
	}

	public void setPe_name(String pe_name) {
		this.pe_name = pe_name;
	}

	public String getPe_position() {
		return pe_position;
	}

	public void setPe_position(String pe_position) {
		this.pe_position = pe_position;
	}

	public String getPe_describe() {
		return pe_describe;
	}

	public void setPe_describe(String pe_describe) {
		this.pe_describe = pe_describe;
	}

	@Override
	public String toString() {
		return "ProjectExperience [pe_id=" + pe_id + ", pe_start=" + pe_start + ", pe_end=" + pe_end + ", pe_name="
				+ pe_name + ", pe_position=" + pe_position + ", pe_describe=" + pe_describe + ", resume=" + resume
				+ "]";
	}



	
}
