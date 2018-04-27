package service;

import dao.UserDAO;
import dao.UserDAOImpl;
import entity.User;

public class UserServiceImpl implements UserService{
	UserDAO userDAO = new UserDAOImpl();
	public boolean checkPass(String username,String pwd){
		return userDAO.checkPass(username, pwd);
	}
	public void register(String username,String userpwd,String email,String question,String answer,String photo){
		userDAO.register(username, userpwd, email, question, answer, photo);
	}
	public void share(String username,String title,String content){
		userDAO.share(username,title, content);
	}
	public User selectUser(String username){
		return userDAO.selectUser(username);
	}
}
