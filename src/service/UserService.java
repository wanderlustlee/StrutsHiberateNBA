package service;

import entity.User;

public interface UserService {
	public boolean checkPass(String username,String pwd);
	public void register(String username,String userpwd,String email,String question,String answer,String photo);
	public void share(String username,String title,String content);
	public User selectUser(String username);
}
