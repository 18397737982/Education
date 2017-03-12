<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html class="">
<head>
<base href="/superEducation/"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<title>首页--好知网</title>
<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
<link rel="stylesheet" media="screen" href="css/es-icon.css">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet"  type="text/css" href="css/swiper.css">
<link rel="stylesheet"  type="text/css" href="css/bootstrap.css">
<script src="js/jquery-2.1.4.min.js"></script> 
<script src="js/swiper-3.3.1.min.js"></script> 
<script src="js/bootstrap.js"></script> 
<script src="js/top.js"></script>
<script src="js/goeasy.js"></script>
<script type="text/javascript" src="js/mainpage.js"></script>
<script type="text/javascript" src="js/json2.js"></script>
	<style type="text/css">
		.form-group{
			margin-top:14px;
			margin-left:30px;
			
		}
		.test{
		}
	</style>
	<script type="text/javascript">
	$(function(){
		
		
	});
	</script>
</head>
<body class="index">
<script type="text/javascript">
 	
/*精品课程*/
 
	
	if("${users}"!=""){
			var userid="${users.user_id}";
		    var goEasy = new GoEasy({
			appkey: "4ea18126-cec1-4cce-8569-ad314901d30d"});
			
			    goEasy.subscribe({
			             channel: "eb367e1f-1b28-4ce2-a32d-cd5347de7816",
			             onMessage: function (message) {
				var reg=/&quot;/g;
				//console.info();
				content=message.content.replace(reg,"\"");
				content=eval('(' + content + ')');
				for(var i=0;i<content.data.list.length;i++){
					if(userid==content.data.list[i]){
						$("#SendMsg").css("display","block");
						if(content.code==1){
							if($("#inform").html()!=""){
								$("#inform").html(parseInt($("#inform"))+1);
							}else{
								$("#inform").html(1);
							}
							
						}else if(content.code==2){
							if($("#letter").html()!=""){
								$("#letter").html(parseInt($("#letter"))+1);
							}else{
								$("#letter").html(1);
							}
						}else if(content.code==3){
							if($("#answer").html()!=""){
								$("#answer").html(parseInt($("#answer"))+1);
							}else{
								$("#answer").html(1);
							}
						}else if(content.code==4){
							if($("#questionAndAnswer").html()!=""){
								$("#questionAndAnswer").html(parseInt($("#questionAndAnswer"))+1);
							}else{
								$("#questionAndAnswer").html(1);
							}
						}
					}
				}
			             }})
	}
	
		
	
</script>

<c:set value="${users}" var="us"/>
<c:if test="${empty us }">
	<jsp:include page="topf.jsp"></jsp:include>
</c:if>
<c:if test="${us!=null }">
	<jsp:include page="topb.jsp"></jsp:include>
</c:if>

 <section class="es-poster hz-poster">

<div class="swiper-container">
  <div class="swiper-wrapper" style="width: 9443px; height: 420px; transform: translate3d(-6745px, 0px, 0px); transition-duration: 0.3s;">
    <div class="swiper-slide swiper-slide-duplicate" style="background-size:cover;background-image:url(images/login_bg.jpg); width: 1349px; height: 420px;"> <a href="http://www.howzhi.com/daren/" target="_blank" title="入驻好知，分享知识"></a> </div>
    <div class="swiper-slide" style="background-size:cover;background-image:url(images/block_picture_1470381191.jpg); width: 1349px; height: 420px;"> <a href="http://www.howzhi.com/courses" target="_blank" title="发现好知"></a> </div>
    <div class="swiper-slide" style="background-size:cover;background-image:url(images/block_picture_1468976358.jpg); width: 1349px; height: 420px;"> <a href="http://www.howzhi.com/camera/play?ref=banner" target="_blank" title="好知网模拟相机，没有相机也能学摄影"></a> </div>
    <!-- test-->
    <div class="swiper-slide" style="background-size:cover;background-image:url(images/Chrysanthemum.jpg); width: 1349px; height: 420px;"> <a href="http://www.howzhi.com/course/13886/" target="_blank" title="零基础学习淘宝摄影 服装摄影 产品摄影"></a> </div>
    <div class="swiper-slide" style="background-size:cover;background-image:url(images/block_picture_1471493110.jpg); width: 1349px; height: 420px;"> <a href="http://www.howzhi.com/daren/" target="_blank" title="入驻好知，分享知识"></a> </div>
    <div class="swiper-slide swiper-slide-duplicate" style="background-size:cover;background-image:url(images/Desert.jpg); width: 1349px; height: 420px;"> <a href="http://www.howzhi.com/courses" target="_blank" title="发现好知"></a> </div>
  </div>
<!--   <div class="swiper-pagination"></div>
 -->  
  <!-- 如果需要导航按钮 -->
  <div class="swiper-button-prev" id="head-swiper-pre" onclick="test()"></div>
  <div class="swiper-button-next" id="head-swiper-next" onclick="test()"></div>
  
  <!-- 如果需要滚动条 -->
 <div class="swiper-scrollbar"></div>
  
  <div class="swiper-pager">
	  <span class="swiper-pagination-switch swiper-visible-switch swiper-active-switch"></span>
	  <span class="swiper-pagination-switch"></span>
	  <span class="swiper-pagination-switch"></span>
	  <span class="swiper-pagination-switch"></span>
	 <!--  <span class="swiper-pagination-switch"></span> -->
  </div> 
  </div>
  
  <div class="hz-site hz-themes hidden-xs">
    <div class="container">
      <div class="site-data act">
        <div class="data">
          <p class="hz-line-left">现在</p>
          <div class="number">
            <strong>2622</strong>
            <p class="text">人在好知<br>学习课程 </p>
          </div>
        </div>
        <a href="http://www.howzhi.com/courses" class="text-center">
          立即学习
        </a>
      </div>
    </div>
</div>
</section> 
<div class="live-open-course index-sec">
  <div class="container">
    <h2> <strong>热门课程</strong><!--直播公开课--> 
    </h2>
    <div class="swiper-container" id="live-open-course">
      <div class="swiper-wrapper" id="hotCourse" style="width: 5700px; height: 315px; transform: translate3d(0px, 0px, 0px); transition-duration: 0s;">
        <div class="swiper-slide swiper-slide-visible swiper-slide-active" style="width: 1140px; height: 315px;">
          <div class="col-xs-6 "> <a href="http://www.howzhi.com/course/13491/"> <img src="images/1537597d52b3098671.jpg" alt="摄影基本功，你必须要理解的构图真谛！">
            <div class="show">
              <div class="live-title">
                <h3 class="text-center">摄影基本功，你必须要理解的构图真谛！</h3>
              </div>
              <p class="text-center clearfix"> <span>查看回放</span> </p>
            </div>
            <div class="layer">
              <p class="text-center"> <img class="avatar-sm" src="images/23524089f27f093063.jpg"> </p>
              <p class="text-center"> <strong>北京雅趣摄影 </strong> </p>
              <p class="subheading">构图是什么？构图是你摄影理念的具现手段。</p>
              <div class="info">
                <p>现在参加，<strong>2553</strong> 人已经加入课程</p>
                <p class="avatar"> <img src="images/1040171216f7363763.jpg" alt="胖的像个球"> <img src="images/160657195950956951.jpg" alt="T_Kay"> <img src="images/course.png" alt="响亮的名字6he"> <img src="images/course.png" alt="jianzhuzhe"> <img src="images/course.png" alt="0009567"> <img src="images/0939280434ea873389.jpg" alt="腾宇这个名字被占用"> <span>…</span> </p>
              </div>
            </div>
            </a> </div>
          <div class="col-xs-6 double"> <a href="http://www.howzhi.com/course/13577/"> <img src="images/150532c36ecc881009.jpg" alt="【已结束】室外人像用光指南">
            <div class="show">
              <div class="live-title">
                <h3 class="text-center">【已结束】室外人像用光指南</h3>
              </div>
              <p class="text-center clearfix"> <span>查看回放</span> </p>
            </div>
            <div class="layer">
              <p class="text-center"> <img class="avatar-sm" src="images/211518691059442668.jpg"> </p>
              <p class="text-center"> <strong>西安陈可人摄影培训 </strong> </p>
              <p class="subheading">摄影是光影的艺术。有光才有影，对光线的深入理解才能灵活自如的运用光线来作画。你觉得你对光线有足够的理解了吗？</p>
              <div class="info">
                <p>现在参加，<strong>1121</strong> 人已经加入课程</p>
                <p class="avatar"> <img src="images/course.png" alt="韵书1983"> <img src="images/124241116f54797136.jpeg" alt="杏雨"> <img src="images/course.png" alt="JohnnyRay88"> <img src="images/course.png" alt="Tumbleweed"> <img src="images/course.png" alt="xiaoxingxing666"> <img src="images/093247f79c9e647767.jpg" alt="學森先森"> <span>…</span> </p>
              </div>
            </div>
            </a> </div>
        </div>
        
        
        
        
      </div>
      <div class="swiper-button-prev carousel-control big"> ‹ </div>
      <div class="swiper-button-next carousel-control big"> › </div>
    </div>
    <p class="sec-more mtl mbs"><a class="btn" href="http://www.howzhi.com/channel/all?fliter%5Btype%5D=live&amp;orderBy%5B0%5D=publishedTime&amp;orderBy%5B1%5D=desc">更多 <i class="glyphicon glyphicon-chevron-right"></i></a></p>
  </div>
</div>



<!--这是精品课程-->
<div class="hzindex-course index-sec">
  <div class="container">
    <h2> <strong>精品课程</strong> </h2>
    <nav id="course-recommed">
      <ul class="clearfix">
        <li data-id="0" class="btn  btn-primary "> 精品推荐 </li>
        <li data-id="1" class="btn "> 摄影课堂 </li>
        <li data-id="2" class="btn "> 创意设计 </li>
        <li data-id="6" class="btn "> 兴趣爱好 </li>
        <li data-id="3" class="btn "> 声乐器乐 </li>
        <li data-id="4" class="btn "> 运动健身 </li>
        <li data-id="5" class="btn "> IT互联网 </li>
        <li data-id="7" class="btn"> 语言学习</li>
        <li data-id="8" class="btn"> 职场技能</li>
         
      </ul>
    </nav>
    <div class="index-course-list course">
      <div class="row clearfix act" id="course-commend4">
        <div class="col-sm-3 col-xs-12 ">
          <div class="course-item">
            <div class="course-img"> <a href="http://www.howzhi.com/course/13996/"> <img src="images/09395179cf7b631358.jpeg" alt="Fitime马甲线养成计划" class=""> </a> </div>
            <div class="course-info">
              <div class="title"> <a href="http://www.howzhi.com/course/13996/">Fitime马甲线养成计划</a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/91/" data-card-url="/user/91/card/show" data-user-id="91"> <img class="avatar-ss " src="images/02515170a7b9957485.jpg" alt="三尺青锋"> 三尺青锋 </a> <span class="daren-icon-t" title="达人"></span>
                <div class="price free pull-right"></div>
              </div>
            </div>
          </div>
          <div class="course-item">
            <div class="course-img"> <a href="http://www.howzhi.com/course/269/"> <img src="images/09113359ff66316435.jpg" alt="如何追女孩（把妹达人）" class=""> </a> </div>
            <div class="course-info">
              <div class="title"> <a href="http://www.howzhi.com/course/269/">如何追女孩（把妹达人）</a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/5296/" data-card-url="/user/5296/card/show" data-user-id="5296"> <img class="avatar-ss " src="images/103256878613838446.jpg" alt="坏男孩学院"> 坏男孩学院 </a> <span class="dapinpai-icon-t" title="达品牌"></span>
                <div class="price free pull-right"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3 col-xs-12 ">
          <div class="course-item">
            <div class="course-img"> <a href="http://www.howzhi.com/course/13996/"> <img src="images/09395179cf7b631358.jpeg" alt="Fitime马甲线养成计划" class=""> </a> </div>
            <div class="course-info">
              <div class="title"> <a href="http://www.howzhi.com/course/13996/">Fitime马甲线养成计划</a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/91/" data-card-url="/user/91/card/show" data-user-id="91"> <img class="avatar-ss " src="images/02515170a7b9957485.jpg" alt="三尺青锋"> 三尺青锋 </a> <span class="daren-icon-t" title="达人"></span>
                <div class="price free pull-right"></div>
              </div>
            </div>
          </div>
          <div class="course-item">
            <div class="course-img"> <a href="http://www.howzhi.com/course/269/"> <img src="images/09113359ff66316435.jpg" alt="如何追女孩（把妹达人）" class=""> </a> </div>
            <div class="course-info">
              <div class="title"> <a href="http://www.howzhi.com/course/269/">如何追女孩（把妹达人）</a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/5296/" data-card-url="/user/5296/card/show" data-user-id="5296"> <img class="avatar-ss " src="images/103256878613838446.jpg" alt="坏男孩学院"> 坏男孩学院 </a> <span class="dapinpai-icon-t" title="达品牌"></span>
                <div class="price free pull-right"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3 col-xs-12 ">
          <div class="course-item">
            <div class="course-img"> <a href="http://www.howzhi.com/course/13996/"> <img src="images/09395179cf7b631358.jpeg" alt="Fitime马甲线养成计划" class=""> </a> </div>
            <div class="course-info">
              <div class="title"> <a href="http://www.howzhi.com/course/13996/">Fitime马甲线养成计划</a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/91/" data-card-url="/user/91/card/show" data-user-id="91"> <img class="avatar-ss " src="images/02515170a7b9957485.jpg" alt="三尺青锋"> 三尺青锋 </a> <span class="daren-icon-t" title="达人"></span>
                <div class="price free pull-right"></div>
              </div>
            </div>
          </div>
          <div class="course-item">
            <div class="course-img"> <a href="http://www.howzhi.com/course/269/"> <img src="images/09113359ff66316435.jpg" alt="如何追女孩（把妹达人）" class=""> </a> </div>
            <div class="course-info">
              <div class="title"> <a href="http://www.howzhi.com/course/269/">如何追女孩（把妹达人）</a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/5296/" data-card-url="/user/5296/card/show" data-user-id="5296"> <img class="avatar-ss " src="images/103256878613838446.jpg" alt="坏男孩学院"> 坏男孩学院 </a> <span class="dapinpai-icon-t" title="达品牌"></span>
                <div class="price free pull-right"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-3 col-xs-12 ">
          <div class="course-item">
            <div class="course-img"> <a href="http://www.howzhi.com/course/13907/"> <img src="images/17160338a3cf386465.png" alt="衍纸画的制作" class=""> </a> </div>
            <div class="course-info">
              <div class="title"> <a href="http://www.howzhi.com/course/13907/">衍纸画的制作</a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/2332819/" data-card-url="/user/2332819/card/show" data-user-id="2332819"> <img class="avatar-ss " src="images/165648087343419947.jpg" alt="endlessnet"> endlessnet </a>
                <div class="price free pull-right"></div>
              </div>
            </div>
          </div>
          <div class="course-item">
            <div class="course-img"> <a href="http://www.howzhi.com/course/13876/"> <img src="images/1250466d462c594838.png" alt="【AE教程】motion v2 脚本全面解析" class=""> </a> </div>
            <div class="course-info">
              <div class="title"> <a href="http://www.howzhi.com/course/13876/">【AE教程】motion v2 脚本全面解析</a> </div>
              <div class="teacher text-o-show"> <a class=" js-user-card" href="http://www.howzhi.com/u/1958262/" data-card-url="/user/1958262/card/show" data-user-id="1958262"> <img class="avatar-ss " src="images/202412c1b54f150673.jpg" alt="MG动画自习室"> MG动画自习室 </a>
                <div class="price free pull-right"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <p class="sec-more"><a class="btn" href="http://www.howzhi.com/courses">更多 <i class="glyphicon glyphicon-chevron-right"></i></a></p>
  </div>
</div>
<div class="hzindex-classroom index-sec">



<!--班级推荐-->
  <div class="container">
    <h2> <strong>班级推荐</strong> </h2>
    <ul class="classroom-list row">
      <li class="col-md-3 col-xs-6">
        <div class="pic"> <a href="http://www.howzhi.com/classroom/11"> <img src="images/180720898ff5876915.jpg" alt="极致风光摄影高手班—后期修图调色" class="">
          <div class="layer">
            <ul>
              <li><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i><span>14</span> 人已加入学习</li>
              <li><i class="glyphicon glyphicon-book" style="color: rgb(255, 255, 255)"></i><span>34</span> 课时</li>
              <li><i class="glyphicon glyphicon-tag" style="color: rgb(255, 255, 255)"></i><span>0</span> 次作业 </li>
              <li><i class="glyphicon glyphicon-question-sign" style="color: rgb(255, 255, 255)"></i><span>24</span> 小时答疑</li>
            </ul>
          </div>
          <div class="classroom-tag hz-triangle"><span>班级</span></div>
          </a> </div>
        <div class="info">
          <h3> 极致风光摄影高手班—后期修图调色 </h3>
          <p> 进阶风光摄影后期教程，学习风光摄影独家秘笈。... </p>
          <a class="btn btn-primary" href="http://www.howzhi.com/classroom/11"> 立即加入 </a> </div>
      </li>
      <li class="col-md-3 col-xs-6">
        <div class="pic"> <a href="http://www.howzhi.com/classroom/10"> <img src="images/113139b0d161061610.jpg" alt="极致风光摄影进阶提高班" class="">
          <div class="layer">
            <ul>
              <li><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i><span>20</span> 人已加入学习</li>
              <li><i class="glyphicon glyphicon-book" style="color: rgb(255, 255, 255)"></i><span>44</span> 课时</li>
              <li><i class="glyphicon glyphicon-tag" style="color: rgb(255, 255, 255)"></i><span>7</span> 次作业 </li>
              <li><i class="glyphicon glyphicon-question-sign" style="color: rgb(255, 255, 255)"></i><span>24</span> 小时答疑</li>
            </ul>
          </div>
          <div class="classroom-tag hz-triangle"><span>班级</span></div>
          </a> </div>
        <div class="info">
          <h3> 极致风光摄影进阶提高班 </h3>
          <p> 华盖 500PX签约摄影师独家风光后期秘诀。从入门到提高，系统地学习前期拍摄技术... </p>
          <a class="btn btn-primary" href="http://www.howzhi.com/classroom/10"> 立即加入 </a> </div>
      </li>
      <li class="col-md-3 col-xs-6">
        <div class="pic"> <a href="http://www.howzhi.com/classroom/14"> <img src="images/10434959afa2686578.jpg" alt="Adobe Lightroom cc后期基础入门班 " class="">
          <div class="layer">
            <ul>
              <li><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i><span>78</span> 人已加入学习</li>
              <li><i class="glyphicon glyphicon-book" style="color: rgb(255, 255, 255)"></i><span>59</span> 课时</li>
              <li><i class="glyphicon glyphicon-tag" style="color: rgb(255, 255, 255)"></i><span>5</span> 次作业 </li>
              <li><i class="glyphicon glyphicon-question-sign" style="color: rgb(255, 255, 255)"></i><span>24</span> 小时答疑</li>
            </ul>
          </div>
          <div class="classroom-tag hz-triangle"><span>班级</span></div>
          </a> </div>
        <div class="info">
          <h3> Adobe Lightroom cc后期基础入门班 </h3>
          <p> 每天10min 轻松入门 </p>
          <a class="btn btn-primary" href="http://www.howzhi.com/classroom/14"> 立即加入 </a> </div>
      </li>
      <li class="col-md-3 col-xs-6">
        <div class="pic"> <a href="http://www.howzhi.com/classroom/17"> <img src="images/144103f87e49421080.jpg" alt="牛牛人像摄影班" class="">
          <div class="layer">
            <ul>
              <li><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i><span>43</span> 人已加入学习</li>
              <li><i class="glyphicon glyphicon-book" style="color: rgb(255, 255, 255)"></i><span>30</span> 课时</li>
              <li><i class="glyphicon glyphicon-tag" style="color: rgb(255, 255, 255)"></i><span>0</span> 次作业 </li>
              <li><i class="glyphicon glyphicon-question-sign" style="color: rgb(255, 255, 255)"></i><span>24</span> 小时答疑</li>
            </ul>
          </div>
          <div class="classroom-tag hz-triangle"><span>班级</span></div>
          </a> </div>
        <div class="info">
          <h3> 牛牛人像摄影班 </h3>
          <p> 人像摄影可以是怎样的？它可以是日系清新人像：清淡的色调，简单的画面，不经意间的构... </p>
          <a class="btn btn-primary" href="http://www.howzhi.com/classroom/17"> 立即加入 </a> </div>
      </li>
    </ul>
    
    
    
    <!---->
    <div class="dynamic">
      <h4 class="hz-line-left">班级动态</h4>
      <div  class="swiper-container" style="height: 56px;">
        <div id="dynamic-swiper" class="swiper-wrapper row clearfix" style="width: 1098px; height: 280px; transform: translate3d(0px, -224px, 0px); transition-duration: 0.5s;">
                 
          <div class="swiper-slide" style="width: 1098px; height: 56px;">
            <div class="col-md-6"> <a href="http://www.howzhi.com/u/1546008/"> <img class="avatar-ss" src="images/avatar.png" alt="微梦星光"> </a>
              <p> <a href="http://www.howzhi.com/u/1546008/"> 微梦星光</a> 加入了<a class="active" href="http://www.howzhi.com/classroom/17">牛牛人像摄影班</a> </p>
              <span class="time">14小时前</span> </div>
            <div class="col-md-6"> <a href="http://www.howzhi.com/u/2343829/"> <img class="avatar-ss" src="images/avatar.png" alt="mathildaf"> </a>
              <p> <a href="http://www.howzhi.com/u/2343829/"> mathildaf</a> 加入了<a class="active" href="http://www.howzhi.com/classroom/17">牛牛人像摄影班</a> </p>
              <span class="time">21小时前</span> </div>
          </div>
          <div class="swiper-slide" style="width: 1098px; height: 56px;">
            <div class="col-md-6"> <a href="http://www.howzhi.com/u/2358995/"> <img class="avatar-ss" src="images/102315394ad6717866.jpg" alt="恋之念"> </a>
              <p> <a href="http://www.howzhi.com/u/2358995/"> 恋之念</a> 加入了<a class="active" href="http://www.howzhi.com/classroom/11">极致风光摄影高手班—后期修图调色</a> </p>
              <span class="time">1小时前</span> </div>
            <div class="col-md-6"> <a href="http://www.howzhi.com/u/2358987/"> <img class="avatar-ss" src="images/100254eaad48380375.jpg" alt="仗剑画江湖"> </a>
              <p> <a href="http://www.howzhi.com/u/2358987/"> 仗剑画江湖</a> 加入了<a class="active" href="http://www.howzhi.com/classroom/6">互联网营销入门班</a> </p>
              <span class="time">2小时前</span> </div>
          </div>
          
        </div>
      </div>
    </div>
    <p class="sec-more"><a class="btn" href="http://www.howzhi.com/classroom/poster/list">更多 <i class="glyphicon glyphicon-chevron-right"></i></a></p>
  </div>
</div>


<div class="hz-thread index-sec">
  <div class="container">
    <h2> <strong>话题精选</strong> </h2>
    <div id="thread-carousel" class="carousel slide">
      <div class="carousel-inner" role="listbox">
        <ul class="item active clearfix">
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/group/13/discuss/265691?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1470382807.jpg" alt="如何品鉴单品咖啡">
            <div class="bottom">
              <h3> 如何品鉴单品咖啡 </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>卷卷</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2016-08-05</span> </p>
            </div>
            </a> </li>
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/group/2/discuss/265677?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1463035061.jpg" alt="一个自由摄影师的五年创业之路：从苦逼到牛逼——专访牛牛很忙">
            <div class="bottom">
              <h3> 一个自由摄影师的五年创业之路：从苦逼到牛逼——专访牛牛很忙 </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>曹佳佳的熊猫眼</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2016-05-12</span> </p>
            </div>
            </a> </li>
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/classroom/16/thread/458?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1462331991.jpg" alt="看薇薇安·麦尔是如何观察这个世界的">
            <div class="bottom">
              <h3> 看薇薇安·麦尔是如何观察这个世界的 </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>猪脚好咸</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2016-05-04</span> </p>
            </div>
            </a> </li>
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/classroom/17/thread/444?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1461318544.jpg" alt="【作品欣赏】青山裕企的那些少女们">
            <div class="bottom">
              <h3> 【作品欣赏】青山裕企的那些少女们 </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>猪脚好咸</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2016-04-22</span> </p>
            </div>
            </a> </li>
        </ul>
        <ul class="item clearfix">
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/group/2/discuss/265661?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1460985002.jpg" alt="好知第一期人像外拍回顾">
            <div class="bottom">
              <h3> 好知第一期人像外拍回顾 </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>乱流</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2015-01-27</span> </p>
            </div>
            </a> </li>
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/classroom/16/thread/421?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1459997660.jpg" alt="单灯人像光位介绍【摄影入门班】">
            <div class="bottom">
              <h3> 单灯人像光位介绍【摄影入门班】 </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>猪脚好咸</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2016-04-7</span> </p>
            </div>
            </a> </li>
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/classroom/16/thread/373?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1459997954.jpg" alt=" 清明时节雨纷纷【摄影入门班】">
            <div class="bottom">
              <h3> 清明时节雨纷纷【摄影入门班】 </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>猪脚好咸</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2016-04-07</span> </p>
            </div>
            </a> </li>
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/group/2/discuss/265646?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1459158668.jpg" alt="谁都拦不住：一个IT老爸玩飞了摄影">
            <div class="bottom">
              <h3> 谁都拦不住：一个IT老爸玩飞了摄影 </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>曹佳佳的熊猫眼</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2016-03-28</span> </p>
            </div>
            </a> </li>
        </ul>
        <ul class="item clearfix">
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/group/2/discuss/265641?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1458715823.jpg" alt="为孩子拥有更美好的回忆而自学摄影的母亲 Lisa Holloway">
            <div class="bottom">
              <h3> 为孩子拥有更美好的回忆而自学摄影的母亲 Lisa Holloway </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>曹佳佳的熊猫眼</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2015-03-23</span> </p>
            </div>
            </a> </li>
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/group/2/discuss/265640?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1458715534.jpg" alt="SamAlive 温暧的自然光人像欣赏">
            <div class="bottom">
              <h3> SamAlive 温暧的自然光人像欣赏 </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>曹佳佳的熊猫眼</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2016-3-23</span> </p>
            </div>
            </a> </li>
          <li class="col-sm-6 col-md-3 col-xs-6"> <a href="http://www.howzhi.com/group/2/discuss/265626?static=home_chosen_threads" target="_blank"> <img src="images/block_picture_1457857515.jpg" alt="Llightroom预设资源分享（第一期）">
            <div class="bottom">
              <h3> Llightroom预设资源分享（第一期） </h3>
              <p class="clearfix hidden-xs"> <span class="text-o-show"><i class="glyphicon glyphicon-user" style="color: rgb(255, 255, 255)"></i>乱流</span> <span class="text-right"><i class="glyphicon glyphicon-time" style="color: rgb(255, 255, 255)"></i>2015-03-13</span> </p>
            </div>
            </a> </li>
        </ul>
      </div>
      <a class="carousel-control left" href="http://www.howzhi.com/#thread-carousel" data-slide="prev" date-interval="false" date-wrap="false">‹</a> <a class="carousel-control right" href="http://www.howzhi.com/#thread-carousel" data-slide="next" date-interval="false" date-wrap="false">›</a> </div>
    <p class="sec-more"><a class="btn" href="http://www.howzhi.com/groups/explore">更多 <i class="glyphicon glyphicon-chevron-right"></i></a></p>
  </div>
</div>
<div class="hz-hottag index-sec">
  <div class="container">
    <h2> <strong>热门标签</strong> </h2>
    <div class="hottag-list clearfix">
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/Lightroom">
        <p> <img src="images/tag1.jpg" alt="Lightroom"> </p>
        <p> Lightroom<br>
          <span>12门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/Photoshop">
        <p> <img src="images/tag2.jpg" alt="Photoshop"> </p>
        <p> Photoshop<br>
          <span>100门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/After%20Effect">
        <p> <img src="images/tag3.jpg" alt="After Effect"> </p>
        <p> After Effect<br>
          <span>15门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/%E5%90%89%E4%BB%96">
        <p> <img src="images/tag4.jpg" alt="吉他"> </p>
        <p> 吉他<br>
          <span>72门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/%E4%BA%BA%E5%83%8F%E6%91%84%E5%BD%B1">
        <p> <img src="images/tag5.jpg" alt="人像摄影"> </p>
        <p> 人像摄影<br>
          <span>52门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/%E4%BA%A7%E5%93%81%E6%91%84%E5%BD%B1">
        <p> <img src="images/tag6.jpg" alt="产品摄影"> </p>
        <p> 产品摄影<br>
          <span>30门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/%E6%91%84%E5%BD%B1%E5%B8%83%E5%85%89">
        <p> <img src="images/tag7.jpg" alt="摄影布光"> </p>
        <p> 摄影布光<br>
          <span>26门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/3d%E5%88%B6%E4%BD%9C">
        <p> <img src="images/tag8.jpg" alt="3d制作"> </p>
        <p> 3d制作<br>
          <span>64门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/%E9%A3%8E%E5%85%89%E6%91%84%E5%BD%B1">
        <p> <img src="images/tag9.jpg" alt="风光摄影"> </p>
        <p> 风光摄影<br>
          <span>41门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/%E5%8A%9E%E5%85%AC%E8%BD%AF%E4%BB%B6">
        <p> <img src="images/tag10.jpg" alt="办公软件"> </p>
        <p> 办公软件<br>
          <span>31门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/%E6%89%8B%E5%B7%A5%E5%88%B6%E4%BD%9C">
        <p> <img src="images/tag11.jpg" alt="手工制作"> </p>
        <p> 手工制作<br>
          <span>32门课程</span> </p>
        </a> </div>
      <div class="col-md-2 col-sm-3 col-xs-4"> <a href="http://www.howzhi.com/tag/%E9%9F%B3%E9%A2%91%E5%88%B6%E4%BD%9C">
        <p> <img src="images/tag12.jpg" alt="音频制作"> </p>
        <p> 音频制作<br>
          <span>12门课程</span> </p>
        </a> </div>
    </div>
  </div>
</div>
<div class="hz-daren index-sec ">
  <div class="container">
    <h2> <strong>认证达人</strong> </h2>
    <div id="daren-carousel" class="carousel slide">
      <div class="carousel-inner" role="listbox">
        <div class="item daren-list active clearfix">
          <div class="col-xs-4">
            <div class="list-item clearfix">
              <div class="avatar"> <a class="js-user-card" href="http://www.howzhi.com/u/1952297/" data-card-url="/user/1952297/card/show" data-user-id="1952297"> <img src="images/1041437271c7312764.jpg" alt="吕小川"> </a> </div>
              <div class="main">
                <p class="text-o-show"><a class="active" href="http://www.howzhi.com/u/1952297/">吕小川</a></p>
                <p class="icon"><span><i class="glyphicon glyphicon-i"></i>人像摄影师</span></p>
                <p class="text-o-show">著名创作型摄影师，研习油画多年，其摄影作...</p>
              </div>
            </div>
          </div>
          <div class="col-xs-4">
            <div class="list-item clearfix">
              <div class="avatar"> <a class="js-user-card" href="http://www.howzhi.com/u/1882233/" data-card-url="/user/1882233/card/show" data-user-id="1882233"> <img src="images/101557dab659509843.jpg" alt="双向摄影学院"> </a> </div>
              <div class="main">
                <p class="text-o-show"><a class="active" href="http://www.howzhi.com/u/1882233/">双向摄影学院</a></p>
                <p class="icon"><span><i class="glyphicon glyphicon-i"></i>摄影培训机构</span></p>
                <p class="text-o-show">双向摄影学院，创始人闭眼缄默为华盖及50...</p>
              </div>
            </div>
          </div>
          <div class="col-xs-4">
            <div class="list-item clearfix">
              <div class="avatar"> <a class="js-user-card" href="http://www.howzhi.com/u/1314678/" data-card-url="/user/1314678/card/show" data-user-id="1314678"> <img src="images/212720870038390860.jpg" alt="一个小九"> </a> </div>
              <div class="main">
                <p class="text-o-show"><a class="active" href="http://www.howzhi.com/u/1314678/">一个小九</a></p>
                <p class="icon"><span><i class="glyphicon glyphicon-i"></i>摄影师</span></p>
                <p class="text-o-show">九度阳光摄影工作室的小九，制作和分享了一...</p>
              </div>
            </div>
          </div>
        </div>
        <div class="item daren-list clearfix">
          <div class="col-xs-4">
            <div class="list-item clearfix">
              <div class="avatar"> <a class="js-user-card" href="http://www.howzhi.com/u/1350071/" data-card-url="/user/1350071/card/show" data-user-id="1350071"> <img src="images/131500461328712756.jpg" alt="凝创摄影艺术中心"> </a> </div>
              <div class="main">
                <p class="text-o-show"><a class="active" href="http://www.howzhi.com/u/1350071/">凝创摄影艺术中心</a></p>
                <p class="icon"><span><i class="glyphicon glyphicon-i"></i>摄影培训机构</span></p>
                <p class="text-o-show">北京凝创摄影设计艺术中心...</p>
              </div>
            </div>
          </div>
          <div class="col-xs-4">
            <div class="list-item clearfix">
              <div class="avatar"> <a class="js-user-card" href="http://www.howzhi.com/u/1259977/" data-card-url="/user/1259977/card/show" data-user-id="1259977"> <img src="images/154444ca7768014596.jpg" alt="亮剑"> </a> </div>
              <div class="main">
                <p class="text-o-show"><a class="active" href="http://www.howzhi.com/u/1259977/">亮剑</a></p>
                <p class="icon"><span><i class="glyphicon glyphicon-i"></i>摄影师</span></p>
                <p class="text-o-show">产品摄影师，分享了多个产品摄影教程。...</p>
              </div>
            </div>
          </div>
          <div class="col-xs-4">
            <div class="list-item clearfix">
              <div class="avatar"> <a class="js-user-card" href="http://www.howzhi.com/u/1809358/" data-card-url="/user/1809358/card/show" data-user-id="1809358"> <img src="images/140953137501327372.jpg" alt="钟百迪"> </a> </div>
              <div class="main">
                <p class="text-o-show"><a class="active" href="http://www.howzhi.com/u/1809358/">钟百迪</a></p>
                <p class="icon"><span><i class="glyphicon glyphicon-i"></i>摄影师</span></p>
                <p class="text-o-show">橄榄图摄影课堂负责人，摄影导师，从事摄影...</p>
              </div>
            </div>
          </div>
        </div>
        <div class="item daren-list clearfix">
          <div class="col-xs-4">
            <div class="list-item clearfix">
              <div class="avatar"> <a class="js-user-card" href="http://www.howzhi.com/u/187/" data-card-url="/user/187/card/show" data-user-id="187"> <img src="images/145733d2af26635228.jpg" alt="乱流"> </a> </div>
              <div class="main">
                <p class="text-o-show"><a class="active" href="http://www.howzhi.com/u/187/">乱流</a></p>
                <p class="icon"><span><i class="glyphicon glyphicon-i"></i>摄影达人</span></p>
                <p class="text-o-show">摄影达人，分享了众多摄影教程。...</p>
              </div>
            </div>
          </div>
          <div class="col-xs-4">
            <div class="list-item clearfix">
              <div class="avatar"> <a class="js-user-card" href="http://www.howzhi.com/u/1891203/" data-card-url="/user/1891203/card/show" data-user-id="1891203"> <img src="images/2126422334ba526511.jpg" alt="多尔音乐学院"> </a> </div>
              <div class="main">
                <p class="text-o-show"><a class="active" href="http://www.howzhi.com/u/1891203/">多尔音乐学院</a></p>
                <p class="icon"><span><i class="glyphicon glyphicon-i"></i>在线音乐学院</span></p>
                <p class="text-o-show">多尔音乐学院，国内首家在线音乐学院...</p>
              </div>
            </div>
          </div>
          <div class="col-xs-4">
            <div class="list-item clearfix">
              <div class="avatar"> <a class="js-user-card" href="http://www.howzhi.com/u/1934995/" data-card-url="/user/1934995/card/show" data-user-id="1934995"> <img src="images/192144844d33464517.jpg" alt="Chaos云"> </a> </div>
              <div class="main">
                <p class="text-o-show"><a class="active" href="http://www.howzhi.com/u/1934995/">Chaos云</a></p>
                <p class="icon"><span><i class="glyphicon glyphicon-i"></i>风光摄影师</span></p>
                <p class="text-o-show">教育学出身的摄影师，擅长风光摄影，摄影后...</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- 轮播（Carousel）导航 --> 
      <a class="carousel-control left" href="http://www.howzhi.com/#daren-carousel" data-slide="prev" date-interval="false" date-wrap="false">‹</a> <a class="carousel-control right" href="http://www.howzhi.com/#daren-carousel" data-slide="next" date-interval="false" date-wrap="false">›</a> </div>
    <p class="sec-more"><a class="btn" href="http://www.howzhi.com/daren/?static=daren_settled">申请入驻 <i class="glyphicon glyphicon-chevron-right"></i></a> <a class="btn mlm" href="http://www.howzhi.com/teacher">查看更多 <i class="glyphicon glyphicon-chevron-right"></i></a></p>
  </div>
</div>

<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-md-4 "> <a href="http://www.howzhi.com/"><img src="images/foot-logo.png" alt="好知，知识分享新社区"></a> </div>
      <div class="col-md-4 about"> <span><a href="http://www.howzhi.com/info/about">关于我们</a></span>| <span><a href="http://www.howzhi.com/join/us" target="_blank">加入我们</a></span>| <span><a href="http://www.howzhi.com/daren/" target="_blank">合作申请</a></span>| <span><a href="http://www.howzhi.com/group/feedback">意见反馈</a></span><br>
        <a class="con" href="http://www.miibeian.gov.cn/" target="_blank"> 浙ICP备13006852号-3 </a> </div>
      <div class="col-md-4"> 关注我们： <a href="http://weibo.com/howzhicom"><i class="glyphicon glyphicon-weibo"></i></a> <a class="icon-sns"><i class="glyphicon glyphicon-weixin"></i>
        <div class="sns-popover" style="background:url(&quot;/assets/img/howzhi/weichat.png?2.6.17.2.3&quot;)"> </div>
        </a> <a href="http://user.qzone.qq.com/2485597828/"><i class="glyphicon glyphicon-qq"></i></a> <a href="http://site.douban.com/124522/"><i class="glyphicon glyphicon-gongnengyedouban"></i></a> </div>
    </div>
  </div>
</footer>
<div class="friendlinks">
  <div class="container">
    <div class="content"> <font>友情链接:</font> <a href="http://www.edusoho.com/" target="_blank" class="white">EduSoho开源网络课堂</a> <span>|</span> <a href="http://www.qiqiuyu.com/" target="_blank" class="white">气球鱼学院</a> <span>|</span> <a href="http://hao.360.cn/" target="_blank" class="white">360安全网址导航</a> <span>|</span> <a href="http://www.hao123.com/" target="_blank" class="white">hao123</a> <span>|</span> <a href="http://www.lvse.com/" target="_blank" class="white">绿色网</a> <span>|</span> <a href="http://www.chinaz.com/" target="_blank" class="white">站长之家</a> <span>|</span> <a href="http://www.xker.com/" target="_blank" class="white">新客网</a> <span>|</span> <a href="http://www.talang100.com/" target="_blank" class="white">踏浪100</a> <span>|</span> <a href="http://www.maiziedu.com/" target="_blank" class="white">麦子学院</a> <br>
    </div>
    Powered by <a href="http://www.edusoho.com/" target="_blank">EduSoho v6.17.2</a> ©2014-2016 <a class="mlm" href="http://www.howzhi.com/" target="_blank">好知网</a> </div>
</div>

<section class="serch-enginne-course visible-lg" role="alert"> </section>
<div id="login-modal" class="modal " data-url="/login/ajax"></div>
<div id="modal" class="modal" tabindex="-1"></div>
<div id="upload-image-modal" class="modal" tabindex="-1" aria-hidden="true" style="display: none;"></div>
<ul class="fixed-bar">
  
  <li class="hz-feedback"> <a class="fixed-bar-icon" href="http://www.howzhi.com/feedback/user/list"> <i class="glyphicon glyphicon-question-sign "></i> </a> <a href="http://www.howzhi.com/feedback/user/list?feedurl=http://www.howzhi.com/" target="_blank" class="js-feedback fixed-bar-text"> 问题反馈 </a> </li>
  <li class="go-top" style="display: none;"> <a class="fixed-bar-icon" href="javascript:;"> <i class="glyphicon glyphicon-keyboardarrowup"></i> </a> <a class="fixed-bar-text" href="javascript:;"> 回到顶部 </a> </li>
</ul>

<script>        
		  var mySwiper = new Swiper ('.swiper-container', {
			
			loop: true,
			autoplay : 3000,
			speed:300,
			// 如果需要分页器
			pagination: '.swiper-pagination',
			
			// 如果需要前进后退按钮
			nextButton: '.swiper-button-next',
			prevButton: '.swiper-button-prev',
			
			// 如果需要滚动条
			scrollbar: '.swiper-scrollbar',
			autoplayDisableOnInteraction : false,
			observer:true,//修改swiper自己或子元素时，自动初始化swiper
		    observeParents:true,//修改swiper的父元素时，自动初始化swiper
		  })        
  	</script>
</body>
</html>


