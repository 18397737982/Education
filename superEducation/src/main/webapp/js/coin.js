//账户中心的js
$(function() {
	
	$("#zhanghu")[0].style.display = "block";
	$("#dingdan")[0].style.display = "none";
	
	$.post("userInfo/selectYue.action", {"_method" : "POST",user_id :user_id},function(data){
		if(data!=null ){
			document.getElementById("yue").value=data.balance;
		}else{
			document.getElementById("yue").value="0.00";
			}
	}); 
	

	$(".list-group-item a").bind("click", function() {
		var str = this.innerText;
		if (str.trim() == "我的账户"){
			$("#zhanghu")[0].style.display = "block";
			$("#dingdan")[0].style.display = "none";	
			$.post("userInfo/selectYue.action", {"_method" : "POST",user_id :user_id},function(data){
				if(data!=null ){
					document.getElementById("yue").value=data.balance;
				}else{
					document.getElementById("yue").value="0.00";
					}
			}); 	
			
		}else if(str.trim() == "充值中心"){
			$("#dingdan")[0].style.display = "block";
			$("#zhanghu")[0].style.display = "none";
		}else{
			$("#zhanghu")[0].style.display = "none";
			$("#dingdan")[0].style.display = "none";
		}
	});
});
function chongzhi(){
	var money=$("#chongzhi").val();
	var payment=$("#formcontrol").val();
	$.post("account/addbalance.action", {"_method" : "POST",money :money,payment:payment},function(data){
		if(data>0){
			alert("充值成功....");
			location.reload();
			$("#chongzhi").val("");
		}else{
			alert("充值是失败....");
		}
	}); 	
}




