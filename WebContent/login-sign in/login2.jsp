<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>全景NBA</title>
<link rel="stylesheet" href="../css/login-signin.css" type="text/css"/>
<link rel="stylesheet" href="../css/bootstrap.css"> 
<script type="text/javascript" src="../js/login.js"> </script>
</head>

<body>
<div>
    <iframe src="../home/header.html" frameborder="0" width="1349px" height="250px" scrolling="no" class="background"> </iframe>
</div> <br /><br /><br /><br /><br /><br /><br /><br />

<div id="text" class="div_h">
    <p>登  录</p>
</div>
<div >
<%	
	
	if(request.getAttribute("status") != null){
		%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		用户名或密码错误,请重新输入<% 
	}
%>
<form action="" method="post" name="form1" id="form1"> 
    <div align="center">
         <table border="0" align="center">
           <tr height="50px">
             <td> 用户名：</td>
             <td><input type="text" name="userName" id="email" class="form_set"  onfocus="emailFocus()" onblur="emailBlur()" placeholder="请输入用户名" /></td>
             <td> <div id="email_prompt" style="width:260px;color:red;"> </div></td>
          </tr >
          <tr height="50px">
            <td> 密 码：</td>
            <td><input type="password" name="userPwd" id="email" class="form_set" onfocus="pwdFocus()" onblur="pwdBlur()" /></td>
	    <td> <div id="password_prompt" style="width:260px;color:red;"> </div></td>
         </tr>
         <tr height="50px">
            <td>  验证码：</td>
            <td><input type="text" name="text"id="text" class="form_set"/></td>
            <td><div> <img src="images/img1.png" title="验证码：" width="70px" height="25px"/> </div> </td>
         </tr>
          <tr height="80px">
            <td> <input type="checkbox" name="checkbox" id="checkbox"/>记住密码</td>
            <td align="center" colspan="2"> <a href="#" target="_self"/>无法登录？</td>
         </tr>
        
         <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="image" src="images/login2.png"  width="200" height="45" onclick="javascript:checkForm(form1.userName,form1.userPwd,form1.text)"/></td>
         <!-- <td colspan="2"  ><a href=""  onclick="javascript:alert('!!!');"> <img src="images/login2.png" width="200" height="45" /></a></td>
          -->
         </tr>
         </table>
    </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    
</form>
</div>
<div>
    <iframe src="../home/foot.html" frameborder="0" width="1349px" height="300px" scrolling="no"> </iframe>
</div>
</body>
</html>
