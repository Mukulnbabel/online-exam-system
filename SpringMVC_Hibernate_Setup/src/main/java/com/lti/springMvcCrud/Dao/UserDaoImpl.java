package com.lti.springMvcCrud.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lti.springMvcCrud.entity.User;
@Repository("UserDao")
public class UserDaoImpl extends AbstractDao<Long, User> implements UserDao {

	@Override
	public List<User> getAllUsers() {
			@SuppressWarnings("unchecked")
			List<User> il=getEntityManager().createQuery("SELECT u FROM User u ").getResultList();
		return il;
	}

	@Override
	public User getUserById(Long id) {
		User ins=(User) getEntityManager()
                .createQuery("SELECT u FROM User u WHERE u.ques_id LIKE :Id")
                .setParameter("Id",id)
                .getSingleResult();
		return ins;
	}

	@Override
	public boolean saveUser(User user) {
		persist(user);
		return true;
	}

	@Override
	public boolean deleteUserById(Long id) {
		// TODO Auto-generated method stub
		User ins=(User) getEntityManager()
                .createQuery("SELECT u FROM User u WHERE u.ques_id LIKE :Id")
                .setParameter("Id",id)
                .getSingleResult();
		delete(ins);
		return true;
	}

}
