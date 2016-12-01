<%@page contentType="text/html; charset=utf-8" %>
<%@page pageEncoding="utf-8"%>
<%@page import="tot.bean.*"%>
<%@page import="tot.util.*"%>
<%@page import="tot.dao.*"%>
<%@page import="tot.search.*"%>
<%@page import="java.util.*"%>
<%@page import="java.net.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import=" tot.search.filter.*"%>
<%
response.setContentType("text/xml");
String act=RequestUtil.getString(request,"act");
String tbl=RequestUtil.getString(request,"table");
StringBuffer paras=new StringBuffer(512);
long start=System.currentTimeMillis();
String key=request.getParameter("keyword");
String[] keyarr=null;
int searchby=RequestUtil.getInt(request,"searchby");
int categoryid=RequestUtil.getInt(request,"categoryid");
int beforafter=RequestUtil.getInt(request,"beforafter");
int searchandor=RequestUtil.getInt(request,"searchandor");
int days=RequestUtil.getInt(request,"days");
int sortby=RequestUtil.getInt(request,"sortby");
int pagesize=10;
int pageNum=0;
int totalnum=0;
int startPage=0;
int endPage=0;
int prePage=0;
int nextPage=0;	
int currentpage=0;
int offset=RequestUtil.getInt(request,"offset");
int rows=RequestUtil.getInt(request,"rows");
if(rows<=0){
	rows=pagesize;
}	
if(key!=null){
	key=URLDecoder.decode(new String(key.getBytes("iso-8859-1"),"utf-8"),"utf-8");
	keyarr=key.split(" ");
	paras.append("&keyword=").append(URLEncoder.encode(key,"utf-8"));
}
paras.append("&searchby=").append(searchby);
paras.append("&sortby=").append(sortby);
paras.append("&beforafter=").append(beforafter);
paras.append("&days=").append(days);
paras.append("&categoryid=").append(categoryid);
paras.append("&table=").append(tbl);
paras.append("&searchandor=").append(searchandor);
if(key!=null && !key.equals(" ")){	
	SearchQuery query = new SearchQuery();
	if (key!=null && key.length() > 0) {
			query.setSearchString(key);
			query.setScopeInArticle(searchby);
	}        
	if(tbl!=null && tbl.length()>0){
		query.setTable(tbl);
	}
	if(searchandor>0){
			query.setSearchAndOr(searchandor);
	}
	if (categoryid > 0) {
			query.setCatalogId(categoryid);
	}
	if (days >0) { // 10 years
			long deltaTime = DateUtil.DAY * days;
			Timestamp now = DateUtil.getCurrentGMTTimestamp();
			Timestamp from = null;
			Timestamp to = null;
			long currentTime = now.getTime();
			if (beforafter ==1) {
					from = new Timestamp(currentTime - deltaTime);
					to=now;
			} else if(beforafter==2) {// older
					from=new Timestamp(0l);
					to = new Timestamp(currentTime - deltaTime);
			}else{
					from = new Timestamp(currentTime - deltaTime);
					to=now;
			}
			query.setFromDate(from);
			query.setToDate(to);
	}        
	query.setSortType(sortby);
	try{
		query.searchDocuments(offset, rows);
	}
	catch(Exception e){
		e.printStackTrace();
	}						
	if(query!=null){
		Collection result=(Collection)query.getArticleResult();
		totalnum=(Integer)query.getHitCount();		
		pageNum=(totalnum-1+pagesize)/pagesize;
		currentpage=offset/pagesize+1;
		long endTime=System.currentTimeMillis();		
		out.clear();
		out.println("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
		out.println("<root>");
		out.println("<total>" + totalnum + "</total>");
		for (Iterator iter = result.iterator(); iter.hasNext(); )
		{
			DataField df=(DataField)iter.next();
			String id=df.getFieldValue("keyid");
			String title=df.getFieldValue("title");
			String content=df.getFieldValue("demons");
			title=StringUtils.removeHtml(title);
			content=StringUtils.removeHtml(title);
			/*
			if(title!=null){
				title=title.replaceAll("&","&amp;");				
			}
			if(content!=null){
				content=StringUtils.removeHtml(content);
				content=content.replaceAll("&","&amp;");		
				content=content.replaceAll("<","&lt;");
				content=content.replaceAll(">","&gt;");
				content=content.replaceAll("\"","&quot;");
			}		
			*/
			String linkurl=df.getFieldValue("linkurl");
			if(linkurl!=null){
				linkurl=linkurl.replaceAll("&","&amp;");	
			}
			String datestr=df.getFieldValue("moditime");			
			out.println("<list>");
			out.println("	<id>" + id + "</id>");
			out.println("    <title>" + title + "</title>");
			out.println("    <linkurl>" + linkurl + "</linkurl>");
			out.println("    <summary>" + content + "</summary>");
			out.println("    <moddate>" + datestr + "</moddate>");
			out.println("</list>");
		}//end for
		out.println("</root>");
		result=null;
	}
}
%>