package com.sololeveling.request;

public class SoloLevelingRequestUpdate 
{
	private String updateName;
	private String updateEmail;
	private String updaePhonnumber;
	
	public SoloLevelingRequestUpdate()
	{
		
	}
	public SoloLevelingRequestUpdate(String updateName, String updateEmail, String updaePhonnumber) {
		super();
		this.updateName = updateName;
		this.updateEmail = updateEmail;
		this.updaePhonnumber = updaePhonnumber;
	}
	public String getUpdateName() {
		return updateName;
	}
	public void setUpdateName(String updateName) {
		this.updateName = updateName;
	}
	public String getUpdateEmail() {
		return updateEmail;
	}
	public void setUpdateEmail(String updateEmail) {
		this.updateEmail = updateEmail;
	}
	public String getUpdaePhonnumber() {
		return updaePhonnumber;
	}
	public void setUpdaePhonnumber(String updaePhonnumber) {
		this.updaePhonnumber = updaePhonnumber;
	}
	
	

}
