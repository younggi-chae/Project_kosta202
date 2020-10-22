package model;

import java.io.Serializable;

public class Member implements Serializable {
	private String id;
	private String password;
	private String name;
	private String phoneNo;
	private String email;
	private String sex;
	private String address;
	private String picture;
	private String introduction;
	private double avgScore;
	private String isMember;
	private String isAlarm;
	private String alarmStartTime;
	private String alarmEndTime;
	
	public Member() {}
	
	public Member(String id, String password, String name, String phoneNo, String email, String sex, String address,
			String picture, String introduction, double avgScore, String isMember, String isAlarm,
			String alarmStartTime, String alarmEndTime) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.phoneNo = phoneNo;
		this.email = email;
		this.sex = sex;
		this.address = address;
		this.picture = picture;
		this.introduction = introduction;
		this.avgScore = avgScore;
		this.isMember = isMember;
		this.isAlarm = isAlarm;
		this.alarmStartTime = alarmStartTime;
		this.alarmEndTime = alarmEndTime;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public double getAvgScore() {
		return avgScore;
	}

	public void setAvgScore(double avgScore) {
		this.avgScore = avgScore;
	}

	public String getIsMember() {
		return isMember;
	}

	public void setIsMember(String isMember) {
		this.isMember = isMember;
	}

	public String getIsAlarm() {
		return isAlarm;
	}

	public void setIsAlarm(String isAlarm) {
		this.isAlarm = isAlarm;
	}

	public String getAlarmStartTime() {
		return alarmStartTime;
	}

	public void setAlarmStartTime(String alarmStartTime) {
		this.alarmStartTime = alarmStartTime;
	}

	public String getAlarmEndTime() {
		return alarmEndTime;
	}

	public void setAlarmEndTime(String alarmEndTime) {
		this.alarmEndTime = alarmEndTime;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", name=" + name + ", phoneNo=" + phoneNo + ", email="
				+ email + ", sex=" + sex + ", address=" + address + ", picture=" + picture + ", introduction="
				+ introduction + ", avgScore=" + avgScore + ", isMember=" + isMember + ", isAlarm=" + isAlarm
				+ ", alarmStartTime=" + alarmStartTime + ", alarmEndTime=" + alarmEndTime + "]";
	}

}
