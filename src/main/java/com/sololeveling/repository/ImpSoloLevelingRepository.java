package com.sololeveling.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.sololeveling.entity.SololevelingEntity;

import jakarta.transaction.Transactional;

public interface ImpSoloLevelingRepository extends CrudRepository<SololevelingEntity, Integer>
{
	
	
	SololevelingEntity findByHunterNameAndPassword(String hunterName,String password);
	// select * from slv where huntername=: and password=:
	@Modifying
	@Transactional
	@Query("update SololevelingEntity s set s.hunterName=:newName where s.id=:id")
	int updateHunterName(@Param("id") int id,
	                     @Param("newName") String newName);
	
	@Modifying
	@Transactional
	@Query("update SololevelingEntity s set s.email=:email where s.id=:id")
	int updateEmail(@Param("id") int id,
	                @Param("email") String email);
	
	@Modifying
	@Transactional
	@Query("update SololevelingEntity s set s.phoneNumber=:phoneNumber where s.id=:id")
	int updatePhoneNumber(@Param("id") int id,
	                      @Param("phoneNumber") String phoneNumber);
	
}
