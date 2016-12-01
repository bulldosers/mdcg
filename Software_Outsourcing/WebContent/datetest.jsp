<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="error.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="tot.util.*"%>
<%@ page import="tot.db.*"%>
<%@ include file="inc/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Untitled Document</title>
<link href="style/div_sys.css" rel="stylesheet" type="text/css" />
</head>
</head>

<body>

CurrentTimeStamp:<%=DateUtil.getCurrentGMTTimestamp()%><br />

dateExpire:<%=DateUtil.getCurrentGMTTimestampExpiredDay(30)%><br />
longs(s)<%=DateUtil.string2Time("2016-12-1 00:00:00.000").getTime()%>

dateExpire:(long)<%=DateUtil.getCurrentGMTTimestamp().after(DateUtil.getCurrentGMTTimestampExpiredDay(30))%>
MD5:
<%
MD5 md5=new MD5();
out.print(md5.getMD5of32("tot_payofkeyv1.0"));
%>
</body>
</html>
