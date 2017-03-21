<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"  %>
<!DOCTYPE html>
<!-- saved from url=(0045)http://www.howzhi.com/ugc/course/14023/manage -->
<html class=""><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <base href="/superEducation/"/>
  <title>  
    好知网-重拾学习乐趣-Powered By Howzhi  </title>
<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon"> 
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" media="screen" href="css/common.css">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script> 
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>  
    <script type="text/javascript" src="ckeditor/config.js"></script>  
   	<script type="text/javascript">
   		var myckeditor;
	    	$(document).ready(function(){  
	    	 myckeditor=CKEDITOR.replace('myckeditor'); 
	    });  
	</script>  
<style>.cke{visibility:hidden;}</style>
<script type="text/javascript" src="js/top.js"></script>
</head>

<body class="index">   
  
    <jsp:include page="topb.jsp"></jsp:include>
    <div class="container" id="content-container"> 
    <div class="course-managehead media manage">
    <div class="pic media-left">
      <c:choose>
         <c:when test="${picturestatus==1}">
         	<% String picname=(String)session.getAttribute("coursephoto"); %>
        	 <a href="http://www.howzhi.com/course/14023/">
        	  <img src="<%="../img/headimg/"+picname%>">
      		</a>
        	</c:when>
        	<c:otherwise>
        	<a href="http://www.howzhi.com/course/14023/">
        		<img src="images/course.png">
     		 </a>
        	</c:otherwise>
		 </c:choose>       
    </div>
    <div class="info media-body">
        <h1 class="title">
        <c:choose>
         	<c:when test="${empty ctitle}">
         		<a href="joinproject.action" id="cnameid"></a>
        	</c:when>
        	<c:otherwise>
        		<a href="joinproject.action" id="cnameid">${ctitle}</a>
        	</c:otherwise>
		 </c:choose>
        </h1>
       <p class="tipinfo t-gray fsn">
            <i class="glyphicon glyphicon-info-sign" style="color: rgb(255, 140, 60); font-size: 14px;"></i>
            请完善基本信息、课程图片和课时后，再<font class="t-infowarn">申请发布</font>课程。<a href="javascript:;" class="active" id="js-info">新手引导</a>
          </p>
                       
    </div> 
     <div class="action"> 
      <a class="btn com radius mts" href="http://www.howzhi.com/course/14023/?previewAs=member" target="_blank" style="width:83px;">返回课程</a>
		<c:choose>
         <c:when test="${empty cManage}">
         <a id="radius btn disable mtl" data-step="4" data-intro="完善所有信息后，点击&#39;申请发布&#39;，向管理员提交发布请求" data-position="left" class="radius btn disable mtl" style="width:83px;">确定发布</a>
        	</c:when>
        	<c:otherwise>
     	<a data-step="4" data-intro="点击'申请发布'，向管理员提交发布请求" data-position="left" class="radius btn btn-primary mtl" href="javascript:void(0);" id="publish-now" onclick="clicktrue()">确定发布</a>          
        	</c:otherwise>
		 </c:choose>            
		 </div>
  	</div>

<section class="create-course course-more">
  <div class="row">
    
    <div class="col-md-3">
      <ul class="list-group affix-top" data-spy="affix" data-offset-top="300">
        <li class="active" data-step="1" data-intro="点击&#39;基本信息&#39;，填写完整课程信息，并保存。打绿色勾表示该项完成" data-position="right">
         <c:choose>
         	<c:when test="${basicstatus==1}">
         		<span id="istyle"><img src='images/2016-09-10_184215.png'></span>
        	</c:when>
        	<c:otherwise>
        		<span id="istyle">1</span>
        	</c:otherwise>
		 </c:choose>
        <a title="请输入标题" href="course/manage.action">
            基本信息
          </a>
        </li>
        <li data-step="2" data-intro="上传课程图片" data-position="right">
          <!-- <span id="tstyle">2</span> -->
          <c:choose>
         	<c:when test="${picturestatus==1}">
         		<span id="tstyle"><img src='images/2016-09-10_184215.png'></span>
        	</c:when>
        	<c:otherwise>
        		<span id="tstyle">2</span>
        	</c:otherwise>
		 </c:choose> 
          <a class="" href="course/picture.action">课程图片</a>
        </li>
        
        <li data-step="3" data-intro="添加课时，完成最后信息的填写" data-position="right">
           <c:choose>
         	<c:when test="${addlessions==1}">
         		<span id="sstyle"><img src='images/2016-09-10_184215.png'></span>
        	</c:when>
        	<c:otherwise>
        		<span id="sstyle">3</span>
        	</c:otherwise>
		 </c:choose>          
                    <a class="" href="course/manage.action">课时管理</a>
        </li>
      </ul>     
    </div>
      <div class="col-md-9">
            <div class="main">
        <h1>基本信息<span>CREATE INFORMATION</span></h1>      
        <form id="course-form" class="form-horizontal" action="http://www.howzhi.com/ugc/course/14023/manage" method="post" novalidate="novalidate" data-widget-cid="widget-0">
            <div id="topicture" class="alert alert-success" style="display:none;"> 课程基本信息已保存，点击
            <a href="course/picture.action"><font class="t-infowarn">【下一步】</font></a>开始添加课程图片
			</div> 
            <div class="form-group">
            <label class="col-md-2 control-label" for="course_title">标题</label>
            <div class="col-md-8 controls">
            <c:choose>
         	<c:when test="${empty ctitle}">
         		<input id="course_title" class="form-control" type="text" value="" required="required" name="title" data-explain="" placeholder="给你课程一个吸引人的标题" data-widget-cid="widget-1">
        	</c:when>
        		<c:otherwise>
        		<input id="course_title" class="form-control" type="text" value="${ctitle}" required="required" name="title" data-explain="" placeholder="给你课程一个吸引人的标题" data-widget-cid="widget-1">
        		</c:otherwise>
			 </c:choose>
              <div class="help-block" style="display:none;"></div>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-2 control-label" for="course-about-field">课程简介</label>
           	<c:choose>
         	<c:when test="${empty cintroduction}">
         		<div style="width:560px;height: 300px;float:right;margin-right: 130px;"> <textarea name="myckeditor" id="introduction"></textarea></div>
        	</c:when>
        		<c:otherwise>
           	<div style="width:560px;height: 300px;float:right;margin-right: 130px;"> <textarea name="myckeditor" id="introduction">${cintroduction}</textarea></div>
        		</c:otherwise>
			 </c:choose>
          </div>
          
          
          <div class="form-group">
          <label class="col-md-2 control-label">分类</label>
          <div class="col-md-8 controls">
          <c:choose>
         	<c:when test="${empty ctid}">
 				<select id="course_categoryId" name="categoryId" required="required" class="form-control width-input" data-widget-cid="widget-4" data-explain="">
              		<option value="-1">所有类别</option>
					<c:forEach items="${categories}" var="ca">
						<option value="${ca.class_id}">${ca.class_categorys}</option>
					</c:forEach>
            	</select>        	
            </c:when>
        		<c:otherwise>
				<select id="course_categoryId" name="categoryId" required="required" class="form-control width-input" data-widget-cid="widget-4" data-explain="">
              		<option value="${ctid}">${courseType.typename}</option>
              		<option value="-1">所有类别</option>
					<c:forEach items="${categories}" var="ca">
						<option value="${ca.class_id}">${ca.class_categorys}</option>
					</c:forEach>
            	</select>        		
            </c:otherwise>
			 </c:choose>
            
            <div class="help-block" style="display:none;"></div>
          </div>
          </div>
          <div class="form-group">
                <label class="col-md-2 control-label" for="howzhi_tags">标签</label>
                <div class="col-md-8 controls">
                  <c:choose>
         			<c:when test="${empty courseting}">
                  <input type="text" id="howzhi_tags" name="howzhi_customTags" required="required" class="form-control" value="" data-explain="将会应用于按标签搜索课程、相关课程的提取等" data-widget-cid="widget-3">
        			</c:when>
        			<c:otherwise>
                  <input type="text" id="howzhi_tags" name="howzhi_customTags" required="required" class="form-control"  
                  value="${courseting}" data-explain="将会应用于按标签搜索课程、相关课程的提取等" data-widget-cid="widget-3">
        			</c:otherwise>
			 	</c:choose>
                  <div class="help-block">将会应用于按标签搜索课程、相关课程的提取等</div>
                </div>
          </div>
          
             <div class="form-group">
                <label class="col-md-2 control-label" for="howzhi_tags">价格</label>
                <div class="col-md-8 controls">
                  <c:choose>
         			<c:when test="${empty price}">
                  <input type="text" id="howzhi_price" name="howzhi_customTags" required="required" class="form-control" value="" data-widget-cid="widget-3">
        			</c:when>
        			<c:otherwise>
                  <input type="text" id="howzhi_price" name="howzhi_customTags" required="required" class="form-control" value="${price}" data-widget-cid="widget-3">
        			</c:otherwise>
			 	</c:choose>
                </div>
          </div>
          <div class="form-group">
            <div class="col-md-offset-2 col-md-8 controls">            
              <a href="javascript:save()" id="save_button" class="btn btn-blue pull-right mrl">保存</a> 
            </div>
          </div>
            <input type="hidden" name="_csrf_token" value="02f330084b3045f3d695afbb5708ecb5d28133c5">
            <input type="hidden" name="type" id="submit_type">
        </form> 

      </div>
        </div>
  </div>
</section> 
<input type="hidden" value="draft" id="course_status">    
</div>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
	function save(){
		var course_name=$("#course_title").val();
		var course_description=myckeditor.document.getBody().getHtml();
		var class_id=$("#course_categoryId").val();
		var courseting=$("#howzhi_tags").val();
		var price=$("#howzhi_price").val();
		$.post("course/basic",{course_name:course_name,course_description:course_description,class_id:class_id,courseting:courseting,price:price},function(data){
			if(data==1){
				alert("温馨提示：课程简介不能为空！");
			}else if(data==2){
				alert("温馨提示：分类不能为空！");
			}else if(data==3){
				alert("温馨提示：标签不能为空！");
			}else{
				$("#topicture").show();
				$("#istyle").html("");
				$("#istyle").html("<img src='images/2016-09-10_184215.png'/>");
			}
		});
	}
</script>
</body>
</html>