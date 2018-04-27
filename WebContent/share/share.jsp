<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<title>分享篮球</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="../css/templatemo_style.css" rel="stylesheet" type="text/css">
</head>
<script language="javascript">
function share(){
	alert("!!!");
	document.getElementById('form1').submit();
}
</script>
<body class="templatemo-bg-image-2">
<div>
<iframe src="../home/head.jsp" frameborder="0" width="100%" height="260px"  > </iframe>
</div> <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-contact-form-1" action="UserShare" method="post" name="form1" id="form1">
				<div class="form-group">
					<div class="col-md-12">
						<h1 class="margin-bottom-15">分享你的篮球故事</h1>
						<p>发表你的故事到社区，与众多篮球爱好者共同分享篮球的乐趣</p>
					</div>
				</div>				
		        <div class="form-group">
		          <div class="col-md-12">
		            <label for="message" class="control-label">标题 </label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-pencil-square-o"></i>
		            	<textarea rows="2" cols="50" class="form-control" name="title" placeholder="注意主题规范"></textarea>
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <label for="message" class="control-label">内容 </label>
		            <div class="templatemo-input-icon-container">
		            	<i class="fa fa-pencil-square-o"></i>
		            	<textarea rows="8" cols="50" class="form-control" name="content" placeholder="注意内容规范"></textarea>
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <div class="checkbox">
		                <label>
		                  <input type="checkbox"> Send a copy to my email.
		                </label>
		            </div>		            
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <input type="submit" name="share" id="share" onclick="javascript:alert('分享成功！')" value="分享" class="btn btn-info pull-right">
		          </div>
		        </div>		    	
		      </form>		      
		</div>
	</div><br /><br /><br /><br /><br /><br /><br />

<div>
    <iframe src="../home/foot.jsp" frameborder="0" width="100%" height="500px" scrolling="no"> </iframe>
</div>	
</body>
</html>