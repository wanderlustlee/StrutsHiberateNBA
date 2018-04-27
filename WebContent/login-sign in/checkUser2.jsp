<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="entity.test"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setContentType("text/html;charset=UTF-8");//第一次解码
		String userName=request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		String email = request.getParameter("email");
		if(userName != null && pwd == null && email == null){
			String username = String.valueOf(userName);
			test t = new test();
			if(t.checkUsername(username)){
				%>用户名可用!<%
			}else{
				%>用户名不可用!<%
			}
			//out.println("123！ ");
		}
		if(pwd != null && pwd2 != null && email == null){
			if(!pwd.equals(pwd2)){
				out.println("两次密码不一致!");
			}else{
			out.println("两次密码一致!");
			}
		}
		if(email != null){
			if(email.matches("[a-z[A-Z[0-9]]]*@[a-z[A-Z[0-9]]]*.com")){
				out.println("邮箱合法!");
			}else{
				out.println("邮箱不合法!");
			}
		}
	 %>
	 
</body>
</html>