package action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import service.UserService;
import service.UserServiceImpl;

import com.opensymphony.xwork2.ActionSupport;


public class ShareAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title;
	private String content;
	UserService userService  = new UserServiceImpl(); 
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String share(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		String username = (String)session.getAttribute("username");
		userService.share(username,title, content);
		//System.out.println(title+content);
		return SUCCESS;
	}
}
