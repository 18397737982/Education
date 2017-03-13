<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="">
<head>
<base href="/superEducation/"/>
<meta charset="UTF-8">
<title>课程图片 - 好知网-重拾学习乐趣-Powered By Howzhi  </title>
<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
 <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script> 
<script type="text/javascript" src="js/cropbox.js"></script>
<script type="text/javascript"src="js/top.js"></script>
<script type="text/javascript"src="js/ajaxfileupload.js"></script>
<link href="css/main.css" rel="stylesheet">
<style type="text/css">
		.form-group{
			margin-top:14px;
			margin-left:30px;
		}
	</style>
<%
	
%>
</head>
  <body class="index">
  <jsp:include page="topb.jsp"></jsp:include>
    <div class="container" id="content-container">  
    <div class="course-managehead media manage">
    <div class="pic media-left">
    <c:choose>
         	<c:when test="${picturestatus==1}">
         		 <a id="coursepic" href="http://www.howzhi.com/course/14023/">
         		 <% String picname=(String)session.getAttribute("coursephoto"); %>
        			<img src="<%="../img/headimg/"+picname%>"/>
     	 		</a>
        	</c:when>
        	<c:otherwise>
        		<a id="coursepic" href="http://www.howzhi.com/course/14023/">
        		<img src="./images/course.png">
      			</a>
        	</c:otherwise>
		 </c:choose>
    </div>
    <div class="info media-body">
        <h1 class="title">
         <c:choose>
         	<c:when test="${empty ctitle}">
         		<a href="page/joinproject.jsp" id="cnameid"></a>
        	</c:when>
        	<c:otherwise>
        		<a href="page/joinproject.jsp" id="cnameid">${ctitle}</a>
        	</c:otherwise>
		 </c:choose>
        </h1>
        <p class="tipinfo t-gray fsn">
            <i class="glyphicon glyphicon-info-sign" style="color: rgb(255, 140, 60); font-size: 14px;"></i>
            请完善基本信息、课程图片和课时后，再<font class="t-infowarn">申请发布</font>课程。<a href="javascript:;" class="active" id="js-info">新手引导</a>
          </p>
                       
    </div>
     <div class="action"> 
      <a class="btn com radius mts" href="http://www.howzhi.com/course/14023/?previewAs=member" target="_blank" style="width:83px;margin-left:280px;margin-top:40px;">返回课程</a>
		<c:choose>
         <c:when test="${empty cManage}">
         <a id="radius btn disable mtl" data-step="4" data-intro="完善所有信息后，点击&#39;申请发布&#39;，向管理员提交发布请求" data-position="left" class="radius btn disable mtl" style="width:83px;">确定发布</a>
        	</c:when>
        	<c:otherwise>
     	<a data-step="4" data-intro="点击'申请发布'，向管理员提交发布请求" data-position="left" class="radius btn btn-primary mtl" href="javascript:void(0);" id="publish-now" style="width:83px;margin-left:280px;margin-top:40px;" onclick="clicktrue()">确定发布</a>          
        	</c:otherwise>
		 </c:choose>          
		 </div>
  </div>

<section class="create-course course-more">
  <div class="row">
    <div class="col-md-3">
      <ul class="list-group affix-top" data-spy="affix" data-offset-top="300">
        <li data-step="1" data-intro="点击&#39;基本信息&#39;，填写完整课程信息，并保存。打绿色勾表示该项完成" data-position="right">
         <c:choose>
         	<c:when test="${basicstatus==1}">
         		<span id="istyle"><img src='images/2016-09-10_184215.png'></span>
        	</c:when>
        	<c:otherwise>
        		<span id="istyle">1</span>
        	</c:otherwise>
		 </c:choose>
       <a title="请输入标题" href="page/manage.jsp">基本信息
          </a>
        </li>
        <li class="active" data-step="2" data-intro="上传课程图片" data-position="right">
         <c:choose>
         	<c:when test="${picturestatus==1}">
         		<span id="tstyle"><img src='images/2016-09-10_184215.png'></span>
        	</c:when>
        	<c:otherwise>
        		<span id="tstyle">2</span>
        	</c:otherwise>
		 </c:choose>           
		 <a class="" href="page/picture.jsp">课程图片</a>
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
                    <a class="" href="course/lession.action">课时管理</a>
        </li>
      </ul>     
    </div>
      <div class="col-md-9">
      
<div class="main">
  <h1>课程图片<span>COURSE PICTURE</span></h1>
  <div class="panel-body">
  		<c:choose>
         	<c:when test="${picturestatus==1}">
         		 <div id="tolession" class="alert alert-success" style="display:block;">课程图片已保存，点击
  	 			<a href="course/lession.action">
  	 			<font class="t-infowarn">【下一步】</font></a> 开始添加课时
     			</div>
        	</c:when>
        	<c:otherwise>
        		 <div id="tolession" class="alert alert-success" style="display:none;">课程图片已保存，点击
  	 				<a href="course/lession.action">
  				 <font class="t-infowarn">【下一步】</font></a> 开始添加课时
     			</div>
        	</c:otherwise>
		 </c:choose>     
        <div class="form-group clearfix">
        <div class="col-md-offset-2 col-md-8 controls">
         <c:choose>
         	<c:when test="${picturestatus==1}">
         		 <% String picname=(String)session.getAttribute("coursephoto"); %>
        		<img src="<%="../img/headimg/"+picname%>" style="width=210px;height:140px;"/>
        	</c:when>
        	<c:otherwise>
        		<img  id="headphoto" src="./images/course.png" class="headphoto"/>
        	</c:otherwise>
		 </c:choose>       
         
      <!--  <div class="imageBox" style="background-image: url(images/course.png); background-size: 658px 851px; background-position: -129px -225.5px; background-repeat: no-repeat;">
			    <div class="thumbBox"></div>
			    <div class="spinner" style="display: none;">Loading...</div>
  			</div> -->
        </div>
      </div>

      <div class="form-group clearfix">
        <div class="col-md-offset-2 col-md-8 controls">
          <p class="help-block">你可以上传jpg, gif, png格式的文件, 图片建议尺寸至少为480x270。<br>文件大小不能超过<strong>2M</strong>。没有课程图片的课程不能发布！</p>
        </div>
      </div>
      
	<!-- 这是控制图片上传的按钮 -->
	 <div class="action"> 
	 
    <!-- <input type="file" id="file" style=" width: 200px">-->
    <div class="new-contentarea tc"> <a href="javascript:void(0)" class="upload-img">
      <label for="upload-file" >上传图像</label>
      </a>
      <input type="file" class="" name="upload-file" id="upload-file">
    </div>
    <input type="button" id="btnCrop" class="Btnsty_peyton" value="保存" onclick="savepicture()">
    
  </div>
	 	
  </div>
</div>

    </div>
  </div>
</section> 
<input type="hidden" value="draft" id="course_status">    
      </div>
    
<script type="text/javascript">

$(window).load(function() {
	var options =
	{
		thumbBox: '.thumbBox',
		spinner: '.spinner',
		imgSrc: 'images/avatar.jpg'
	}
	/* var cropper = $('.imageBox').cropbox(options); */
	  
	$('#upload-file').on('change', function(){
		var reader = new FileReader();
		reader.onload = function(e) {
			//options.imgSrc = e.target.result;
			document.getElementById("headphoto").src=e.target.result;
		}
		reader.readAsDataURL(this.files[0]);
		//this.files = [];
	})
});



function savepicture(){
	var coursephoto=document.getElementById("headphoto").src;
	$.ajaxFileUpload({
		url:"course/editor.action",
		secureuri:false,
		fileElementId:"upload-file",
		dataType:"json",
		success:function(data,status){
			console.info(data.filename);
			$("#tolession").show();
			$("#coursepic").html("");
			$("#coursepic").html("<img src='../img/headimg/"+data.filename+"' style='width='248px' height='140px'/>");
			$("#tstyle").html("");
			$("#tstyle").html("<img src='images/2016-09-10_184215.png'/>");
			alert("温馨提示：添加课程已成功，添加课时进入学习吧")
		},
		error:function(data,status,e){
			alert("温馨提示：头像上传失败！");
		}	
	});	
	
	
	/* $.post("course/savepicture",{coursephoto:coursephoto},function(data){
		alert(data)
		if(data){
			$("#tolession").show();
			$("#coursepic").html("");
			$("#coursepic").html("<img src='../../coursePic/"+data+"' style='width='248px' height='140px'/>");
			$("#tstyle").html("");
			$("#tstyle").html("<img src='images/2016-09-10_184215.png'/>");
			alert("温馨提示：添加课程已成功，添加课时进入学习吧")
		}else{
			alert("温馨提示：头像上传失败！")
		}
	}); */
}
</script> 
<jsp:include page="footer.jsp"></jsp:include>       
</body>
</html>
