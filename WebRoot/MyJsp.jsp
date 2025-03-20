<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<script language=javascript>
	function doPrint(printpage) {
		var headstr = "<html><head><title></title></head><body>";
		var footstr = "</body>";
		var newstr = document.all.item(printpage).innerHTML;
		var oldstr = document.body.innerHTML;
		document.body.innerHTML = headstr+newstr+footstr;
		window.print();
		document.body.innerHTML = oldstr;
		return false;
	}
</script>
<title>所有项目</title>
</head>
<body>

	<!--startprint1-->
		<table width="650" border="1" cellpadding="0">

			<tr>
				<th>项目编号</th>
				<th>项目经理</th>
				<th>项目名称</th>
				<th>项目类型</th>
				<th>备注</th>

			</tr>


			<c:forEach var="U" items="${projects}">

				<tr>
					<td><input type="text" value="${U.pno}" name="pno"></td>
					<td><input type="text" value="${U.name}" name="name"></td>
					<td><input type="text" value="${U.projectName}" name="project"></td>

					<td><input type="text" value="${U.type}" name="type"></td>

					<td><input type="text" value="${U.note}" name="note"></td>

				</tr>
			</c:forEach>


		</table>
	<!--endprint1-->
	<button type="submit"  onclick="javascript:doPrint(1);">打印</button>
<style type="text/css">
 @page{
            margin-top: 1mm;
            margin-bottom: 1mm;
      }
 </style>

 <script language="javascript">
        function doPrint(oper)
        {

            if (oper < 10){
                bdhtml=window.document.body.innerHTML;//获取当前页的html代码
                sprnstr="<!--startprint"+oper+"-->";//设置打印开始区域
                eprnstr="<!--endprint"+oper+"-->";//设置打印结束区域
                prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+18); //从开始代码向后取html
                prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//从结束代码向前取html
                window.document.body.innerHTML=prnhtml;
                window.print();
                window.document.body.innerHTML=bdhtml;
            } else {
                window.print();
            }
        }
    </script>	
</body>
</html>

 

