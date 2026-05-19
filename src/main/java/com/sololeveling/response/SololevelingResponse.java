package com.sololeveling.response;

public class SololevelingResponse 
{
	private String userName;
	private int level;
    private int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public SololevelingResponse()
	{
		
	}
	
	public SololevelingResponse(String userName, int level) {
		super();
		this.userName = userName;
		this.level = level;
	}

	public void setLevel(int level) {
		this.level = level;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getLevel() {
		return level;
	}

	public String getUserName() {
		return userName;
	}

	@Override
	public String toString() {
		return "SololevelingResponse [userName=" + userName + ", level=" + level + "]";
	}

	
	

}
