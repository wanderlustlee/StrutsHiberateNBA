<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<title>设置</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="../css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="../js/signin.js" ></script>
<script type="text/javascript" src="../js/AJAX.js"></script>
<script language="javascript">
	
	function checkUsername(username){
		if(username.value==""){
			alert("请输入用户名！");
			username.focus();
			return;
		}else{
			
			createRequest("../login-sign in/checkUser2.jsp?username="+encodeURI(username.value));			
		}	
	}
</script>
</head>
<body class="templatemo-bg-gray">
<div>
<iframe src="../home/head.jsp" frameborder="0" width="100%" height="260px"  > </iframe>
</div> <br /><br /><br /><br /><br />
<%
	User user = null;
	if(session.getAttribute("user") != null){
		user = (User)session.getAttribute("user");
	}
	String username = user.getUsername();
	String email = user.getEmail();
	String password = user.getPwd();
	String question = user.getQuestion();
	String answer = user.getAnswer();
%>
	<h1 class="margin-bottom-15">个人设置</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" action="#" method="post" name="form1" id="form1">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">用户名</label>
			            <input type="text" name="nickName" id="nickName" value="<%=username%>" class="form-control" onfocus="nickNameFocus()" onblur="nickNameBlur()" >			            		            		            
			          	<input type="button" name="checkName" value="验证用户名是否可用" onclick="checkUsername(form1.nickName)">
			          	<div id="nickName_prompt" style="width:260px;color:red;"> </div>
			          	<div id="toolTip1" style="width:260px;color:red;"></div>
			          </div>  
			          </div> 
			          <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">邮箱</label>
			            <input type="email" class="form-control" name="email" id="email" value="<%=email%>"  onblur="emailBlur()" >			            		            		            
			          	<div id="email_prompt" style="width:260px;color:red;"></div>
			          </div>             
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="password" class="control-label">密码</label>
			            <input type="email" class="form-control" name="password" id="password" value="<%=password%>" onblur="pwdBlur()" >		            		            		            
			          	<div id="password_prompt" style="width:260px;color:red;"></div>
			          </div>              
			        </div>			
			        
			        <div class="form-group">
			          <div class="col-md-12">
			            <label for="password" class="control-label">密保问题</label>
			            <input type="email" class="form-control" name="question" id="question" value="<%=question%>"  onblur="questionBlur()">
			          	<div id="question_prompt" style="width:260px;color:red;"></div>
			          </div>
			          </div>
			          <div class="form-group">
			          <div class="col-md-12">
			            <label for="password" class="control-label">密保答案</label>
			            <input type="email" class="form-control" name="answer" id="answer" value="<%=answer%>" onblur="answerBlur()" >
			          	<div id="answer_prompt" style="width:260px;color:red;"></div>
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="button" value="保存修改" class="btn btn-info" onclick="checkForm()">
			            
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Terms of Service</h4>
	      </div>
	      <div class="modal-body">
	      	<p>This form is provided by <a rel="nofollow" href="http://www.cssmoban.com/page/1">Free HTML5 Templates</a> that can be used for your websites. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
	        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
	        <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script><br /><br /><br /><br /><br /><br /><br />

<div>
    <iframe src="../home/foot.jsp" frameborder="0" width="100%" height="500px" scrolling="no"> </iframe>
</div>
</body>
</html>