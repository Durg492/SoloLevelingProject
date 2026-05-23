package com.sololeveling.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sololeveling.request.SoloLevelingRequestLogin;
import com.sololeveling.request.SoloLevelingRequestSign;
import com.sololeveling.request.SoloLevelingRequestUpdate;
import com.sololeveling.response.SololevelingResponse;
import com.sololeveling.service.ImpService;

@Controller
public class SoloController 
{ 
	@Autowired
	private ImpService impService;
	SololevelingResponse s;
	@PostMapping("SignLogin")
	public String singUp(@ModelAttribute SoloLevelingRequestSign soloLevelingRequestSign ,Model model )
	{
		System.out.println(soloLevelingRequestSign);
		boolean value=impService.createAccount(soloLevelingRequestSign);
		System.out.println(soloLevelingRequestSign);
		if(value)
		{
			return "Login";
			
		}
		else
		{
			model.addAttribute("error","password is not matched");
			return "SignUp";
		}
		
		
	}
	
	@PostMapping("HomeLogin")
     public String login(@ModelAttribute SoloLevelingRequestLogin soloLevelingRequestLogin ,Model model)
     {
		SololevelingResponse value=impService.login(soloLevelingRequestLogin);
		s=value;
		System.out.println("Home Login -----"+value.getUserName());
		if(value!=null)
		{
		model.addAttribute("r",value);
		return "Home";
		}
		else
		{
			
			return "Login";
		}
     }
	
	@RequestMapping("Signup")
	public String enter()
	{
		System.out.println("enter to the signup ");
		return "SignUp";
	}

	@RequestMapping("login")
	public String login()
	{
		System.out.println("enter to the login ");
		return "Login";
	}
  @RequestMapping("setting")
  public String setting()
  {
	  System.out.println("enter to the  setting");
	  return "Setting";
  }
  @RequestMapping("mission")
  public String mission()
  {
	  System.out.println("enter to the  mission");
	  return "Mission";
  }
  @RequestMapping("skill")
  public String skill()
  {
	  System.out.println("enter to the  skill");
	  return "Skill";
  }
  @RequestMapping("inventory")
  public String inventory()
  {
	  System.out.println("enter to the  inventary");
	  return "Inventory";
  }
  @RequestMapping("stats")
  public String stats()
  {
	  System.out.println("enter to the stats");
	  return "Stats";
  }
  @RequestMapping("completquest")
  public String completquest()
  {
	  System.out.println("enter to the CompletQota");

	  return "CompletQota";
  }
  @RequestMapping("levelup")
  public String levelup()
  {
	  System.out.println("enter to the levelup");
	  int a= impService.updatelevel();
	  return "DailyQota";
  }
  @RequestMapping("dailyqota")
  public String dailyqota()
  {
	  System.out.println("enter to the dailyqota");

	  return "DailyQota";
  }
  @RequestMapping("HomeLogin")
  public String Dasbord(Model model)
  {
	 System.out.println( s.getUserName());
	  s.getId();
	  model.addAttribute("r",s);
	  
	  System.out.println("enter to the Dasbord");
	  return "Home";
  }
  @RequestMapping("update")
  public String updateNEPh(@ModelAttribute SoloLevelingRequestUpdate soloLevelingRequestUpdate,Model model)
  {
	  boolean a=impService.updateName(soloLevelingRequestUpdate);
	  return "Home";
	  
  }
  
}
