<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="java.sql.*,java.io.*"
        import="java.text.*,org.json.JSONArray,org.json.JSONObject,java.util.ArrayList"
        import="java.util.HashMap,java.util.List,java.util.Map,java.io.IOException"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	</head>
	<body>
		<%
			//获取add_file.jsp页面提交后传递过来的参数，在form里的参数才能传递过来，注意name和id的区别
			String id = request.getParameter("id");
			String roleId = request.getParameter("role_id");
			String deviceName = request.getParameter("device_name");
			request.setCharacterEncoding("UTF-8");
			out.println("页面传递过来的数据获取完毕");
			System.out.println("页面传递过来的数据获取完毕");
			System.out.println("id="+id+",roleId="+roleId+",deviceName="+deviceName);

			//开始连接数据库，需要先把mysql-connector-java-5.0.4-bin.jar和json.jar拷贝到ROOT/WEB-INF/lib下
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException classnotfoundexception) {
				classnotfoundexception.printStackTrace();
			}
			out.println("加载了JDBC驱动");
			System.out.println("加载了JDBC驱动");

            List jsonList = new ArrayList();
			//然后链接数据库，开始操作数据表
			try {
				Connection conn = DriverManager
						.getConnection("jdbc:mysql://localhost:3306/lawsql?user=root&password=123456&useUnicode=true&characterEncoding=UTF-8");
				System.out.println("准备statement。");
				Statement statement = conn.createStatement();
				System.out.println("已经链接上数据库！");
				out.println("Connect Database Ok！！！<br>");
				String sql = "select * from law_tree where role_id='"+roleId+"'";//why''？ where role_id ='normal'
				out.println("即将执行的SQL语句是："+sql+"<br>");
				System.out.println("即将执行的SQL语句是："+sql+"<br>");
				ResultSet rs = statement.executeQuery(sql);
                //ResultSet rs = statement.executeUpdate(sql);
                
                out.println("================================================");
                while(rs.next()){
                    out.println(rs.getString("role_id"));
                    out.println(rs.getString("href"));
                    out.println(rs.getString("caption"));
                    out.println("<br>");

                    List list = new ArrayList();
                    list.add(rs.getString("role_id"));
                    list.add(rs.getString("href"));
                    list.add(rs.getString("caption"));
                    jsonList.add(list);
                }
                out.println("================================================");
                out.println("");
                //statement.executeUpdate(sql);
				statement.close();
				conn.close();
                

				out.println("Database Closed！！！<br>");
				System.out.println("操作数据完毕，关闭了数据库！");
		%>
				
				<input type="button" name="listBtn" value="返回列表" onclick="window.location='device_list.jsp'">
		<%
			} catch (SQLException sqlexception) {
				sqlexception.printStackTrace();
		%>
				
				<input type="button" name="listBtn" value="返回列表" onclick="window.location='device_list.jsp'">
		<%
			}

            JSONObject jsonObj= new JSONObject();
            jsonObj.put("aaData",jsonList);
            response.setContentType("json/application; charset=UTF-8");
            try{
                response.getWriter().print(jsonObj);
                response.getWriter().flush();
                response.getWriter().close();
            }catch(IOException e){
                e.printStackTrace();
            }
			out.println("页面执行完毕！");
			System.out.println("页面执行完毕！");
		%>
	</body>
</html>
