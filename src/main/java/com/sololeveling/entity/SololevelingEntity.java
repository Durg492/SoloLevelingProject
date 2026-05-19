package com.sololeveling.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name="sololevelinggame")
public class SololevelingEntity 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userId;
	private String hunterName;
	private String email;
	private String phoneNumber;
	private String password;
	private Integer level=1;
	
	
	public SololevelingEntity()
	{
		
	}

	public SololevelingEntity(Integer userId, String hunterName, String email, String phoneNumber, String password) {
		super();
		this.userId = userId;
		this.hunterName = hunterName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
	}
	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getHunterName() {
		return hunterName;
	}
	public void setHunterName(String hunterName) {
		this.hunterName = hunterName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "SololevelingEntity [userId=" + userId + ", hunterName=" + hunterName + ", email=" + email
				+ ", phoneNumber=" + phoneNumber + ", password=" + password+"level= "+level
				+ "]";
	}
	
	

}
