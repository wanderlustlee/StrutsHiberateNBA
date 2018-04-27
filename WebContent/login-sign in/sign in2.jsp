<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>维度-分享思维，改变世界</title>
<link rel="stylesheet" href="../css/login-signin.css" type="text/css"/>
<script type="text/javascript" src="../js/signin.js" ></script>
<script type="text/javascript" src="../js/AJAX.js"></script>
<script language="javascript">
	
	function checkUsername(username){
		if(username.value==""){
			alert("请输入用户名！");
			username.focus();
			return;
		}else{
			
			createRequest("checkUser2.jsp?username="+encodeURI(username.value));			
		}	
	}
</script>
</head>

<body>

<div>
    <iframe src="../home/header.html" frameborder="0" width="1349px" height="250px" scrolling="no" class="background"> </iframe>
</div> <br /><br /><br /><br /><br /><br /><br /><br />
<div id="text" class="div_h">
    <p>注  册</p>
</div>
<div>
    <form action="" method="post" name="form1" id="form1"> 
    <div align="center">
     <table border="0" align="center" >
    
       <tr height="50px">
         <td> 用户名：</td>
         <td><input type="text" name="nickName" id="nickName" class="form_set" onfocus="nickNameFocus()" onblur="nickNameBlur()" placeholder="请输入用户名！" />
         <input type="button" name="checkName" value="验证用户名是否可用" onclick="checkUsername(form1.nickName)"></td>
         
	 
         <td> <div id="nickName_prompt" style="width:260px;color:red;"> </div>
         <div id="toolTip1" style="width:260px;color:red;"></div></td>
	
       </tr >
       
        <tr height="50px">
         <td> 邮 箱：</td>
         <td><input type="text" name="email" id="email" class="form_set" onFocus="emailFocus()" onblur="emailBlur()" placeholder="@qq.com"/></td>
         <td><div id="email_prompt" style="width:260px;color:red;"></div></td>
       </tr>
       
       <tr height="50px">
         <td> 密 码：</td>
         <td><input type="password" name="password"id="password" class="form_set" onfocus="pwdFocus()" onblur="pwdBlur()" placeholder="不能少于6个字符"/></td>
         <td> <div id="password_prompt" style="width:260px;color:red;"> </div></td>
       </tr>
       
       <tr height="50px">
         <td> 确认密码： </td>
         <td><input type="password" name="repassword" id="repassword" class="form_set"  onfocus="repwdFocus()" onblur="repwdBlur()"/></td>
         <td> <div id="repassword_prompt" style="width:260px;color:red;"> </div></td>
       </tr>
       <tr height="50px">
         <td> 密保问题： </td>
         <td><input type="text" name="question" id="question" class="form_set" onfocus="questionFocus()" onblur="questionBlur()"/> </td> 
         <td><div id="question_prompt" style="width:260px;color:red;"> </div></td>
       </tr>
       
       <tr height="50px">
         <td> 密保答案： </td>
         <td><input type="text" name="answer" id="answer" class="form_set" onfocus="answerFocus()" onblur="answerBlur()"/> </td> 
         <td><div id="answer_prompt" style="width:260px;color:red;"> </div></td>
       </tr>
       
       <tr >
         <td> 上传头像： </td>
         <td >
             <div style="width:20px; height:10px;color:red;"></div><input type="file" name="photo" id="photo"/> <br /><br />
         </td>
       </tr>
       
       <tr id="text" height="100px;"> 
          <td colspan="2" onclick="checkForm()"> <img src="images/signin1.png" width="200" height="50" /></td>
          <td><a href="login.html" target="_self" >已有账号？</a> </td>
       </tr>
   
     </table>
    </div>
    
</form>
</div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

<div>
    <iframe src="../home/foot.html" frameborder="0" width="1349px" height="300px" scrolling="no"> </iframe>
</div>

</body>
</html>