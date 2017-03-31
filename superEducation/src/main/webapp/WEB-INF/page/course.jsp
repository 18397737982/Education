<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html class="">
<head>
<base href="/superEducation/"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="baidu-site-verification" content="XN2OVFQdUg">
<title>所有课程-好知网</title>
<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
<link  rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/course.css">
<link rel="stylesheet" type="text/css" href="css/swiper.css" >
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/tcdPageCode.css">
<script src="js/jquery.js"></script> 
 <script  type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/swiper-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script> 
<script src="js/goeasy.js"></script>


<style type="text/css">
		.form-group{
			margin-top:14px;
			margin-left:30px;
		}
	</style>
</head>
<body class="hzco-classify">

 <!-- <script type="text/javascript" src="js/course.js"></script>/*精品课程*/ -->
<script type="text/javascript" >
<%
	
%>
var course='${course}';

course=JSON.parse(course); 
/* 
alert("........."+course);
$(function() {
	alert("........."+course);
	changcourse(course);
});
alert(course); */
var page=1;
function courses(class_id,rang){
	//获取页面课程信息
	$.ajax({
		url:"getCourseInformation.action",
		data: {"class_id": class_id,
					"rang":rang		//最热排序  -1    
		},
		method:"POST",
		type:"POST",
		dataType: 'json',
		success:function(data){
			course=data;
			$("#SendMsg").css("display","block");
			$("#inform").css("display","block");
			page=1;
			changcourse(course);
		}
	});
}

//下一页
function nextpage(p){
	page=Math.ceil(p);
	changcourse(course);
}


function changcourse(data){
	$("#findCourse").html('');
	var maxpage=Math.ceil(data.length/9);
	var repage=1;
	var nextpage=1;
	if(page>1){repage=page-1;}else{repage=1;}
	if(page<maxpage){nextpage=page+1;}else{nextpage=maxpage;}
	$("#fenye").html("<a href='javascript:void(0);'onclick='nextpage(1)'>首页</a>&nbsp;&nbsp; "+page+" &nbsp;&nbsp;"
			+"<a href='javascript:void(0);'onclick='nextpage("+repage+")'>上一页</a>&nbsp;&nbsp; "+page+" &nbsp;&nbsp;"
			+"<a href='javascript:void(0);' onclick='nextpage("+nextpage+")'>下一页</a>&nbsp;&nbsp;"
			+"<a href='javascript:void(0);' onclick='nextpage("+maxpage+")'>末页</a>&nbsp;&nbsp;"
	);
	for(var i=0;i<data.length;i++){  

		if(i>(page*9-1)||i<(page-1)*9){
			continue;
		}
	
		var thiscourse=data[i];			
	$("#findCourse").append("<div class='col-md-4 col-xs-6'>"
				+"<div class='course-item'  id='course"+thiscourse.course_id+"'>"
						+" <div class='course-img' id='cimg"+thiscourse.course_id+"'> <a href=\"toOneCourse.action/"+thiscourse.course_id+"\"> <img src='"+thiscourse.coursephoto+"' alt='' class='''> </a> </div>"
						+"  <div class='course-info'>"
								+"<div class='title text-o-show'> <a href='toOneCourse.action/"+thiscourse.course_id+"' >"+thiscourse.course_name+"</a> </div>"
								+"<div class='metas'  style='color:#666'><span>浏览量:"+thiscourse.course_view+"</span>/ <span>学员:</span>/ <span>评分</span> </div>"
								+"<div class='teacher text-o-show'> <a class=' js-user-card' href='javaScript:void(0);' data-card-url='/user/1282433/card/show' data-user-id='1282433'> "
									+"<img class='avatar-ss ' src=' "+thiscourse.coursephoto+"' alt='' >"+thiscourse.userInfo.user_name+"</a>"
									+" <div class='price free pull-right'><span>￥:"+thiscourse.price+"</span></div>"
						  		+"</div>"
						+"</div>"
				+"</div>"
+"</div>"
); 
	
	
	}
}

</script>
<!-- 头部 -------------------------------------------------------------------  -->			
<c:set value="${users}" var="us"/>
<c:if test="${empty us }">
	<jsp:include page="topf.jsp"></jsp:include>
</c:if>
<c:if test="${us!=null }">
	<jsp:include page="topb.jsp"></jsp:include>
</c:if>
<!-- 头部 分割线------------------------------------------------------------------------------------  -->		
<div class="container" id="content-container" style="margin-top: 30px;">
  <ul class="tab-head tab clearfix">
  <c:forEach var="item" items="${category}" varStatus="status" >
  			<c:choose>
		  			<c:when test="status.first">
		  			      <li class="act first"  id="${item.class_id}"><a href="toCourse.action/${item.class_id}" >${item.class_categorys}</a></li>
		  			</c:when>
		  			<c:when test="status.last">
		  			      <li class="last"  id="${item.class_id}"><a href="toCourse.action/${item.class_id}" >${item.class_categorys}</a></li>
		  			</c:when>
		  			<c:otherwise>
		  				<li class=""  id="${item.class_id}"><a href="toCourse.action/${item.class_id}" >${item.class_categorys}</a></li>
		  			</c:otherwise>
  			</c:choose>
   </c:forEach>
  </ul>
  <div class="category"> </div>
  <div class="row co-classify-list">
    <div class="col-md-9">
      <div style="height: 100px;" class="ad swiper-container swiper-container-horizontal swiper-container-fade">
    <!--      <div style="width: 850px; height: 400px; transform: translate3d(0px, -300px, 0px); transition-duration: 0.3s;" class="swiper-wrapper">
         <div style="width: 850px; height: 100px;" class="swiper-slide  swiper-slide-duplicate"> <a href="javaScript:void(0);"> <img src="images/block_picture_1460533852.jpg" alt="【吕小川】创意大片合成教程"></a> </div>
          <div style="width: 850px; height: 100px;" class="swiper-slide"> <a href="javaScript:void(0);"> <img src="images/block_picture_1460094695.jpg" alt="牛牛很忙人像摄影班，教你拍摄唯美人像"></a> </div>
          <div style="width: 850px; height: 100px;" class="swiper-slide"> <a href="javaScript:void(0);"> <img src="images/block_picture_1460533852.jpg" alt="【吕小川】创意大片合成教程"></a> </div>
          <div style="width: 850px; height: 100px;display: block;" class="swiper-slide  swiper-slide-duplicate swiper-slide-visible swiper-slide-active"> <a href="javaScript:void(0);"> <img src="images/block_picture_1460094695.jpg" alt="牛牛很忙人像摄影班，教你拍摄唯美人像"></a> </div>       
         </div>  -->
         <div style="width: 850px; height:100px;display: block;" > <a href="javaScript:void(0);"> <img src="images/block_picture_1460533852.jpg" alt="牛牛很忙人像摄影班，教你拍摄唯美人像"></a> </div>
         
        <span class="close" aria-hidden="true" data-dismiss="alert">×</span> </div>
      <div class="sort-nav">
        <dl class="clearfix" id="sortNav">
          <dd class="first"><a class="act" href="javascript:void(0);onclick="courses(${class_id},0)"" id="0">综合排序</a></dd>
          <dd><a class="" href="javascript:void(0);" onclick="courses(${class_id},-2)" id="1">最新</a></dd>
          <dd><a class="" href="javascript:void(0);" onclick="courses(${class_id},-1)" id="2">最热</a></dd>
<!--           <dd class="price-order"> <a href="javaScript:void(0);">价格排序<i style="font-size:10px;margin-left:3px;" class="glyphicon glyphicon-chevron-down"></i></a>
            <ul>
              <li><a class="" href="javascript:void(0);">价格从低到高</a></li>
              <li><a class="" href="javascript:void(0);">价格从高到低</a></li>
            </ul>
          </dd>
          <dd class="live"> <a href="javascript:void(0);"><i class="unlive"></i>直播课</a> </dd>
          <dd class="price-fee live"> <a href="javascript:void(0);"><i class="unlive"></i>收费课程</a> </dd>
         --></dl>
      </div>
      <div class="course list row" id="findCourse">
      
      <!--  从数据库查出来的课程------------------------------------------------------------------------------------------------ -->

         <if test="${courses}!=null">
        	<c:forEach items="${courses}" var="item"  begin="0" end="8"> 
        	        <div class="col-md-4 col-xs-6">
	        <!-- 课程 -->
	          <div class="course-item " id="course${item.course_id}">
			            <div class="course-img"  id="cimg${item.course_id}"> <a href="toOneCourse.action/${item.course_id}" > <img src="${item.coursephoto}" alt="" class=""> </a> </div>
			            <div class="course-info">
			              <div class="title text-o-show"> <a href="'toOneCourse.action/"+${item.course_id}+"' " ></a>${item.course_name} </div>
			              <div class="metas"  style="color:#666"><span>浏览量:${item.course_view}</span>/ <span>学员</span>/ <span>评分</span> </div>
			              <div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0);" data-card-url="/user/1282433/card/show" data-user-id="1282433"> 
			              	<img class="avatar-ss " src=" ${item.coursephoto}" alt="" >${item.userInfo.user_name}</a>
			                <div class="price free pull-right"><span>￥：${item.price}</span></div>
			              </div>
			            </div>
          </div>
        </div>    
        	</c:forEach>
        </if> 
       <!--  从数据库查出来的课程 0 ------------------------------------------------------------------------------------------------ -->
             
      </div>   
      <!--  分页 ----------------------------------------------- -->
        <div class="tcdPageCode" id="commenttcpage">
        <b id="fenye" >
        <a href="javascript:void(0);" onclick="nextpage(1)">首页</a>&nbsp;&nbsp; 1 &nbsp;&nbsp;
         	<a href="javascript:void(0);" onclick="nextpage(1)">上一页</a>&nbsp;&nbsp; 1 &nbsp;&nbsp;
	        <a href="javascript:void(0);" onclick="nextpage(2)">下一页</a>&nbsp;&nbsp;
	        <a href="javascript:void(0);" onclick="nextpage(${courses.size()/9})">末页</a>&nbsp;&nbsp; 1 &nbsp;&nbsp;
        </b>
		        <select id="select" >
			        <c:forEach items="${courses}" var="item"  step="9"  varStatus="status" >
					   		<option value="${status.count}" selected="">${status.count}</option>
			        </c:forEach>
		             </select>
        </div>	
        <div class="tcdPageCode" id="hostcpage" style="display:none"></div>
         <div class="tcdPageCode" id="timecpage" style="display:none"></div>
       <!--  分页  ----------------------------------------------- -->
    </div>
    <div class="col-md-3 classify-right">
      <div class="rec-classroom nobottom wall">
        <h2> 推荐班级 </h2>
        <ul class="course clearfix row">
        
<%--         <if test="${recordcourses}!=null">
        	<c:forEach items="${recordcourses}" var="record"> 
			        <li class="course-item col-md-12 col-xs-6">
			            <div class="course-img"> <a href="'toOneCourse.action/"+${record.course_id}+"' "> <img src="images/144103f87e49421080.jpg" alt="${record.course_name}" class=""> </a>
			              <div class="classroom-tag md hz-triangle"><span>班级</span></div>
			            </div>
			            <div class="course-info">
			              <div class="title text-o-show"> <a href="javaScript:void(0)">${record.course_name}</a> </div>
			              <div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0)" data-card-url="/user/1882233/card/show" data-user-id="1882233"> <img class="avatar-ss " src="images/105454e6cdc9246475.jpg" alt="${record.userInfo.user_name}"> ${record.userInfo.user_name}</a> <span class="dapinpai-icon-t" title="达品牌"></span>
			                <div class="price pull-right"><span>￥：${record.price}</span></div>
			              </div>
			            </div>
			          </li>
        	</c:forEach>
        </if> --%>
        
          
        
        
        <!--  从数据库里面查出的推荐班级 ----------------------------------------------------------------------------------------- --->
           <li class="course-item col-md-12 col-xs-6">
            <div class="course-img"> <a href="javaScript:void(0)"> <img src="images/144103f87e49421080.jpg" alt="牛牛人像摄影班" class=""> </a>
              <div class="classroom-tag md hz-triangle"><span>班级</span></div>
            </div>
            <div class="course-info">
              <div class="title text-o-show"> <a href="javaScript:void(0)">牛牛人像摄影班</a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0)" data-card-url="/user/1882233/card/show" data-user-id="1882233"> <img class="avatar-ss " src="images/105454e6cdc9246475.jpg" alt="牛牛很忙"> 牛牛很忙</a> <span class="dapinpai-icon-t" title="达品牌"></span>
                <div class="price pull-right"><span>￥499.0</span></div>
              </div>
            </div>
          </li>
          <li class="course-item col-md-12 col-xs-6">
            <div class="course-img"> <a href="javaScript:void(0)"> <img src="images/180720898ff5876915.jpg" alt="极致风光摄影高手班—后期修图调色" class=""> </a>
              <div class="classroom-tag md hz-triangle"><span>班级</span></div>
            </div>
            <div class="course-info">
              <div class="title text-o-show"> <a href="javaScript:void(0)">极致风光摄影高手班—后期修图调色</a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="javaScript:void(0)" data-card-url="/user/1882233/card/show" data-user-id="1882233"> <img class="avatar-ss " src="images/101557dab659509843.jpg" alt="双向摄影学院"> 双向摄影学院 </a> <span class="dapinpai-icon-t" title="达品牌"></span>
                <div class="price pull-right"><span>￥880.00</span></div>
              </div>
            </div>
          </li>
         
          <!---------------------------------------------------------------------------------------------------------------------- -->
        </ul>
      </div>
      <div class="rec-course nobottom wall">
        <h2> 推荐课程 </h2>
        <ul class="course clearfix row" id="hostCourse">
        <!-- --------从数据库查出来的热门课程--------------------------------------------------------------------------------------- -->
<%--         <if test="${hostcourse}!=null">
        <c:forEach items="${hostcourse}" var="item"> --%>
          <li class="course-item col-md-12 col-xs-6">
            <div class="course-img"> <a href="http://www.howzhi.com/course/13254/"> <img src="images/065523b78450837537.jpg" alt="" class="" data-echo="http://f1.howzhi.com/default/2016/03-14/1045288563e3244992.jpg"> </a> </div>
            <div class="course-info">
              <div class="title text-o-show"> <a href="http://www.howzhi.com/course/13254/"></a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1637688/" data-card-url="/user/1637688/card/show" data-user-id="1637688"> <img class="avatar-ss " src="images/11480117880b049054.jpg" alt="luemery"></a>
                <div class="price free pull-right"><span>￥:128</span></div>
              </div>
            </div>
          </li>
<%--           </c:forEach></if> --%>
          <!--------------------------------------------------------------------------------------------------------------------------->
        </ul>
      </div>
      <div class="hot-tag wall">
        <h2> 热门标签 </h2>
        <ul class="text-center clearfix text-sm">
          <li><a href="">摄影基础</a></li>
          <li><a href="">摄影历史</a></li>
          <li><a href="">摄影布光</a></li>
          <li><a href="">考试认证</a></li>
          <li><a href="">游泳</a></li>
          <li><a href="">滑雪</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- 尾部 ---------------------------------------------------------------- -->
<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>