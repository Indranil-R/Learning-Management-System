package com.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;

import com.connection.HibernateConnect;
import com.entity.Student;

public class StudentDAO {

	@SuppressWarnings("unchecked")

	public Student login(String username, String password) {
		try {
			Session s = HibernateConnect.getFactory().openSession();
			Student st = (Student) s.get(Student.class, username);
			if (st.getPassword().equals(password)) {
				return st;
			} else {
				return null;
			}

		} catch (Exception e) {
			return null;
		}
	}

	public List getAllStudent() {
		Session session = HibernateConnect.getFactory().openSession();
		Criteria criteria = session.createCriteria(Student.class);
		List<Student> list = criteria.list();
		session.close();
		return list;
	}

	public void addStudent(Student student) {
		Session session = HibernateConnect.getFactory().openSession();
		session.beginTransaction();
		session.save(student);
		session.getTransaction().commit();
		session.close();
	}

	public boolean updatePassword(String username, String password) {
		try {
			Session s = HibernateConnect.getFactory().openSession();
			String sql = "FROM Student WHERE username='" + username + "'";
			Query query = s.createQuery(sql);
			List<Student> result = query.list();

			if (result.isEmpty()) {
				return false;
			}
			s.beginTransaction();
			Student student = result.get(0);
			student.setPassword(password);
			s.update(student);
			s.getTransaction().commit();
			return true;
		} catch (Exception e) {
			return false;
		}

	}

	public Student getStudent(String username) {
		Session s = HibernateConnect.getFactory().openSession();
		Student student = (Student) s.get(Student.class, username);
		s.close();
		return student;
	}

	public void deleteStudent(String username) {

		Session session = HibernateConnect.getFactory().openSession();
		Transaction t = session.beginTransaction();
		Student s = new Student();
		s.setUsername(username);
		session.delete(s);
		t.commit();
		session.close();
	}

	public void updateDetail(Student student) {
		Session s = HibernateConnect.getFactory().openSession();
		Transaction t = s.beginTransaction();
		s.saveOrUpdate(student);
		t.commit();
		s.close();
	}

	public boolean validateOldPassword(String username, String password) {
		Session s = HibernateConnect.getFactory().openSession();
		Student stu = (Student) s.get(Student.class, username);
		s.close();
		if (stu.getPassword().equals(password)) {
			return true;
		} else {
			return false;
		}
	}
}
