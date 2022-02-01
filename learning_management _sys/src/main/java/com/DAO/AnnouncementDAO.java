package com.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.connection.HibernateConnect;
import com.entity.Announcement;

public class AnnouncementDAO {

	public void addAnnouncement(String message) {
		Announcement announcement = new Announcement(1, message);
		Session s = HibernateConnect.getFactory().openSession();
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(announcement);
		t.commit();
		s.close();
	}

	public Announcement announcement() {

		Session s = HibernateConnect.getFactory().openSession();
		Criteria c = s.createCriteria(Announcement.class);
		List<Announcement> list = c.list();
		if (list.isEmpty()) {
			return null;
		}
		Announcement announcement = list.get(0);
		String ann = announcement.getAnnouncement();
		s.close();

		return announcement;
	}
	
	public String announce() {

		Session s = HibernateConnect.getFactory().openSession();
		Criteria c = s.createCriteria(Announcement.class);
		List<Announcement> list = c.list();
		if (list.isEmpty()) {
			return null;
		}
		Announcement announcement = list.get(0);
		String ann = announcement.getAnnouncement();
		s.close();

		return ann;
	}


	public void delete() {
		Session s = HibernateConnect.getFactory().openSession();
		Transaction t = s.beginTransaction();
		Announcement announcement = new Announcement();
		Criteria c = s.createCriteria(Announcement.class);
		List<Announcement> an = c.list();
		for (Announcement ann : an) {
			s.delete(ann);

		}

		t.commit();
		s.close();
	}

}
