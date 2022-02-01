package com.DAO;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.connection.HibernateConnect;
import com.entity.Quiz;

public class quizDAO {
	public void saveScore(Quiz quiz) {
		Session s = HibernateConnect.getFactory().openSession();
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(quiz);
		t.commit();
		s.close();
	}

	public int getScore(String username) {
		Session s = HibernateConnect.getFactory().openSession();
		Quiz quiz = (Quiz) s.get(Quiz.class, username);
		s.close();
		return quiz.getScore();
	}
}
