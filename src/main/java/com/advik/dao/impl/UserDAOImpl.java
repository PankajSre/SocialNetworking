package com.advik.dao.impl;

import java.util.List;

import javax.persistence.PersistenceContext;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.advik.dao.UserDAO;
import com.advik.model.User;
@Repository
@PersistenceContext
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addUser(User user) {
		
		sessionFactory.getCurrentSession().save(user);
	}

	
	public void editUser(User user) {
	sessionFactory.getCurrentSession().update(user);
		
	}

	
	public void deleteUser(int userId) {
	
		Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		User u=(User)session.get(User.class,new Integer(userId));
		session.delete(u);
		t.commit();
		session.flush();
		session.close();
		
	}


	public User getUser(int userId) {
	 
		return (User)sessionFactory.getCurrentSession().get(User.class, userId);
		
	}


	public List<User> getAllUsers() {
		
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}


	public User getUser(String username) {
		
		return (User)sessionFactory.getCurrentSession().get(User.class, username);
		
		/*Session session=sessionFactory.openSession();
		Transaction t=session.beginTransaction();
		User u=(User)session.get(User.class, username);
		u=getUser(username);
		t.commit();
		session.flush();
		session.close();
		return u;*/
		
		/* Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
	        criteria.add(Restrictions.like("username", username));
	        return (User) criteria.uniqueResult();*/
	}

}
