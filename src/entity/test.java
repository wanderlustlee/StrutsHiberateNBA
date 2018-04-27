package entity;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class test {
	Configuration cfg = null;
	SessionFactory sf = null;
	Session session = null;
	public test() {
		cfg = new Configuration().configure();
		sf = cfg.buildSessionFactory();
		session = sf.openSession();
	}

	public boolean checkUsername(String username) {
		boolean flag = true;
		session.beginTransaction();
		//User user = session.get(User.class, 1);
		List<String> list = session.createQuery("select username from User").list();
		for (String name : list) {
			if (username.equals(name)) {
				flag = false;
			}
		}
		System.out.println(flag);
		session.getTransaction().commit();
		return flag;
	}
	
}
