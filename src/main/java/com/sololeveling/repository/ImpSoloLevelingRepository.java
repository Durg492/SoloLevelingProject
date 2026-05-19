package com.sololeveling.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.sololeveling.entity.SololevelingEntity;

public interface ImpSoloLevelingRepository extends CrudRepository<SololevelingEntity, Integer>
{
	
	
	SololevelingEntity findByHunterNameAndPassword(String hunterName,String password);
	// select * from slv where huntername=: and password=:
	
}
