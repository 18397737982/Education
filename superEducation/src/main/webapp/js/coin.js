//账户中心的js
$(function() {
	$("#zhanghu")[0].style.display = "block";
	$("#dingdan")[0].style.display = "none";
	$(".list-group-item a").bind("click", function() {
		var str = this.innerText;
		if (str.trim() == "我的账户"){
			$("#zhanghu")[0].style.display = "block";
			$("#dingdan")[0].style.display = "none";
			
		}else if(str.trim() == "我的订单"){
			$("#dingdan")[0].style.display = "block";
			$("#zhanghu")[0].style.display = "none";
		}else{
			$("#zhanghu")[0].style.display = "none";
			$("#dingdan")[0].style.display = "none";
		}
	});
});






