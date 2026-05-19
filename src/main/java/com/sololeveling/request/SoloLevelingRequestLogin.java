package com.sololeveling.request;

public class SoloLevelingRequestLogin 
{
	private String HunterName;
	private String Password;
	
	public SoloLevelingRequestLogin()
	{
		
	}
	
	public SoloLevelingRequestLogin(String hunterName, String password) {
		super();
		HunterName = hunterName;
		Password = password;
	}
	
	public String getHunterName() {
		return HunterName;
	}
	
	public void setHunterName(String hunterName) {
		HunterName = hunterName;
	}
	
	public String getPassword() {
		return Password;
	}
	
	public void setPassword(String password) {
		Password = password;
	}

	@Override
	public String toString() {
		return "SoloLevelingRequestLogin [HunterName=" + HunterName + ", Password=" + Password + "]";
	}
	

}
