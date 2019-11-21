package com.lti.springMvcCrud.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.springMvcCrud.Dao.UserDao;
import com.lti.springMvcCrud.Dao.UserRepository;
import com.lti.springMvcCrud.entity.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {
		// Implementing Constructor based DI
		private UserDao repository;
		
		public UserServiceImpl() {
			
		}
		
		@Autowired
		public UserServiceImpl(UserDao repository) {
			super();
			this.repository = repository;
		}
		
	@Override
	public List<User> getAllUsers() {
		List<User> list = new ArrayList<User>();
		repository.getAllUsers().forEach(e -> list.add(e));
		return list;
	}

	@Override
	public User getUserById(Long id) {
		User user = repository.getUserById(id);
		return user;
	}

	@Override
	public boolean saveUser(User user) {
		try {
			repository.saveUser(user);
			return true;
		}catch(Exception ex) {
			return false;
		}
	}

	@Override
	public boolean deleteUserById(Long id) {
		try {
			repository.deleteUserById(id);
			return true;
		}catch(Exception ex) {
			return false;
		}
		
	}

}
