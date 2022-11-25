package com.ty.passwordManagement.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ty.passwordManagement.dto.User;

@Repository
public class UserDao {

	@Autowired
	EntityManager entityManager;

	public User saveUser(User user) {

		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();

		return user;
	}

	public User updateUser(User user) {

		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.merge(user);
		entityTransaction.commit();

		return user;
	}

	public void deleteUserById(int id) {

		EntityTransaction entityTransaction = entityManager.getTransaction();
		User user = entityManager.find(User.class, id);
		entityTransaction.begin();
		entityManager.remove(user);
		entityTransaction.commit();

	}

	public List<User> getAll() {

		return entityManager.createQuery("select s from User s").getResultList();
	}

	public User getUserByMailId(String email) {

		return entityManager.createQuery("select s from User s where s.email=?1", User.class).setParameter(1, email)
				.getSingleResult();
	}
}
