<%@page contentType="text/html; charset=utf-8" %>
<%@page pageEncoding="utf-8"%>
<%@page import="tot.bean.*"%>
<%@page import="tot.util.*"%>
<%@page import="tot.dao.*"%>
<%@page import="tot.search.*"%>
<%@page import="java.util.*"%>
<%@page import="java.net.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="tot.search.filter.*"%>
<%@page import="org.apache.lucene.document.DateTools"%>
<%
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
if(offset<0) offset=0;
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
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="style/pages.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style/at.css" />
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/at.js" type="text/javascript"></script>
<title><%=key==null?"":key%></title>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:246px;
	top:53px;
	z-index:1;
}
#wrapper{
	position:absolute;
   margin:0 auto;
   width:600px;
   background-color:#ffffff;
}
-->
</style> 
</head>
<body> 
<form method="get" action="?">
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="245" height="60"><a href="/"><img src="/images/logo.gif" alt="淘特搜索引擎" height="45" border="0" /></a></td>
      <td align="left">      	
        <select name="searchby">
          <option value="1"<%if(searchby==1) out.print(" selected=\"selected\"");%>>标题</option>
          <option value="2"<%if(searchby==2) out.print(" selected=\"selected\"");%>>内容</option>
          <option value="0"<%if(searchby==0) out.print(" selected=\"selected\"");%>>全文</option>          
        </select>
        日期范围：
        <select name="days">
          <option value="0"<%if(days==0) out.print(" selected=\"selected\"");%>>不限</option>
          <option value="7"<%if(days==7) out.print(" selected=\"selected\"");%>>一周</option>
          <option value="30"<%if(days==30) out.print(" selected=\"selected\"");%>>一月</option>
          <option value="365"<%if(days==365) out.print(" selected=\"selected\"");%>>一年</option>
        </select>
        <label><input type="radio" name="beforafter" value="1"<%if(beforafter==1) out.print(" checked=\"checked\"");%>/>之内</label>
        <label><input type="radio" name="beforafter" value="2"<%if(beforafter==2) out.print(" checked=\"checked\"");%>/>之前</label>
        排序：
        <label><input type="radio" name="sortby" value="1"<%if(sortby==1) out.print(" checked=\"checked\"");%> />日期</label>       
        <label><input type="radio" name="sortby" value="2"<%if(sortby==2) out.print(" checked=\"checked\"");%>/>相关度</label>
        <br />
        <input name="keyword" type="text" class="input_key" id="keyword"  size="50" maxlength="50" onClick="if(this.value=='请输入要查询的关键字') this.value='';" value="<%=(key==null?"请输入要查询的关键字":key)%>"   onkeyup="findcon();" /> 
        <input type="hidden" name="table" value="<%=tbl==null?"":tbl%>" />
        <input type="hidden" name="categoryid" value="<%=categoryid%>" />        
        <input type="hidden" name="searchandor" value="<%=searchandor%>" />
        <input name="submit" type="submit" class="btn_search" id="submit" value="搜索一下" />
			</td>
    </tr>
  </table>
  <div id="apDiv1">
  	<div id="popup">  
    	<ul id="con_ul"></ul>  
  	</div>
  </div>
</form>
<%
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
			//query.setSearchAndOr(searchandor);
	}
	query.setSearchAndOr(1);
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
%>
<div class="linebar">
	共找到 <span id="GetTotalNum"><%=totalnum%></span> 条相关数据 用时
  <span id="UseTime"><%=(new Double((endTime-start))/1000.000)%></span> 秒
</div>
<div class="mainbox">
	<div class="contain">
  <!--start left-->
	<div class="left">    
    <%
		for (Iterator iter = result.iterator(); iter.hasNext(); )
		{
			DataField df=(DataField)iter.next();
			if(df!=null){
				String id=df.getFieldValue("keyid");
				String title=df.getFieldValue("title");
				String content=df.getFieldValue("demons");
				String author=df.getFieldValue("author");
				/*
				if(title!=null){
					for(int i=0;i<keyarr.length;i++){
						title = title.replaceAll("(?i)"+keyarr[i], "<font color=\"red\">"+keyarr[i]+"</font>"); //大小写不敏感 		
					}
				}
				if(content!=null){
					content=StringUtils.removeHtml(content);
					if(content.length()>100){
						content=content.substring(0,100)+"..";
					}				
					for(int i=0;i<keyarr.length;i++){
						content = content.replaceAll("(?i)"+keyarr[i], "<font color=\"red\">"+keyarr[i]+"</font>"); //大小写不敏感 		
					}
				}			
				*/
				Timestamp datetime=new Timestamp(Long.parseLong(df.getFieldValue("moditime")));
				String datestr=datetime.toString();
				String linkurl=df.getFieldValue("linkurl");
	%>
    <div class="search_title"><a href="<%=linkurl%>" target="_blank"><%=title%></a></div>
    <div class="search_desc"><%=content%></div>    
    <span class="search_date"><%=datestr%></span>
    <span class="search_url"></span>
    <span><%=author%></span>       
  <%
			}
		}	
	%>            
  </div>
  <!--end left-->
  <div class="right">
		<script type="text/javascript"><!--
    google_ad_client = "pub-6519981311832009";
    /* 250x250, 创建于 10-4-23 */
    google_ad_slot = "8598004635";
    google_ad_width = 250;
    google_ad_height = 250;
    //-->
    </script>
    <script type="text/javascript"
    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
  </div>
 </div>
</div>
<%
		result=null;
	}
}
%>
<div class="clear"></div>
<div id="AspNetPager1">
<%
startPage=currentpage-5;
if(startPage<=0) startPage=1;
endPage=currentpage+5;
if(currentpage<5) endPage=10;
if(endPage>pageNum) endPage=pageNum;
prePage=currentpage-1;
nextPage=currentpage+1;		
if(currentpage==1){
	out.print("<a disabled=\"disabled\" style=\"margin-right:5px;\">首页</a>");
}else{
	out.print("<a href=\"?offset=0&rows="+pagesize+paras+"\" style=\"margin-right:5px;\">首页</a>\n");
}
if(prePage>0){
	out.print("<a href=\"?offset="+(pagesize*(prePage-1))+"&rows="+pagesize+paras+"\" style=\"margin-right:5px;\">上一页</a>\n");
}else{
	out.print("上一页 ");
}
for(int i=startPage;i<=endPage;i++){
	if(i==currentpage){
		out.print("<span style=\"margin-right:5px;font-weight:Bold;color:red;\">"+i+"</span>");
	}
	else{
		out.print("<a href=\"?offset="+((i-1)*pagesize)+"&rows="+pagesize+paras+"\" style=\"margin-right:5px;\">"+i+"</a>\n");
	}
}
if(nextPage<=pageNum){
	out.print("<a href=\"?offset="+(pagesize*(nextPage-1))+"&rows="+pagesize+paras+"\" style=\"margin-right:5px;\">下一页</a>\n");
}else{
	out.print("下一页");
}
if(currentpage==pageNum){
	out.print("<a disabled=\"disabled\" style=\"margin-right:5px;\">尾页</a>");
}else{
	out.print("<a href=\"?offset="+(pagesize*(pageNum-1))+"&rows="+pagesize+paras+"\" style=\"margin-right:5px;\">尾页</a>\n");
}
%>    
</div> 
</body>
</html>