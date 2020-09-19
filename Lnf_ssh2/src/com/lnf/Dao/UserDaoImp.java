package com.lnf.Dao;

import java.util.List;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.lnf.Entity.User;

public class UserDaoImp extends HibernateDaoSupport implements UserDao {


	@Override
	public void save(User user) {
		this.getHibernateTemplate().save(user);

	}

	@Override
	public void update(User user) {
		this.getHibernateTemplate().update(user);

	}

	@Override
	public void delete(User user) {
		this.getHibernateTemplate().delete(user);

	}

	@Override
	public User findById(String username) {
		
		return this.getHibernateTemplate().get(User.class, username);
	}

	@Override
	public List<User> findAll() {
		return (List<User>) this.getHibernateTemplate().find("from User");
	}

	@Override
	public User login(String username, String password) {

		///String hql = "from User where username='" + username + "' and password='"+ password + "'";
        String str[]= {username,password};
		List list=getHibernateTemplate().find("from User where username=?0 and password=?1",str);
		System.out.println("----->"+list);
		if(list.toString() != "[]") {
			return (User) list.get(0); 
		}
		return null;
		
	}




}
