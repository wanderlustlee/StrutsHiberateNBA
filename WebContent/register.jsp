<%@page import="entity.test"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="AJAX.js"></script>
<script language="javascript">
	
	
	function checkPwd(userName,pwd,pwd2){
		if(pwd.value=="" || pwd2.value==""){
			alert("请输入密码");
			pwd.focus();
			return;
		}else{
			
			createRequest("checkUser2.jsp?user="+encodeURI(userName.value)+"&pwd="+encodeURI(pwd.value)+"&pwd2="+encodeURI(pwd2.value));
			//createRequest("checkUser.jsp?user="+encodeURI(encodeURI(userName.value)));//两次编码
			
		}
	}
	function checkUsername(username){
		if(username.value==""){
			alert("请输入密码");
			username.focus();
			return;
		}else{
			
			createRequest("checkUser2.jsp?username="+encodeURI(username.value));			
		}	
	}
	function checkEmail(email){
		if(email.value==""){
			alert("请输入邮箱！");
			email.focus();
			return;
		}else{
			createRequest("checkUser2.jsp?email="+encodeURI(email.value));
		}
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
</head>
<body>
<table>
<form name="form1" action="" method="post">
	 <tr>
		<td>
			用户名:
		</td>
	 <td> <!--用户名输入框-->
		<input type="text" name="username" >
	 </td>
	 <td>
	 	<input type="button" name="checkName" value="验证用户名是否可用" onclick="checkUsername(form1.username)">
	 </td>
	 <td id="toolTip1">
	 </td>
	</tr>
	  <tr>
	    <td>密码：</td>
	    <td><input type="text" name="pwd" id="pwd" /></td>
	  </tr>
	  <tr>
	    <td>确认密码：</td>
	    <td><input type="text" name="pwd2" id="pwd2" onChange="checkPwd(form1.username,form1.pwd,form1.pwd2);"/></td>
	    <td id="toolTip2">
	 </td>
	  </tr>
	  <tr>
	    <td>email：</td>
	    <td><input type="text" name="email" onChange="checkEmail(form1.email)"/></td>
	    <td id="toolTip3">
	 </td>
	  </tr>
	  <tr>
	    <td>所在地：</td>
	    <td><select name="province" id="province">
	      <option value="山东">山东</option>
	      <option value="北京">北京</option>
	      <option value="上海">上海</option>
	    </select></td>
	  </tr>
	  <tr>
	    <td>&nbsp;</td>
	    <td>以下两个选项用于重置密码</td>
	  </tr>
	  <tr>
	    <td>密码提示问题：
	      </td>
	    <td><input type="text" name="question" id="question" /></td>
	  </tr>
	  <tr>
	    <td>问题答案：</td>
	    <td><input type="text" name="answer" id="answer" /></td>
	  </tr>
	  <tr>
 		<td> <!--提交按钮-->
 			<input type="Submit" name="Submit" value="确定" onclick = "">
		</td>
 	</tr>
	</table>
</form>
</table>
</body>
</html>