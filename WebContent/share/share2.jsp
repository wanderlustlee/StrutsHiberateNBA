<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>  
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分享篮球</title>
<link rel="stylesheet" type="text/css" href="../css/share.css">
<link rel="stylesheet" href="../css/bootstrap.css"> 
</head>
<script language="javascript">
function share(){
	document.getElementById('form1').submit();
}
</script>
<body>
<div>

<div>
	  <iframe src="../home/head.html" frameborder="0" width="1349px" height="250px" scrolling="no" class="background"> </iframe>
</div>  <br /> <br />

<div>
<form action="UserShare" method="post" name="form1" id="form1"> 
	<h3><div class="text-primary">分享篮球</div></h3><br>
	<table class="table table-bordered" border="1" style="width:500px; height:300px;" >
		<tr>
			<td><div class="text-primary">主题</div></td>
		</tr>
		<tr>
		<div class="form-group">
			<td><textarea  class="form-control" rows="3" name="title" cols="30" rows="3" placeholder="注意主题规范" ></textarea></td>
		
		</tr>
		<tr>
			<td><div class="text-primary">内容</div></td>
		</tr>
		<tr>
			<td><textarea class="form-control" name="content" cols="50" rows="10" placeholder="注意内容规范" ></textarea></td>
		</tr>
		</div>
	</table><br/>
	
	<dt><div class="container"> <button class="btn btn-primary" name="share" id="share" onclick="share()">分享</button>
	</div></dt>
	<br /><br /><br /><br />



</form>
    <iframe src="../home/foot.html" frameborder="0" width="1349px" height="300px" scrolling="no"> </iframe>
</div>
</div>
</body>
<html>
