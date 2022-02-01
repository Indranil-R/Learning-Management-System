package com.connection;

import java.util.ResourceBundle;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateConnect {

	public static SessionFactory getFactory() {
		ResourceBundle rb = ResourceBundle.getBundle("oracle");
		Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
//		cfg.configure("hibernate.cfg.xml");
		cfg.setProperty("hibernate.connection.url", rb.getString("db.url"));
		cfg.setProperty("hibernate.connection.username", rb.getString("db.username"));
		cfg.setProperty("hibernate.connection.password", rb.getString("db.password"));
		SessionFactory factory = cfg.buildSessionFactory();
		return factory;
	}

}
