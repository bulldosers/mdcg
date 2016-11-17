<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>USER CENTER</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div id="header">
    	<a href="#"><img src="" title="Affiliate Promo logo" id=" " alt="" /></a>
        <ul id="navBar">
            <li><a href="<s:url action='showUser.action'>  
            		</s:url>"
            	>&nbsp;&nbsp;主&nbsp;&nbsp;&nbsp;&nbsp;页&nbsp;&nbsp;</a>
            </li>
            <li><a href="<s:url action='showAllProjs.action'>  
            		</s:url>">&nbsp;&nbsp;项&nbsp;&nbsp;&nbsp;&nbsp;目&nbsp;&nbsp;</a>
            </li> 
            
            <li><a href="#">&nbsp;&nbsp;团&nbsp;&nbsp;&nbsp;&nbsp;队&nbsp;&nbsp;</a></li>
            
            <li> <a href="<s:url action='personalInfo.action'>  
            		</s:url>" > &nbsp;&nbsp;个&nbsp;&nbsp;&nbsp;&nbsp;人&nbsp;&nbsp; </a>
            </li> 
           
            <li><a href="#">&nbsp;&nbsp;评&nbsp;&nbsp;&nbsp;&nbsp;价&nbsp;&nbsp;</a></li>
            <li class="current"><a href="index.jsp">&nbsp;&nbsp;退&nbsp;&nbsp;&nbsp;&nbsp;出&nbsp;&nbsp;</a></li>   
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/head.jpg" onmouseover="this.src='image/head2.jpg'" onmouseout="this.src='image/head3.jpg'" style="margin-top:2px; width: 48px; height: 48px;"/></li>         
        </ul>
    </div>
    <div id="welcomeMessage">
    	<h1>Welcome to CONTRACT PAGE</h1>
    	<p><span>本页面为合同界面</span>  包含生成的新合同</p>
        <p>在这里，您可以查看合同的详细信息。   <span>用法律手段</span>维护您的权益</p>
    </div>
    <div id="wrapper">
    	<div id="secWrapper">
        	<div id="container" class="clearfix">
        	<div id="mainColscon" class="clearfix">
            		<div id="contract">【试用期劳动协议书】<br /></div><br /><br /><br />
　　<s:textfield name="" label="甲方" value="甲方姓名" cssStyle="width:200px;"></s:textfield>
　　<s:textfield name="clientname" label="乙方" cssStyle="width:200px;" readonly="true"></s:textfield>
   <%-- <s:fielderror>
		<s:param>clientname</s:param> 
   </s:fielderror> --%>

　　<p>身份证号：_____XXXXXXXXXXXXXXXXXX_____</p>
　　<p>甲方聘用乙方为试用期员工，试用期2个月，经双方平等协商，现就试用期间的有关事项订立以下条款，以共同遵守。(试用期最长不超过3个月)</p>
　　<p>一、乙方的岗位(工种)为：<s:textfield name="" value="工作类型" cssStyle="width:200px;"></s:textfield></p>
　　<p>在试用期间，根据工作需要和乙方能力，甲方有权对乙方的工作岗位进行调整。</p>
　　<p>二、在试用期间，乙方应保守甲方的商业秘密，严格遵守劳动纪律和甲方的各项治理规定及制度，并根据甲方工作安排，认真履行职责，维护甲方合法权益。</p>
　　<p>三、乙方试用期工资为<s:textfield name="" value="金额" cssStyle="width:100px;"></s:textfield>元/月，甲方按月发放。</p>
　　<p>四、乙方在试用期内，考勤均由甲方按实际出勤状况和公司考勤制度执行。试用期劳动合同五、乙方在试用期内，公司的福利待遇均已包含在试用期工资内。</p>
　　<p>六、乙方每月工资由甲方自上班之日起的次月10日左右发放，若乙方工作不足一个月时，按月工资比例折合实际工作天数计算。若工资发放日恰逢周日或假日，甲方结合公司实际情况逐日顺延发放。</p>
　　<p>七、在试用期内，乙方提出解除本合同时，须提前七个工作日通知甲方，协商解决，否则，将根据公司制度，由公司按制度论处。</p>
　　<p>八、在试用期内，甲方如认为乙方不能胜任工作或发现乙方应聘材料弄虚作假，不符合录用条件的，可随时停止试用并予以解雇，工资按乙方实际考勤，依据公司制度及本合同相关内容(条款)结算。</p>
　　<p>九、在试用期内，乙方严重违反劳动纪律或者甲方的治理规章制度的;或者故意或严重失职，给甲方利益造成损害的，甲方有权立即终止试用并予以解雇。乙方应对甲方造成的损失予以全额的赔偿责任。</p>
　　<p>十、在试用期内，因乙方泄露甲方商业秘密，给甲方造成经济损失;或因乙方的故意或重大过失行为给甲方造成经济损失的，甲方有权向乙方进行追偿。</p>
　　<p>十一、试用期满或试用期内工作突出并经考核合格者，将在当月内与公司签订正式 劳动合同。考核不合格者，公司根据实际情况将予以解雇。</p>
　　<p>十二、乙方声明，乙方在签署本合同时，已知晓甲方的制度并愿意遵守各项事宜。 十三、本合同经双方签字后起生效。</p>
　　<p>十四、未尽事宜，甲、乙双方协商解决。</p>
　　<p>甲方：(公章)乙方：(签字)</p>
　　<p>日期：<s:textfield name="" value="格式如20160101" cssStyle="width:150px;"></s:textfield></p>
		<a href="#">确&nbsp;&nbsp;认&nbsp;&nbsp;生&nbsp;&nbsp;成</a>
        </div>
    </div>
    </div>
    </div>
    <div id="footer">
    	<ul>
	        <li><a href="#">Home</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
  	        <li><a href="#">Terms and Conditions</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
			<li><a href="#">Privacy Policy</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
 			<li><a href="#">Sitemap</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
  	        <li><a href="#">Support</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
			<li><a href="#">Contact Us</a></li>
        </ul>
        <p>Powered &nbsp;&nbsp; By &nbsp;&nbsp; Harbin &nbsp;&nbsp; HIT &nbsp;&nbsp; MDCG &nbsp;&nbsp; &copy; &nbsp;&nbsp; 2016-10-26</p>
    </div>
</body>
</html>