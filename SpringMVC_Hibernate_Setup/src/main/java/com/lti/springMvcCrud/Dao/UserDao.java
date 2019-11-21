package com.lti.springMvcCrud.Dao;

import java.util.List;

import com.lti.springMvcCrud.entity.User;

public interface UserDao {

	public List<User> getAllUsers();
	public User getUserById(Long id);
	public boolean saveUser(User user);
	public boolean deleteUserById(Long id);
	

}
