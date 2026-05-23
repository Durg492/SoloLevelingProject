package com.sololeveling.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sololeveling.entity.SololevelingEntity;
import com.sololeveling.repository.ImpSoloLevelingRepository;
import com.sololeveling.request.SoloLevelingRequestLogin;
import com.sololeveling.request.SoloLevelingRequestSign;
import com.sololeveling.request.SoloLevelingRequestUpdate;
import com.sololeveling.response.SololevelingResponse;
@Service
public class SoloLevelingService implements ImpService
{
	private int levelUpl;
	@Autowired
	ImpSoloLevelingRepository impSoloLevelingRepository;
	SololevelingResponse sololevelingResponse =new SololevelingResponse ();
	@Override
	public boolean createAccount(SoloLevelingRequestSign soloLevelingRequestSign) 
	{
		SololevelingEntity sololevelingEntity =new SololevelingEntity();
		sololevelingEntity.setHunterName(soloLevelingRequestSign.getHunterName());
		sololevelingEntity.setEmail(soloLevelingRequestSign.getEmail());
		sololevelingEntity.setPhoneNumber(soloLevelingRequestSign.getPhoneNumber());
		sololevelingEntity.setPassword(soloLevelingRequestSign.getPassword());
	    String password1=	sololevelingEntity.getPassword();
	    String password2=	soloLevelingRequestSign.getConfirmPassword();
		if(password1.equals(password2))
		{
		SololevelingEntity sololevelingEntity2=impSoloLevelingRepository.save(sololevelingEntity);
		
		
		SololevelingResponse sololevelingResponse=new SololevelingResponse();
		sololevelingResponse.setUserName(sololevelingEntity.getHunterName());
		
		sololevelingResponse.setId(sololevelingEntity2.getUserId());
		return true;
		}
		else
		{
			return false;
		}
		
	}
	@Override
	public SololevelingResponse login(SoloLevelingRequestLogin soloLevelingRequestLogin) 
	{
		
		String userName=soloLevelingRequestLogin.getHunterName();
		String passwordlogin=soloLevelingRequestLogin.getPassword();
		SololevelingEntity sololevelingEntity=impSoloLevelingRepository.findByHunterNameAndPassword(userName, passwordlogin);
		if(sololevelingEntity==null)
			return null;
		
		
		sololevelingResponse.setUserName(sololevelingEntity.getHunterName()); 
		sololevelingResponse.setLevel(sololevelingEntity.getLevel());
		levelUpl=sololevelingEntity.getUserId();
		return sololevelingResponse;
	}
	@Override
	public int updatelevel() 
	{
		Optional<SololevelingEntity>   databaseId=impSoloLevelingRepository.findById(levelUpl);
        int level=0;
		SololevelingEntity sololevelingEntity=	databaseId.get();
		level=sololevelingEntity.getLevel();
		sololevelingResponse.setLevel(level);
		sololevelingResponse.setUserName(sololevelingEntity.getHunterName());
		sololevelingEntity.setLevel(++level);
		SololevelingEntity save=impSoloLevelingRepository.save(sololevelingEntity);
		
		return level;
	}
	@Override
	public boolean updateName(SoloLevelingRequestUpdate s) 
	{
		
		String name=s.getUpdateName();
		String email=s.getUpdateEmail();
		String phoneNumber=s.getUpdaePhonnumber();
		if (name!=null)
		{
			impSoloLevelingRepository.updateHunterName(levelUpl, name);
			return true;
		}
		if(email!=null)
		{
			impSoloLevelingRepository.updateEmail(levelUpl, email);
			return true;
		}
		if(phoneNumber!=null)
		{
			impSoloLevelingRepository.updatePhoneNumber(levelUpl, phoneNumber);
			return true;
		}
		
		return true;
	}
	

}
