package com.sololeveling.service;

import com.sololeveling.request.SoloLevelingRequestLogin;
import com.sololeveling.request.SoloLevelingRequestSign;
import com.sololeveling.response.SololevelingResponse;

public interface ImpService 
{
 public boolean createAccount(SoloLevelingRequestSign soloLevelingRequestSign);
 public SololevelingResponse login(SoloLevelingRequestLogin soloLevelingRequestLogin);
public int updatelevel();
}
