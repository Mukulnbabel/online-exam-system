package com.lti.springMvcCrud.service;

import java.util.List;

import com.lti.springMvcCrud.entity.User;

public interface UserService {

	public List<User> getAllUsers();
	public User getUserById(Long id);
	public boolean saveUser(User user);
	public boolean deleteUserById(Long id);

}