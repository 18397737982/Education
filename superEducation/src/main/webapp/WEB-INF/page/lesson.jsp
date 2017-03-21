  <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"  %>
<!DOCTYPE html>
<html class="">
<style type="text/css" id="30192272684"></style>
<head>
<base href="/superEducation/"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
  <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta name="baidu-site-verification" content="XN2OVFQdUg">
  <title>  
    课时管理 - 好知网-重拾学习乐趣-Powered By Howzhi  </title>
  <meta name="keywords" content="免费教程 在线教育  在线学习  知识分享 教程 视频教程 视频教学  网络教学  自学教程 摄影教程 折纸教程 编程教程  电脑教程  健身教程  ps教程  公开课">
  <meta name="description" content="好知网是一个综合性在线学习平台。这里有大量的在线课程，课程涵盖计算机知识，企业管理，摄影，photoshop，职业技能，运动、外语、美食，时尚，手工艺，公开课，职业资格考试等。">
  <meta content="38555264a5afeb76b541fe43d1a271cbd6337c60" name="csrf-token">
  <meta content="1" name="is-login">
  <meta content="1" name="is-open"> 
  <link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
  <link href="css/bootstrap.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/howzhi.css">
 <style>.cke{visibility:hidden;}</style>
 <!-- <link rel="stylesheet" type="text/css" href="css/editor.css"> -->
 <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
 <script type="text/javascript" src="js/addlesson.js"></script>
 <script type="text/javascript" src="js/top.js"></script>
 <script type="text/javascript" src="ckeditor/ckeditor.js"></script>  
    <script type="text/javascript" src="ckeditor/config.js"></script>  
   	<script type="text/javascript">
   		var myckeditor;
	    	$(document).ready(function(){  
	    	 myckeditor=CKEDITOR.replace('myckeditor'); 
	    });  
	</script>  
 <style type="text/css">
.webuploader-container {
  position: relative;
}
.webuploader-element-invisible {
  position: absolute !important;
  clip: rect(1px 1px 1px 1px); /* IE6, IE7 */
    clip: rect(1px,1px,1px,1px);
}
.webuploader-pick {
  position: relative;
  display: inline-block;
  cursor: pointer;
  background: #fff;
  padding: 5px 10px;
  color: #333;
  text-align: center;
  border-radius: 3px;
  border: 1px solid #ccc;
  overflow: hidden;
}
.webuploader-pick-hover {
  background: #e6e6e6;
  border-color: #adadad;
}

.webuploader-pick-disable {
  opacity: 0.6;
  pointer-events:none;
}

.balloon-uploader {
  border: 1px solid #ddd;
  border-radius: 4px;
}

.balloon-uploader-heading {
  background-color: #f5f5f5;
  color: #333;
  padding: 10px 15px;
  border-bottom: 1px solid #ddd;
  display: none;
}

.balloon-uploader-footer {
  background-color: #f5f5f5;
  color: #333;
  padding: 10px 15px;
  border-top: 1px solid #ddd;
  text-align: right;
}

.balloon-filelist {
  width: 100%;
}

.balloon-filelist-heading {
  position: relative;
  font-weight: bold;
  border-bottom: 2px solid #ddd;
}

.balloon-uploader-body {
  position: relative;

}

.balloon-filelist .file-name {
  margin-right: 250px;
  padding: 8px;
}

.balloon-filelist .file-size {
  position: absolute;
  top: 0px;
  right: 150px;
  width: 100px;
  text-align: right;
  padding: 8px;
}

.balloon-filelist .file-status {
  position: absolute;
  top: 0px;
  right: 0px;
  width: 120px;
  text-align: left;
  padding: 8px;

}

.balloon-filelist ul {
  list-style: none;
  margin: 0;
  padding: 0;
  min-height: 100px;
  max-height: 300px;
  overflow-y: scroll;
}

.balloon-filelist ul li {
  position: relative;
  border-bottom: 1px solid #ddd;
}

.balloon-dnd {
  visibility: hidden;
}

.balloon-uploader-none .balloon-uploader-footer,
.balloon-uploader-none .balloon-uploader-body {
  visibility: hidden;
}

.balloon-uploader-none .balloon-dnd {
  visibility: visible;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  text-align: center;
  vertical-align: middle;
}

.balloon-nofile {
  position: absolute;
  top: 40px;
  left: 0;
  right: 0;
  bottom: 0;
  line-height: 100px;
  text-align: center;
  color: #999;
}

.balloon-uploader .file-pick-btn {
  display: inline-block;
}

.balloon-uploader .start-upload-btn {
  position: relative;
  display: inline-block;
  cursor: pointer;
  background: #5bc0de;
  padding: 5px 10px;
  color: #fff;
  text-align: center;
  border-radius: 3px;
  border: 1px solid #46b8da;
  overflow: hidden;
}

.balloon-uploader .start-upload-btn:hover {
  background: #31b0d5;
  border-color: #269abc;
}

.balloon-filelist .file-progress {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}

.balloon-filelist .file-progress-bar {
  background: rgba(59, 181, 33, 0.18);
  float: left;
  height: 100%;
}
</style>

 </head>
  <body id="index" class="index">
    <c:set value="${users}" var="us"/>
	<c:if test="${empty us }">
	<jsp:include page="topf.jsp"></jsp:include>
	</c:if>
	<c:if test="${us!=null }">
	<jsp:include page="topb.jsp"></jsp:include>
	</c:if>
    
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
         		<a href="page/joinproject.jsp" id="cnameid"></a>
        	</c:when>
        	<c:otherwise>
        		<a href="page/joinproject.jsp" id="cnameid">${ctitle}</a>
        	</c:otherwise>
		 </c:choose>
        </h1>
  		<p class="tipinfo t-gray fsn">
            <i class="hz-icon icon-info t-infowarn"></i>
            请完善基本信息、课程图片和课时后，再<font class="t-infowarn">申请发布</font>课程。<a href="javascript:;" class="active" id="js-info">新手引导</a>
          </p>
                       
    </div>
     <div class="action"> 
      <a class="btn com radius mts" href="http://www.howzhi.com/course/14061/?previewAs=member" target="_blank" style="width:83px;">返回课程</a>
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
        <li data-step="1" data-intro="点击&#39;基本信息&#39;，填写完整课程信息，并保存。打绿色勾表示该项完成" data-position="right">
         <c:choose>
         	<c:when test="${picturestatus==1}">
         		<span id="istyle"><img src='images/2016-09-10_184215.png'></span>
        	</c:when>
        	<c:otherwise>
        		<span id="istyle">1</span>
        	</c:otherwise>
		 </c:choose>           
         <a title="请输入标题" href="course/manage.action">基本信息</a>
        </li>
        <li data-step="2" data-intro="上传课程图片" data-position="right">
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
        
        <li class="active" data-step="3" data-intro="添加课时，完成最后信息的填写" data-position="right">
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
	<h1>课时管理<span>COURSE MANAGE</span>
		<div class="pull-right">

			<button class="btn btn-primary" id="lesson-create-btn" 
			data-toggle="modal" data-target="#modal" data-backdrop="static" 
			data-keyboard="false">
			<i class="glyphicon glyphicon-plus"></i> 课时</button>
            
	
		</div>
	</h1>

	
	 <div id="emptylession" class="empty">当前没有课时,不能发布！</div>

	 
	<div class="panel-body">
		<ul class="lesson-list sortable-list" id="course-item-list" data-sort-url="/course/14061/manage/lesson/sort">
	<!-------------------------------------课时要拼接的内容 ---------------------------------- -->
		    <!-- <li class="item-lesson clearfix" id="lesson-89862" data-file-id="0" data-lesson-type="text" style="word-break: break-all;" >
				<div class="item-line"></div>
				<div class="item-content">
	  <i class="fa fa-file-photo-o text-success"></i>课时 <span class="number">1</span>：	www					
			</div>

	<div class="item-actions">
  	<a class="btn btn-link" data-toggle="modal" data-target="#modal" data-backdrop="static" data-keyboard="false"
			 data-url="/course/14687/manage/lesson/89862/edit">
			 <span class="glyphicon glyphicon-edit prs"></span>编辑</a>
			<a class="btn btn-link" href="/course/14687/lesson/89862" target="_blank"><span class="glyphicon glyphicon-eye-open prs"></span>预览</a>
			<span class="dropdown"><a href="javascript:;" class="delete-lesson-btn btn-danger btn" data-url="/course/14687/manage/lesson/89862/delete"><span class="glyphicon glyphicon-trash prs"></span>删除</a>
			</span>
		</div>
	</li> -->
<!-------------------------------------课时要拼接的内容 ---------------------------------- -->				
		</ul>
	</div>
</div>

    </div>
  </div>
</section> 
<input type="hidden" value="draft" id="course_status">    
      </div>
    
<!-- Piwik -->
<noscript>&lt;p&gt;&lt;img src="//piwik.edusoho.cn/piwik.php?idsite=3" style="border:0;" alt="" /&gt;&lt;/p&gt;</noscript>
<!-- End Piwik Code -->
  
    
       <section class="serch-enginne-course visible-lg" role="alert">
      </section>
        <div id="login-modal" class="modal is-login" data-url="/login/ajax"></div>
    <div id="modal" class="modal" tabindex="-1" aria-hidden="true" style="display: none;"><div class="modal-dialog  modal-lg">
  <div id="lessioncontent" class="modal-content">
    <div class="modal-header">
                   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title">  添加课时</h4>
           </div>
    <div class="modal-body">
<form id="course-lesson-form" data-course-id="14061" class="form-horizontal lesson-form lesson-form-video" method="post" data-parentid="" novalidate="novalidate" data-widget-cid="widget-96">

  <div id="form-group" class="form-group">
    <div class="col-md-2 control-label"><label>类型</label></div>
    <div class="col-md-9 controls">
      <div class="radios">
                    <label><input id="addvideo"type="radio" name="type" value="0" checked="checked"> 视频</label>
                    <label><input id="addtext" type="radio" name="type" value="1" > 图文</label>
              </div>
    </div>
  </div>

  <div class="form-group for-text-type for-video-type for-audio-type for-ppt-type for-document-type for-flash-type">
    <div class="col-md-2 control-label"><label for="lesson-title-field">标题</label></div>
    <div class="col-md-9 controls">
      <div class="row">
        <div class="col-md-10">
          <input id="lesson-title-field0" class="form-control" type="text" name="title" value="" data-widget-cid="widget-98" data-explain="">
        </div>
        <div class="col-md-2">
         <!--  <div class="checkbox">
            <label><input type="checkbox" name="free" value="1"> 免费课时</label>
          </div> -->
        </div>
      </div>
    <div class="help-block" style="display:none;"></div></div>
  </div>
  <!-- ---------------图文界面所用到的div------------------------>
  	<div id="textarea"class="textarea01">
    <div class="col-md-2 control-label"><label for="lesson-title-field">标题</label></div>
    <div class="col-md-9 controls">
      <div class="row">
        <div class="col-md-10">
          <input id="lesson-title-field1" class="form-control" type="text" name="title" value="" data-widget-cid="widget-98" data-explain="">
        </div>
        <div class="col-md-2">
          <!-- <div class="checkbox">
            <label><input type="checkbox" name="free" value="1"> 免费课时</label>
          </div> -->
        </div>
      </div>
    <div class="help-block" style="display:none;"></div></div>
  </div>
  
 	<div id="jieshao01">
    <div class="col-md-2 control-label"><label for="lesson-summary-field" style="margin-top:30px;">简介</label></div>
    
    <div class="col-md-9 controls" style="margin-top:30px;">
    	<textarea class="form-control" id="lesson-summary-field1" name="summary"></textarea>
    </div>
  </div>
<!-- ---------------图文------------------------>



  <div class="form-group for-text-type for-video-type for-audio-type for-ppt-type for-document-type for-flash-type">
    <div class="col-md-2 control-label"><label for="lesson-summary-field">简介</label></div>
    <div class="col-md-9 controls">
    	<textarea class="form-control" id="lesson-summary-field0" name="summary"></textarea>
    </div>
  </div>
     <!-- ---------------------------------图文的编辑器位置--------------------- -->
   <div  id="form-group0011" class="form-group for-text-type">

    <div class="col-md-2 control-label" style="margin-top:20px;margin-left:5px;"><label for="lesson-content-field" class="style1">内容</label></div>
    <div class="col-md-9 controls">

      <div style="width:560px;height: 300px;float:right;margin-right: 75px;margin-top:20px;"> <textarea name="myckeditor"></textarea></div>
    </div>
  </div>

  <div class="form-group for-video-type for-audio-type for-ppt-type for-document-type for-flash-type ">
    <div id="shipin02" class="col-md-2 control-label for-video-type"><label>视频</label></div>&nbsp;&nbsp;
    <!-- <input id="clickradio01" type="radio" name="radio" checked="checked">&nbsp;<label>网络视频</label>&nbsp;&nbsp;
    <input id="clickradio02" type="radio" name="radio">&nbsp;<label>本地视频</label> -->
    <div class="col-md-2 control-label for-audio-type"><label>音频</label></div>
    <div class="col-md-2 control-label for-ppt-type"><label>PPT</label></div>
    <div class="col-md-2 control-label for-document-type"><label>文档</label></div>
    <div class="col-md-2 control-label for-flash-type"><label>Flash</label></div>
    <div class="col-md-9 controls">

<div id="media-choosers">

  <div class="file-chooser" id="video-chooser" style="" data-targettype="courselesson" data-targetid="14061" data-widget-cid="widget-81">
    <div class="file-chooser-bar" style="display:none;">
      <span data-role="placeholder"></span>
      <button class="btn btn-link btn-sm" type="button" data-role="trigger"><i class="glyphicon glyphicon-edit"></i> 编辑</button>
      <div class="alert alert-warning" data-role="waiting-tip" style="display:none;">正在转换视频格式，转换需要一定的时间，期间将不能播放该视频。<br>转换完成后将以站内消息通知您。</div>
    </div>

    <div class="file-chooser-main">
      <ul class="nav nav-pills nav-pills-sm mbs file-chooser-tabs hidden">
        <li class="active"><a class="file-chooser-uploader-tab" href="http://www.howzhi.com/ugc/course/14061/manage/lesson#video-chooser-import-pane" data-toggle="tab">导入网络视频</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane" id="video-chooser-upload-pane">

          <div class="file-chooser-uploader">
            <div class="video-quality-switcher" data-widget-cid="widget-80">
  <div>
    <label>视频转码类型：</label>
    <span class="quality-switcher-bar">
      <span class="text-muted quality-switcher-name">(高品画质 / 标准音质)</span> <a href="javascript:;" class="edit-btn text-info"><span class="glyphicon glyphicon-cog"></span> 设置</a>
    </span>
  </div>

  <div class="quality-switcher-control">
    <div class="video-quality radios">
      画质：
        <label><input type="radio" name="video_quality" value="low"> 流畅 <span class="text-muted">(适合PPT讲解)</span></label><label><input type="radio" name="video_quality" value="normal"> 标准 <span class="text-muted">(适合屏幕录制、摄像头拍摄)</span></label><label><input type="radio" name="video_quality" value="high" checked="checked"> 精细 <span class="text-muted">(适合动态电影)</span></label>
    </div>

    <div class="audio-quality radios">
      音质：
        <label><input type="radio" name="video_audio_quality" value="low"> 流畅</label><label><input type="radio" name="video_audio_quality" value="normal" checked="checked"> 标准</label><label><input type="radio" name="video_audio_quality" value="high"> 高品</label>
    </div>

    <div class="quality-actions">
      <a href="javascript:;" class="btn btn-default btn-sm confrim-btn">确定</a>
      <a href="javascript:;" class="btn btn-link btn-sm cancel-btn">取消</a>
    </div>
  </div>
</div>


   <div class="balloon-uploader" data-init-url="/uploader/init?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-finish-url="/uploader/finished?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-upload-auth-url="/uploader/auth?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-accept="{&quot;extensions&quot;:[&quot;mp4&quot;,&quot;avi&quot;,&quot;flv&quot;,&quot;f4v&quot;,&quot;mpg&quot;,&quot;wmv&quot;,&quot;mov&quot;,&quot;vob&quot;,&quot;rmvb&quot;,&quot;mkv&quot;,&quot;m4v&quot;],&quot;mimeTypes&quot;:[&quot;video\/*&quot;]}" data-process="auto" data-widget-cid="widget-97"><div class="balloon-uploader-heading">上传文件</div><div class="balloon-uploader-body">  <div class="balloon-nofile">请将文件拖到这里，或点击添加文件按钮</div>  <div class="balloon-filelist">    <div class="balloon-filelist-heading">    <div class="file-name">文件名</div>    <div class="file-size">大小</div>    <div class="file-status">状态</div>  </div>  <ul></ul></div><div class="balloon-uploader-footer">  <div class="file-pick-btn"><div class=""><i class="glyphicon glyphicon-plus"></i> 添加文件</div></div></div></div></div>


            <div class="alert alert-info">
              <ul>
                                  <li>支持<strong>mp4, avi, flv, f4v, wmv, mov, rmvb, mkv, m4v</strong>格式的视频文件上传，文件大小不能超过<strong>2 GB</strong>。</li>
                  <li>支持<strong>断点续传</strong>（仅支持HTML5浏览器）。</li>
                  <li>视频将上传到<strong>云视频服务器</strong>，上传之后会对视频进行格式转换，转换过程需要一定的时间，在这个过程中视频将无法播放。</li>
                              </ul>
            </div>

          </div>

        </div>
        <div class="tab-pane" id="video-chooser-disk-pane">
            <div id="file-browser-video" data-role="file-browser" data-base-url="/uploadfile/browser?type=video" 
            data-default-url="/uploadfile/browser?type=video&amp;source=upload" data-my-sharing-contacts-url="/material/lib/recent/contacts" 
            data-empty="暂无视频文件，请先上传。" data-widget-cid="widget-82" class="file-browser">
            <div class="file-browser-filter mvs"> 				
            <div class="radios">资料来源：         			
            <label>
            <input type="radio" name="file-browser-video-source" value="upload" checked="">来自上传</label>
            <label><input type="radio" name="file-browser-video-source" value="shared">来自分享</label> 
            <label><input type="radio" name="file-browser-video-source" value="public">公共资料</label>
            <label><input type="radio" name="file-browser-video-source" value="collection">我的收藏</label></div> 	        	
            <div class="row"><div class="col-xs-5"> 			      	
            <span class="input-group"> 				    
            <input name="file-filter-by-name" class="form-control width-input-small file-filter-by-name" type="text" placeholder="输入视频标题关键字"> 				    
            <span class="input-group-btn"> 				      
            <button type="button" class="btn btn-default" data-loading-text="正在加载，请稍等">搜索</button></span></span></div> 			      
            <span class="file-filter-by-owner-container col-xs-5" style="display: none;"> 			      	
            <select name="file-filter-by-owner" class="file-filter-by-owner form-control width-input-large">
            <option value="">请选择老师</option></select></span></div></div>
              <div class="file-browser-list-container"></div>
            </div>
        </div>

        <div class="tab-pane" id="video-chooser-course-file">
            <div id="file-browser-video" data-role="course-file-browser" data-url="/uploadfile/browsers?targetType=courselesson&amp;targetId=14061&amp;type=video" data-empty="暂无视频文件，请先上传。" data-widget-cid="widget-83" class="file-browser">
            </div>
        </div>
		
		<span></span>
        <div class="tab-pane active" id="video-chooser-import-pane">
         <div class="input-group">
            <div id="pathOrContetn01" title="错误提示:" style="height:34px;"
            data-container="body" data-toggle="popover" data-placement="bottom" data-content="该视频网络地址不可用!"><input id="pathOrContetn" class="form-control" type="text" placeholder="支持优酷、土豆、腾讯、网易公开课的视频页面地址导入" data-role="import-url" class="btn btn-success" title="温馨提示:"
            data-container="body" data-toggle="popover" data-placement="bottom" data-content="该视频网络地址可用!"></div>
            <span class="input-group-btn">
              <button type="button" class="btn btn-default" data-role="import" data-url="/course/14061/manage/media/import" data-loading-text="正在导入，请稍等" onclick="inport()">导入</button>
            </span>
          </div>
        </div>.
      </div>
    </div>

  </div>


  <div class="file-chooser" id="audio-chooser" style="display:none;" data-targettype="courselesson" data-targetid="14061" data-widget-cid="widget-84">
    <div class="file-chooser-bar" style="display:none;">
      <span data-role="placeholder"></span>
      <button class="btn btn-link btn-sm" type="button" data-role="trigger"><i class="glyphicon glyphicon-edit"></i> 编辑</button>
    </div>

    <div class="file-chooser-main">
      <ul class="nav nav-pills nav-pills-sm mbs file-chooser-tabs">
        <li><a class="file-chooser-uploader-tab" href="http://www.howzhi.com/ugc/course/14061/manage/lesson#audio-chooser-upload-pane" data-toggle="tab">上传音频</a></li>
        <li><a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#audio-chooser-disk-pane" data-toggle="tab">
              从资料库中选择
        </a></li>

        <li>
          <a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#audio-chooser-course-file" data-toggle="tab">
            从课程文件中选择
          </a>
        </li>

      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="audio-chooser-upload-pane">

          <div class="file-chooser-uploader">
                        <div class="balloon-uploader" data-init-url="/uploader/init?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-finish-url="/uploader/finished?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-upload-auth-url="/uploader/auth?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-accept="{&quot;extensions&quot;:[&quot;mp3&quot;],&quot;mimeTypes&quot;:[&quot;audio\/*&quot;]}" data-process="auto">
            </div>

            <div class="alert alert-info">
              <ul>
                <li>支持<strong>mp3</strong>格式的音频文件上传，且文件大小不能超过<strong>
                                  500M
                                </strong>。</li>
                                  <li>支持<strong>断点续传</strong>（仅支持HTML5浏览器）。</li>
                  <li>音频将上传到<strong>云服务器</strong></li>
                              </ul>
            </div>
          </div>

        </div>
        <div class="tab-pane" id="audio-chooser-disk-pane">
          <div id="file-browser-audio" data-role="file-browser" data-base-url="/uploadfile/browser?type=audio" data-default-url="/uploadfile/browser?type=audio&amp;source=upload" data-my-sharing-contacts-url="/material/lib/recent/contacts" data-empty="暂无音频文件，请先上传。" data-widget-cid="widget-85" class="file-browser"><div class="file-browser-filter mvs"> 				<div class="radios">资料来源：         			<label><input type="radio" name="file-browser-audio-source" value="upload" checked="">来自上传</label>         			<label><input type="radio" name="file-browser-audio-source" value="shared">来自分享</label>               <label><input type="radio" name="file-browser-audio-source" value="public">公共资料</label>               <label><input type="radio" name="file-browser-audio-source" value="collection">我的收藏</label>           </div> 	        	<div class="row">         			<div class="col-xs-5"> 			      	<span class="input-group"> 				    <input name="file-filter-by-name" class="form-control width-input-small file-filter-by-name" type="text" placeholder="输入视频标题关键字"> 				    <span class="input-group-btn"> 				      <button type="button" class="btn btn-default" data-loading-text="正在加载，请稍等">搜索</button> 				    </span> 				  </span>         			</div> 			      <span class="file-filter-by-owner-container col-xs-5" style="display: none;"> 			      	<select name="file-filter-by-owner" class="file-filter-by-owner form-control width-input-large"> 				    		<option value="">请选择老师</option> 				    </select> 			      </span> 			     </div>         		</div> 
              <div class="file-browser-list-container"></div>
          </div>
        </div>

        <div class="tab-pane" id="audio-chooser-course-file">
          <div id="file-browser-audio" data-role="course-file-browser" data-url="/uploadfile/browsers?targetType=courselesson&amp;targetId=14061&amp;type=audio" data-empty="暂无音频文件，请先上传。" data-widget-cid="widget-86" class="file-browser"></div>
        </div>

      </div>
    </div>

  </div>




  <div class="file-chooser" id="ppt-chooser" style="display:none;" data-params-url="/uploadfile/params?storage=cloud&amp;targetType=courselesson&amp;targetId=14061&amp;convertor=ppt&amp;lazyConvert=1" data-targettype="courselesson" data-targetid="14061" data-widget-cid="widget-87">
    <div class="file-chooser-bar" style="display:none;">
      <span data-role="placeholder"></span>
      <button class="btn btn-link btn-sm" type="button" data-role="trigger"><i class="glyphicon glyphicon-edit"></i> 编辑</button>
    </div>

    <div class="file-chooser-main">
      <ul class="nav nav-pills nav-pills-sm mbs file-chooser-tabs">
        <li><a class="file-chooser-uploader-tab" href="http://www.howzhi.com/ugc/course/14061/manage/lesson#ppt-chooser-upload-pane" data-toggle="tab">上传PPT</a></li>
        <li><a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#ppt-chooser-disk-pane" data-toggle="tab">
              从资料库中选择
        </a></li>

         <li>
          <a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#ppt-chooser-course-file" data-toggle="tab">
            从课程文件中选择
          </a>
        </li>

      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="ppt-chooser-upload-pane">

          <div class="file-chooser-uploader">
                        <div class="balloon-uploader" data-init-url="/uploader/init?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-finish-url="/uploader/finished?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-upload-auth-url="/uploader/auth?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-accept="{&quot;extensions&quot;:[&quot;ppt&quot;,&quot;pptx&quot;],&quot;mimeTypes&quot;:[&quot;application\/vnd.ms-powerpoint&quot;,&quot;application\/vnd.openxmlformats-officedocument.presentationml.presentation&quot;]}" data-process="auto">
            </div>

            <div class="alert alert-info">
              <ul>
                <li>支持<strong>ppt, pptx</strong>格式的PPT文件上传，且文件大小不能超过<strong>100 MB</strong>。</li>
                <li>PPT将上传到<strong>云服务器</strong></li>
              </ul>
            </div>
          </div>

        </div>
        <div class="tab-pane" id="ppt-chooser-disk-pane">
          <div id="file-browser-ppt" data-role="file-browser" data-base-url="/uploadfile/browser?type=ppt" data-default-url="/uploadfile/browser?type=ppt&amp;source=upload" data-my-sharing-contacts-url="/material/lib/recent/contacts" data-empty="暂无PPT文件，请先上传。" data-widget-cid="widget-88" class="file-browser"><div class="file-browser-filter mvs"> 				<div class="radios">资料来源：         			<label><input type="radio" name="file-browser-ppt-source" value="upload" checked="">来自上传</label>         			<label><input type="radio" name="file-browser-ppt-source" value="shared">来自分享</label>               <label><input type="radio" name="file-browser-ppt-source" value="public">公共资料</label>               <label><input type="radio" name="file-browser-ppt-source" value="collection">我的收藏</label>           </div> 	        	<div class="row">         			<div class="col-xs-5"> 			      	<span class="input-group"> 				    <input name="file-filter-by-name" class="form-control width-input-small file-filter-by-name" type="text" placeholder="输入视频标题关键字"> 				    <span class="input-group-btn"> 				      <button type="button" class="btn btn-default" data-loading-text="正在加载，请稍等">搜索</button> 				    </span> 				  </span>         			</div> 			      <span class="file-filter-by-owner-container col-xs-5" style="display: none;"> 			      	<select name="file-filter-by-owner" class="file-filter-by-owner form-control width-input-large"> 				    		<option value="">请选择老师</option> 				    </select> 			      </span> 			     </div>         		</div> 
            <div class="file-browser-list-container"></div>
          </div>
        </div>

        <div class="tab-pane" id="ppt-chooser-course-file">
            <div id="file-browser-ppt" data-role="course-file-browser" data-url="/uploadfile/browsers?targetType=courselesson&amp;targetId=14061&amp;type=ppt" data-empty="暂无PPT文件，请先上传。" data-widget-cid="widget-89" class="file-browser"></div>
        </div>

      </div>
    </div>

  </div>



 <div class="file-chooser" id="document-chooser" style="display:none;" data-params-url="/uploadfile/params?storage=cloud&amp;targetType=courselesson&amp;targetId=14061&amp;convertor=document" data-targettype="courselesson" data-targetid="14061" data-widget-cid="widget-90">
    <div class="file-chooser-bar" style="display:none;">
      <span data-role="placeholder"></span>
      <button class="btn btn-link btn-sm" type="button" data-role="trigger"><i class="glyphicon glyphicon-edit"></i> 编辑</button>
    </div>

    <div class="file-chooser-main">
      <ul class="nav nav-pills nav-pills-sm mbs file-chooser-tabs">
        <li><a class="file-chooser-uploader-tab" href="http://www.howzhi.com/ugc/course/14061/manage/lesson#document-chooser-upload-pane" data-toggle="tab">上传文档</a></li>
        <li><a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#document-chooser-disk-pane" data-toggle="tab">
              从资料库中选择
        </a></li>

         <li>
          <a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#document-chooser-course-file" data-toggle="tab">
            从课程文件中选择
          </a>
        </li>

      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="document-chooser-upload-pane">

          <div class="file-chooser-uploader">

                        <div class="balloon-uploader" data-init-url="/uploader/init?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-finish-url="/uploader/finished?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-upload-auth-url="/uploader/auth?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-accept="{&quot;extensions&quot;:[&quot;doc&quot;,&quot;docx&quot;,&quot;pdf&quot;],&quot;mimeTypes&quot;:[&quot;application\/msword&quot;,&quot;application\/vnd.openxmlformats-officedocument.wordprocessingml.document&quot;,&quot;application\/pdf&quot;]}" data-process="auto"></div>

            <div class="alert alert-info">
              <ul>
                <li>支持<strong>pdf,doc,docx</strong>格式的文档上传，且文件大小不能超过<strong>100 MB</strong>。</li>
                <li>文档将上传到<strong>云服务器</strong></li>
              </ul>
            </div>
          </div>

        </div>
        <div class="tab-pane" id="document-chooser-disk-pane">
          <div id="file-browser-document" data-role="file-browser" data-base-url="/uploadfile/browser?type=document" data-default-url="/uploadfile/browser?type=document&amp;source=upload" data-my-sharing-contacts-url="/material/lib/recent/contacts" data-empty="暂无文档，请先上传。" data-widget-cid="widget-91" class="file-browser"><div class="file-browser-filter mvs"> 				<div class="radios">资料来源：         			<label><input type="radio" name="file-browser-document-source" value="upload" checked="">来自上传</label>         			<label><input type="radio" name="file-browser-document-source" value="shared">来自分享</label>               <label><input type="radio" name="file-browser-document-source" value="public">公共资料</label>               <label><input type="radio" name="file-browser-document-source" value="collection">我的收藏</label>           </div> 	        	<div class="row">         			<div class="col-xs-5"> 			      	<span class="input-group"> 				    <input name="file-filter-by-name" class="form-control width-input-small file-filter-by-name" type="text" placeholder="输入视频标题关键字"> 				    <span class="input-group-btn"> 				      <button type="button" class="btn btn-default" data-loading-text="正在加载，请稍等">搜索</button> 				    </span> 				  </span>         			</div> 			      <span class="file-filter-by-owner-container col-xs-5" style="display: none;"> 			      	<select name="file-filter-by-owner" class="file-filter-by-owner form-control width-input-large"> 				    		<option value="">请选择老师</option> 				    </select> 			      </span> 			     </div>         		</div> 
            <div class="file-browser-list-container"></div>
          </div>
        </div>

        <div class="tab-pane" id="document-chooser-course-file">
            <div id="file-browser-document" data-role="course-file-browser" data-url="/uploadfile/browser?targetType=courselesson&amp;targetId=14061&amp;type=document" data-empty="暂无文档，请先上传。" data-widget-cid="widget-92" class="file-browser"></div>
        </div>

      </div>
    </div>

  </div>



   <div class="file-chooser" id="flash-chooser" style="display:none;" data-params-url="/uploadfile/params?storage=cloud&amp;targetType=courselesson&amp;targetId=14061&amp;convertor=" data-targettype="courselesson" data-targetid="14061" data-widget-cid="widget-93">
    <div class="file-chooser-bar" style="display:none;">
      <span data-role="placeholder"></span>
      <button class="btn btn-link btn-sm" type="button" data-role="trigger"><i class="glyphicon glyphicon-edit"></i> 编辑</button>
    </div>

    <div class="file-chooser-main">
      <ul class="nav nav-pills nav-pills-sm mbs file-chooser-tabs">
        <li><a class="file-chooser-uploader-tab" href="http://www.howzhi.com/ugc/course/14061/manage/lesson#flash-chooser-upload-pane" data-toggle="tab">上传Flash</a></li>
        <li><a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#flash-chooser-disk-pane" data-toggle="tab">
              从资料库中选择
        </a></li>

         <li>
          <a href="http://www.howzhi.com/ugc/course/14061/manage/lesson#flash-chooser-course-file" data-toggle="tab">
            从课程文件中选择
          </a>
        </li>

      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="flash-chooser-upload-pane">

          <div class="file-chooser-uploader">
                        <div class="balloon-uploader" data-init-url="/uploader/init?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-finish-url="/uploader/finished?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-upload-auth-url="/uploader/auth?token=MjM2MDg3NHxjb3Vyc2VsZXNzb258MTQwNjF8cHJpdmF0ZXwxNDcyNjMzNzk3fGIzOWEyYWNhMDAzYjhmZmY3MWY0ZGQxZWM3ZGJjYzQy" data-accept="{&quot;extensions&quot;:[&quot;swf&quot;],&quot;mimeTypes&quot;:[&quot;application\/x-shockwave-flash&quot;]}" data-process="auto"></div>


            <div class="alert alert-info">
              <ul>
                <li>支持<strong>swf</strong>格式的文件上传，且文件大小不能超过<strong>100 MB</strong>。</li>
                <li>Flash将上传到<strong>云服务器</strong></li>
              </ul>
            </div>
          </div>

        </div>
        <div class="tab-pane" id="flash-chooser-disk-pane">
          <div id="file-browser-flash" data-role="file-browser" data-base-url="/uploadfile/browser?type=flash" data-default-url="/uploadfile/browser?type=flash&amp;source=upload" data-my-sharing-contacts-url="/material/lib/recent/contacts" data-empty="暂无Flash，请先上传。" data-widget-cid="widget-94" class="file-browser"><div class="file-browser-filter mvs"> 				<div class="radios">资料来源：         			<label><input type="radio" name="file-browser-flash-source" value="upload" checked="checked">来自上传</label>         			<label><input type="radio" name="file-browser-flash-source" value="shared">来自分享</label>               <label><input type="radio" name="file-browser-flash-source" value="public">公共资料</label>               <label><input type="radio" name="file-browser-flash-source" value="collection">我的收藏</label>           </div> 	        	<div class="row">         			<div class="col-xs-5"> 			      	<span class="input-group"> 				    <input name="file-filter-by-name" class="form-control width-input-small file-filter-by-name" type="text" placeholder="输入视频标题关键字"> 				    <span class="input-group-btn"> 				      <button type="button" class="btn btn-default" data-loading-text="正在加载，请稍等">搜索</button> 				    </span> 				  </span>         			</div> 			      <span class="file-filter-by-owner-container col-xs-5" style="display: none;"> 			      	<select name="file-filter-by-owner" class="file-filter-by-owner form-control width-input-large"> 				    		<option value="">请选择老师</option> 				    </select> 			      </span> 			     </div>         		</div> 
            <div class="file-browser-list-container"></div>
          </div>
        </div>

        <div class="tab-pane" id="flash-chooser-course-file">
            <div id="file-browser-flash" data-role="course-file-browser" data-url="/uploadfile/browser?targetType=courselesson&amp;targetId=14061&amp;type=flash" data-empty="暂无Flash，请先上传。" data-widget-cid="widget-95" class="file-browser"></div>
        </div>

      </div>
    </div>

  </div>


</div>
        
      <input id="lesson-media-field" type="hidden" name="media" value="&quot;&quot;" data-widget-cid="widget-99" data-explain="">
    <div class="help-block" style="display:none;"></div></div>
  </div>
	<!-- 本地视频的上传 -->
	<input id="wangluovideo" type="file" style="width:100px;margin-left:150px;margin-bottom:20px;background:none">

  <input type="hidden" name="_csrf_token" value="38555264a5afeb76b541fe43d1a271cbd6337c60">


</form>

</div>
          <div class="modal-footer">    <button type="button" class="btn btn-link" data-dismiss="modal" id="cancel-btn">取消</button>
    <button id="course-lesson-btn" data-submiting-text="正在提交" type="submit" class="btn btn-primary" data-toggle="form-submit" data-target="#course-lesson-form" onclick="addlession()">添加</button>
</div>
          </div>
</div>
</div>
  <jsp:include page="footer.jsp"></jsp:include>  
  <script type="text/javascript">
  $(function(){
  		$.post("course/findAllcourseseq.action",function(data){
  			var str="";
  			if(data!=0){
  				for(var i=0;i<data.length;i++){
  					str+="<li class='item-lesson clearfix' id='lesson-89862' data-file-id='0' data-lesson-type='text' style='word-break: break-all;' >";
						str+="<div class='item-line'></div>";
						str+="<div class='item-content'>";
			  			str+="<i "+(data[i].type==1 ? 'class="glyphicon glyphicon-file" style="color: rgb(56, 193, 60);"':'class="glyphicon glyphicon-film" style="color: rgb(56, 193, 60);"')+"></i>课时 <span class='number' id='number'>"+data[i].courseseq+"</span>：	"+data[i].title+"";				
						str+="</div>";

						str+="<div class='item-actions'>";
		  				str+="<a class='btn btn-link' data-toggle='modal' data-target='#modal' data-backdrop='static' data-keyboard='false' data-url='/course/14687/manage/lesson/89862/edit'>";
					 	str+="<span class='glyphicon glyphicon-edit prs'></span>编辑</a>";
						str+="<a class='btn btn-link' href='/course/14687/lesson/89862' target='_blank'><span class='glyphicon glyphicon-eye-open prs'></span>预览</a>";
						str+="<span class='dropdown'><p onclick='deleteLesson()' class='delete-lesson-btn btn-danger btn' data-url='/course/14687/manage/lesson/89862/delete'><span class='glyphicon glyphicon-trash prs'></span>删除</p>";
						str+="</span>";
						str+="</div>";
						str+="</li>";
  				}
  				$("#course-item-list").html(str);
				$("#emptylession").hide();
  			}
  		},"json");
  	});  
  
  		function deleteLesson(){
  			var courseseq=$("#number").text();
  			$.post("course/deletelession.action",{courseseq:courseseq},
  					function(data){
  					if(data!=null){
  						window.location.reload();
  					}else{
  						alert("删除课时失败！")
  					}
  			},"json");                                               
  		}
  
  		function addlession(){
  			var type=$("input[name='type']:checked").val();
  			if(type==0){
  				var title=$("#lesson-title-field0").val();
  				var introduction=$("#lesson-summary-field0").val();
  				var content=$("#pathOrContetn").val();
  				
  			}else if(type==1){
  				var title=$("#lesson-title-field1").val();
  				var introduction=$("#lesson-summary-field1").val();
  				var content=myckeditor.document.getBody().getHtml();
  			}
  			if(title==null){
  				alert("温馨提示：标题不能为空！");
  			}else if(introduction==null){
  				alert("温馨提示：简介不能为空！");
  			}
  			//content:content,
  			$.post("course/addlession.action",{type:type,title:title,content:content,introduction:introduction},
  					function(data){
  					if(data!=null){
  						$("#sstyle").html("");
  						$("#emptylession").hide();
  						$('#modal').modal('hide');
  						alert(data.courseseq)
  						alert(data.title)
  						$("#pathOrContetn").popover('hide');
  						$("#pathOrContetn01").popover('hide');
  						window.location.reload();
  					}else{
  						alert("添加课时失败！")
  					}
  			},"json");
  		}
  		
  		
  		
  		function inport(){
  		var netaddress=$("#pathOrContetn").val();
  		var RegUrl = new RegExp();
  	    RegUrl.compile("^[A-Za-z]+://[A-Za-z0-9-_]+\\.[A-Za-z0-9-_%&\?\/.=]+$");
  		if(RegUrl.test(netaddress)){
  			$("#pathOrContetn").popover('show');
  			$("#pathOrContetn01").popover('hide');
  			$(function () { $('#pathOrContetn').on('show.bs.popover', function () {
  				$("#pathOrContetn").popover("delay:{hide: 5000 }");
  		    });
  		});
  		}else{
  			$("#pathOrContetn01").popover('show');
  			$("#pathOrContetn").popover('hide');
  			$(function () { $('#pathOrContetn01').on('show.bs.popover', function () {
  				$("#pathOrContetn01").popover("delay:{hide: 5000 }");
  		    });
  		});
  		}
  	}
  	function clicktrue(){
  		 if(confirm("您确定发布课程？")){
  	        location.href="toPerson.action";
  	     }
  	}
  </script>
</body>
</html>
