package com.entity;

public class tourinformation {
	private Integer id;
	private String name;
	private String taddress;
	private String tdescription;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTaddress() {
		return taddress;
	}
	public void setTaddress(String taddress) {
		this.taddress = taddress;
	}
	public String getTdescription() {
		return tdescription;
	}
	public void setTdescription(String tdescription) {
		this.tdescription = tdescription;
	}
	@Override
	public String toString() {
		return "tourinformation [id=" + id + ", name=" + name + ", taddress=" + taddress + ", tdescription="
				+ tdescription + "]";
	}
	

}
