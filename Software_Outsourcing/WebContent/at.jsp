<%@page contentType="text/html; charset=utf-8" %>
<%@page pageEncoding="utf-8"%>
<%@page import="tot.bean.*"%>
<%@page import="tot.util.*"%>
<%@page import="tot.search.*"%>
<%@page import="java.util.*"%>
<%@page import="java.net.*"%>
<%@page import="java.sql.Timestamp"%>
<%
String parms=RequestUtil.getString(request,"parms");
String t=RequestUtil.getString(request,"t");
if(parms!=null){
	parms=URLDecoder.decode(new String(parms.getBytes("iso-8859-1"),"utf-8"),"utf-8");
	String result = "";
	String url = "http://suggestion.baidu.com/su?wd=" +parms+ "&p=3&cb=window.bdsug.sug&t=" + t;
	String gets = UrlUtil.getHtml(url, "gb2312");
	out.clear();
	if (gets!=null)
	{
			int start = gets.indexOf('[');
			int end = gets.indexOf(']');			
			if(end-start>1){
				gets = gets.substring(start+1, end - start-1);
				gets=gets.replace('"',' ');
			}else{
				gets="";
			}
	}
	out.print(gets);
}
%>