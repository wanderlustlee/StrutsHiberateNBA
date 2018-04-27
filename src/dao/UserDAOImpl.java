package dao;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import entity.Diary;
import entity.User;

public class UserDAOImpl implements UserDAO{
	Configuration cfg = null;
	SessionFactory sf = null;
	Session session = null;
	Transaction transaction = null;
	public UserDAOImpl() {
		cfg = new Configuration().configure();
		sf = cfg.buildSessionFactory();
		session = sf.openSession();
		transaction = session.beginTransaction();
	}
	//检查注册时用户名是否可用
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
	//登录时密码验证
	@SuppressWarnings({ "deprecation", "unchecked" })
	public boolean checkPass(String username,String pwd){
		boolean flag = false;
		//System.out.println(username+"   "+pwd);
		Query<String> query = session.createQuery("select pwd from User where username=?");
		query.setParameter(0, username);
		List<String> list = query.list();
		if (list.get(0) != null) {
			
			for (String pass : list) {
				if (pwd.equals(pass)) {
					flag = true;
				}
			}
		}
		transaction.commit();
		return flag;
	}
	//注册
	public void register(String username,String userpwd,String email,String question,String answer,String photo){
		User user = new User();
		user.setUsername(username);
		user.setPwd(userpwd);
		user.setEmail(email);
		user.setQuestion(question);
		user.setAnswer(answer);
		user.setImage(photo);
		session.save(user);
		transaction.commit();
		
	}
	//分享
	public void share(String username,String title,String content){
		String time=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
		System.out.println(time);
		Diary diary = new Diary();
		diary.setTitle(title);
		diary.setContent(content);
		diary.setWriteTime(time);
		//User user = new User();
		diary.setUsername(username);
		//diary.setUser(user);
		session.save(diary);
		transaction.commit();
		
	}
	@SuppressWarnings({ "deprecation", "unchecked" })
	public User selectUser(String username){
		User user = null;
		System.out.println(username);
		Query<User> query = session.createQuery("from User where username=?");
		query.setParameter(0, username);
		List<User> list = query.list();
		if (list.get(0) != null) {
			user = list.get(0);
		}
		transaction.commit();
		return user;
	}
}
