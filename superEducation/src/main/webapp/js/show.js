//学习中心的js
$(function(){
	$("#more-dropdown").bind("mousemove",function(){
		$("#dropdown-menu")[0].style.display="none";
	});
	
	//点击签到
	$("#tocheckin").bind("click",function(){
		$("#sign-no")[0].style.display="none";
		$("#sign-in")[0].style.display="block";
	});
	
	//学习中心，在学，点击已学完
	$("#learned").bind("click",function(){
		$("#learning")[0].setAttribute("class","");
		$("#studying")[0].style.display="none";
		$("#classroom")[0].setAttribute("class","");
		$("#studyroom")[0].style.display="none";
		$("#learned")[0].setAttribute("class","active");
		$("#studied")[0].style.display="block";
		
	});
	
	//学习中心，在学，点击学习中
	$("#learning").bind("click",function(){
		$("#learned")[0].setAttribute("class","");
		$("#studied")[0].style.display="none";
		$("#classroom")[0].setAttribute("class","");
		$("#studyroom")[0].style.display="none";
		$("#learning")[0].setAttribute("class","active");
		$("#studying")[0].style.display="block";
	});
	
	//学习中心，在学，点击班级
	$("#classroom").bind("click",function(){
		$("#learned")[0].setAttribute("class","");
		$("#studied")[0].style.display="none";
		$("#learning")[0].setAttribute("class","");
		$("#studying")[0].style.display="none";
		$("#classroom")[0].setAttribute("class","active");
		$("#studyroom")[0].style.display="block";
	});
	
	//学习中心首页，点击学习动态
	$("#studyactive").bind("click",function(){
		$("#friendactive")[0].setAttribute("class","");
		$("#friend")[0].style.display="none";
		$("#studyactive")[0].setAttribute("class","active");
		$("#studentactive")[0].style.display="block";
	});
	
	//学习中心首页，点击好友动态
	$("#friendactive").bind("click",function(){
		$("#studyactive")[0].setAttribute("class","");
		$("#studentactive")[0].style.display="none";
		$("#friendactive")[0].setAttribute("class","active");
		$("#friend")[0].style.display="block";
	});
	
	//学习中心,在教，点击已发布
	$("#teach-published").bind("click",function(){
		$("#teach-auditing")[0].setAttribute("class","");
		$("#auditing")[0].style.display="none";
		
		$("#teach-unpublished")[0].setAttribute("class","");
		$("#unpublished")[0].style.display="none";
		
		$("#teach-classroom")[0].setAttribute("class","");
		$("#teachroom")[0].style.display="none";
		
		$("#teach-published")[0].setAttribute("class","active");
		$("#published")[0].style.display="block";
	});
	
	//学习中心,在教，点击已审核
	$("#teach-auditing").bind("click",function(){
		$("#teach-published")[0].setAttribute("class","");
		$("#published")[0].style.display="none";
		
		$("#teach-unpublished")[0].setAttribute("class","");
		$("#unpublished")[0].style.display="none";
		
		$("#teach-classroom")[0].setAttribute("class","");
		$("#teachroom")[0].style.display="none";
		
		$("#teach-auditing")[0].setAttribute("class","active");
		$("#auditing")[0].style.display="block";
	});
	
	//学习中心,在教，点击未发布
	$("#teach-unpublished").bind("click",function(){
		$("#teach-published")[0].setAttribute("class","");
		$("#published")[0].style.display="none";
		
		$("#teach-auditing")[0].setAttribute("class","");
		$("#auditing")[0].style.display="none";
		
		$("#teach-classroom")[0].setAttribute("class","");
		$("#teachroom")[0].style.display="none";
		
		$("#teach-unpublished")[0].setAttribute("class","active");
		$("#unpublished")[0].style.display="block";
	});
	
	//学习中心,在教，点击班级
	$("#teach-classroom").bind("click",function(){
		$("#teach-published")[0].setAttribute("class","");
		$("#published")[0].style.display="none";
		
		$("#teach-auditing")[0].setAttribute("class","");
		$("#auditing")[0].style.display="none";
		
		$("#teach-unpublished")[0].setAttribute("class","");
		$("#unpublished")[0].style.display="none";
		
		$("#teach-classroom")[0].setAttribute("class","active");
		$("#teachroom")[0].style.display="block";
	});
});

