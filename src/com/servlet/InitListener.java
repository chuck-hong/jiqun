package com.servlet;

import java.util.Date;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.model.UserModel;

public class InitListener implements ServletContextListener, HttpSessionListener {
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("contextDestroyed");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("contextInitialized");
	}

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {

		System.out.println("sessionCreated.1");
		
		HttpSession session = arg0.getSession();
		
		UserModel user = (UserModel)session.getAttribute("user");
		if (user == null) {
			user = new UserModel();
			user.setUserid(session.getId());
			user.setUsername("0.194");
			user.setLogtime(new Date());
			session.setAttribute("user", user);
		} else {
			System.out.println("userid=" + user.getUserid());
			System.out.println("username=" + user.getUsername());
		}
		
		System.out.println("sessionCreated.2");
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		System.out.println("sessionDestroyed");
	}

}
