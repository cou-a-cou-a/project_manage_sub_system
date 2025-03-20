<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="java.sql.*,java.io.*,java.util.*"%>
<%     	
		String param="";
		System.out.println("1================");
		Enumeration em = request.getParameterNames();
		 while (em.hasMoreElements()) {
		    String name = (String) em.nextElement();    
		    String value = request.getParameter(name);
		    System.out.println(name+value);
		}
        System.out.println(request.getAttribute("login_account"));
%>
<html>
	<head>
		<title>错误提示</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	</head>
	<body>
        <a href="login.jsp">密码错误</a>
	</body>
<script type="text/javascript">
</script>
</html>