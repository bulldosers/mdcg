<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="tot.db.DBUtils" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据库连接测试页_Powered By TotCms</title>
<style type="text/css">
body{margin:0px; text-align:center;}
</style>
</head>
</head>

<body>
<br /><br /><br /><br />
<%
Connection conn = null;
try{
	conn = DBUtils.getConnection();
	if(conn!=null){
		out.print("<h2>Success!数据库连接成功</h2>");
	}else{
		out.print("<h2>数据库连接失败，请检查WEB-INF/classes/search-config.xml文件中数据库相关参数！</h2>");
	}
} catch(SQLException e){
	out.print("<h2>数据库连接失败，请检查WEB-INF/classes/search-config.xml文件中数据库相关参数！</h2>");
} finally{
	DBUtils.closeConnection(conn);
}
%>

</body>
</html>
