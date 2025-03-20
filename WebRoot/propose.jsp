<%@page contentType="text/html;charset=UTF-8"
    import="java.sql.*,java.io.*,proposal.getverification"%>
<%
	getverification gv = new getverification();
	try{
		if(!gv.validation(request, response)){
			%>
	        <script type="text/javascript">
	        window.location="login.jsp";
	        alert("未登录");
	        </script>
	        <%
		};
	} catch (NullPointerException npe) {
		%>
        <script type="text/javascript">
        window.location="login.jsp";
        alert("请重新打开界面");
        </script>
        <%
    }
%> 
<!DOCTYPE HTML>
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>立项管理</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						
						<div class="content">
							<div class="inner">
								<h1>立项管理</h1>
								
							</div>
						</div>
						<nav>
							<ul>
								
								<li><a href="#contact">开始申报</a></li>
								
							</ul>
						</nav>
					</header>

				<!-- Main -->
					<div id="main">


						<!-- Contact -->
							<article id="contact">
							 <form action="getpropose" enctype="multipart/form-data" method="post" autocomplete="off">
								<h2 class="major">项目申报</h2>
									<div class="fields">
										<div class="field">
											<label for="name">项目经理*</label>
											<input type="text" name="name" id="name" required/>
										</div>
										<div class="field">
											<label for="project">项目名称*</label>
											<input type="text" name="project" id="project" required/>
										</div>
										
										<div class="field">
											<label for="dept">部门*</label>
											<input type="text" name="dept" id="dept" required/>
										</div>
										<div class="field">
											<label for="project">项目类型*</label>
											<input type="text" name="protype" id="protype" required/>
										</div>
										<div class="field">
											<label for="project">起始时间（以-连接）*</label>
											<input type="text" name="starttime" id="starttime" required/>
										</div>
										<div class="field">
											<label for="project">预计结束时间（以-连接）*</label>
											<input type="text" name="finishtime" id="finishtime" required/>
										</div>
										<div class="field">
											<label for="email">电子邮箱*</label>
											<input type="text" name="email" id="email" required/>
										</div>
										<div class="field">
											<label for="note">备注</label>
											<input type="text" name="note" id="note" />
										</div>
										<div class="field">
											<label for="material">材料</label>             
               							    <input type="file" name="material" id="material">
										    
										</div>
										<input type="submit" value="提交"/>	
									</div>
						     	</form>					
								
							</article>

						<!-- Elements -->
			

					</div>

				<!-- Footer -->
					<footer id="footer">
						<p class="copyright">XM13</p>
					</footer>

			</div>

		<!-- BG -->
			<div id="bg"></div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
