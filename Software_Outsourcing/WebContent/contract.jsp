<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Contract</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="csss/bootstrap.css" media="screen">
    <link rel="stylesheet" href="skins/eden.css" media="screen">
    <link rel="stylesheet" href="styles.css" media="screen">
    <link href="fonts/icons/icons.css" rel="stylesheet">
    <link href="csss/animate.css" rel="stylesheet">

</head>
<body   data-spy="scroll" data-target="#topnav"  id="top">

    <section class="header-area-home" id="header-area-home">
        <div id="main-nav-container">
            <div  class="container">
            <nav class="navbar navbar-eden" id="topnav"  style="background-color:#EEEEEE;">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#main-menu">
                            <span class="sr-only"></span>
                            <i class="tn-menu"></i>
                        </button>
                        <a class="navbar-brand" href="#"></a>
                    </div>

                    <div class="collapse navbar-collapse" id="main-menu">
                        <ul class="nav navbar-nav">
                        	<li><img src="imgs/optimus-logo.png" style="width:40px; heigth:40px;"/> </li>
                            <li class="active"><a href="#top">Home</a></li>
                            <li><a href="<s:url action='ShowUser.action'> </s:url>">User Center</a></li>
                            <li><a href="#pricing">Contract</a></li>
                            <li><a href="index.jsp">Exit</a></li>

                        </ul>

                        
                        <ul class="nav navbar-nav navbar-right">
                            <s:form action="SearchProjs.action" method="post">  
                            <p class="clearfix"><input style="heigth:10px" name="projname" id="username" type="text" value="" /> <button  name="submit" id="submit" type="submit" class="btn btn-primary"  data-animation="animated lightSpeedIn" data-delay="3s" data-duration="2s"><i  class="tn-search"></i> search</button></p>
                            
                    	</s:form>
                        </ul>
                    </div>
                </div>
            </nav>
            </div>
        </div>
        

    </section>
    <br/>
    <br/>
    <br/>
	<div class="copyrights"><a href="" title=""></a></div>
   
    <section class="pricing" id="pricing">
    <div class="container">
    <div class="row">
    <div class="col-md-12 text-center section-intro">
        <h2 class="header-boxed  wow zoomIn" data-wow-iteration="1"><span>Contract</span></h2>
        <p class="lead wow fadeInUp" data-wow-delay="200ms">请认真阅读合同，若有疑问请勿签署，签署后有法律效力，若无疑问打印后一式两份，双方各自保存</p>		   
    </div>
		<div id="contract" style="text-align:center;">【试用期劳动协议书】<br /><br /><br /><br />
　　甲方<s:textfield name=""  value="甲方姓名" cssStyle="width:200px;"></s:textfield><br />
　　乙方<s:textfield name="joinername"  cssStyle="width:200px;" readonly="true">
</s:textfield>
   </div>
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
　　<p>甲方：(公章) 乙方：(签字)</p>
　　<p>日期：<s:textfield name="" value="格式如2016/01/01" cssStyle="width:150px;"></s:textfield></p>
    
    </div>
    <br/>
    <br/>
    		<a href="<s:url action='RemoveJoiner.action'>
                    				<s:param name='projname' value='projname' />  
                    				<s:param name='joinername' value='joinername' />  
                    				</s:url>" class="more">
                    		<input style="width:300px; margin-left:36.3%;" type="submit" value="退 出 合 同 " class="btn btn-primary btn-lg btn-block" name="submit">
   			</a>
	 </div>
	 <br/>
	 <p class="lead wow fadeInUp" data-wow-delay="200ms" style="text-align:center;">本平台仅仅为生成合同样式，并不提供签署合同作用。</p> 
     <p class="lead wow fadeInUp" data-wow-delay="200ms" style="text-align:center;">若用户需要可下载本页面至本地使用，若因未签署合同造成钱财劳动力损失本平台概不负责！</p> 
    </section>


    <footer>
    <div class="container">
    <div class="row">
    <div class="col-md-12 text-center section-intro">
        <hr/>
        <h2><img src="imgs/optimus-logo.png" /></h2>
        <a href="#" target="_blank" title=""></a><a href="#" title="" target="_blank"></a><a href="#" class="btn-social btn-twitter btn-sm"><i class="tn-twitter"></i></a>
        <a href="#" class="btn-social btn-facebook btn-sm"><i class="tn-facebook"></i></a>
        <a href="#" class="btn-social btn-google-plus btn-sm"><i class="tn-google"></i></a>
        <a href="#" class="btn-social btn-vimeo btn-sm"><i class="tn-vimeo"></i></a>
        <a href="#" class="btn-social btn-dropbox btn-sm"><i class="tn-dropbox"></i></a>
    </div>
    </div>
    </div>
        <br/><br/>
    </footer>



<script src="jss/jquery-2.1.3.min.js"></script>
<script src="jss/bootstrap.min.js"></script>
<script src="jss/jquery.sticky.js"></script>
<script src="jss/wow.min.js"></script>
<script src="jss/site.js"></script>

</body>
</html>