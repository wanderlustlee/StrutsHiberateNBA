package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.UserService;
import service.UserServiceImpl;

import com.opensymphony.xwork2.ActionSupport;

import entity.User;


public class LoginAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userName;  
    private String userPwd;  
    UserService userService = new UserServiceImpl();
    public String getUserName() {  
        return userName;  
    }  
  
    public void setUserName(String userName) {  
        this.userName = userName;  
    }  
  
    public String getUserPwd() {  
        return userPwd;  
    }  
  
    public void setUserPwd(String userPwd) {  
        this.userPwd = userPwd;  	
    }
    
	
//	@Override
//	public String execute() throws Exception {
//		return super.execute();  
//	}
	public String userLogin() throws Exception{
		boolean flag = userService.checkPass(userName,userPwd);
		HttpServletRequest request = ServletActionContext.getRequest();
		if (flag) {
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("username", userName);
			return SUCCESS;
		}else {
			request.setAttribute("status", "用户名或密码错误！");
			return ERROR;
		}
	}
	public String userRegister(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = request.getParameter("nickName");
		String userpwd = request.getParameter("password");
		String email = request.getParameter("email");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		String photo = request.getParameter("photo");
		userService.register(username, userpwd, email, question, answer, photo);
		return SUCCESS;
	}
	public void userSetting(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = null;
		System.out.println(request.getParameter("username"));
		if(request.getParameter("username")!=null){
			username = request.getParameter("username");
		}
		User user = userService.selectUser(username);
		HttpSession session2 = ServletActionContext.getRequest().getSession();
		session2.setAttribute("user", user);
		System.out.println(user.getPwd());
		System.out.println(user.getAnswer());
		
	}
}
