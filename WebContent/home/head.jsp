<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Ice Hockey Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar()
{
	window.scrollTo(0,1); 
} 
function setting(username){
	//alert(username);
	document.getElementById('form1').action="UserSetting?username="+username;
	document.getElementById('form1').submit();
}
</script>
<!-- //for-mobile-apps -->
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="../js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='https://fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Cherry+Cream+Soda' rel='stylesheet' type='text/css'>
</head>
	
<body>
<!-- header -->
<form action="" name="form1" id="form1" method="post">
	<div class="header_top">
		<div class="container">
			<div class="header_top_left">
				<ul>
					<li>&copy; 全景NBA</li>
				</ul>
			</div>
			<div class="header_top_right">
				<p>欢迎您, <%
					String username = null;
					if(session.getAttribute("username")!=null){
						username = (String)session.getAttribute("username");
						%>${username}<%
					}
				%></p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="logo_social_icons">
		<div class="container">
			<div class="logo">
				<h1><a href="index.html"><img src="images/logo.jpg" alt=" " class="img-responsive" /></a></h1>
			</div>
			<div class="social_icons">
				<div class="component">
					<a href="#" class="icon icon-cube facebook"></a>
					<a href="#" class="icon icon-cube rss"></a>
					<a href="#" class="icon icon-cube instagram"></a>
					<a href="#" class="icon icon-cube t"></a>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="stroke">
						<ul class="nav navbar-nav">
							<li class="active"><a href="home.jsp" target="_top" class="hvr-bounce-to-bottom">首页</a></li>
							<li><a href="home2.html" target="_top" class="hvr-bounce-to-bottom">篮球入门</a></li>
							<li><a href="../share/share.jsp" target="_top" class="hvr-bounce-to-bottom">分享篮球</a></li>
							<li><a href="../thoughts/thoughts.jsp" target="_top" class="hvr-bounce-to-bottom">篮球名人堂</a></li>
							<li><a href="home4.html" target="_top" class="hvr-bounce-to-bottom">管理中心</a></li>
							<li><a href="../shop/shop.html" target="_top" class="hvr-bounce-to-bottom">购物车</a></li>
							<li><a href="../setting/setting.jsp" onclick="setting('<%=username%>')" target="_top" class="hvr-bounce-to-bottom">个人设置</a></li>
							
						</ul>
						
						
					<!-- search-scripts -->
					<script src="../js/classie.js"></script>
					<script src="../js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->
					</nav>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>
	</div>
</form>
	<script src="../js/bootstrap.js"></script>
<!-- //for bootstrap working -->

</body>
</html>