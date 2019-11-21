package com.lti.springMvcCrud.Dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.lti.springMvcCrud.entity.User;

@Repository
public interface UserRepository extends 
CrudRepository<User, Long>{
	
}