	//全局变量：
/*获取当前的路径*/
var pathName = window.document.location.pathname;
/* 通过字符串截取 获取到项目名 */
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
var a =[
		"",
		"/user_po/user_center",
		"/user_po/user_myResume",
		"/user_po/user_postDelivery",
		"/user_po/user_jobCollection",
		"",
		"",
		"/user_po/user_shieldedEnterprise",
		"/user_po/user_accountSecurity",
		];

$(function() {
	changeDiv();
	changeContentLeftCss();
	if($("#Users").val()==null){
		alert("没有登录，点击确定去登陆");
		window.location.replace(projectName+"/user_po/user_positionMain.html");
	}
});

/* 点击更改div */
function changeDiv() {

	$(".titleHead>ul li:first-child").click(
			function() {
				$(".ones").show();
				$(".twos").hide();
				$(".threes").hide();
				$(".PromptMessage p").html("去完善简历  即可为您推荐职位");
				$(".titleHead > ul li:nth-child(3) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(2) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(1) div").css("border-bottom",
						"3px solid #E84626");
				$(".titleHead ul li:first-child").css("color", "#E84626");
				$(".titleHead ul li:nth-child(2)").css("color", "#999999");
				$(".titleHead ul li:nth-child(3)").css("color", "#999999")
			});
	$(".titleHead>ul li:nth-child(2)").click(
			function() {
				$(".ones").hide();
				$(".twos").show();
				$(".threes").hide();
				$(".PromptMessage p").html("您没有申请任何职位");
				$(".titleHead > ul li:nth-child(1) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(3) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(2) div").css("border-bottom",
						"3px solid #E84626");
				$(".titleHead ul li:first-child").css("color", "#999999");
				$(".titleHead ul li:nth-child(2)").css("color", "#E84626");
				$(".titleHead ul li:nth-child(3)").css("color", "#999999")
			});
	$(".titleHead>ul li:nth-child(3)").click(
			function() {
				$(".ones").hide();
				$(".twos").hide();
				$(".threes").show();
				$(".PromptMessage p").html("没有任何企业查看过您！ 去完善简历");
				$(".titleHead > ul li:nth-child(1) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(2) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(3) div").css("border-bottom",
						"3px solid #E84626");
				$(".titleHead ul li:first-child").css("color", "#999999");
				$(".titleHead ul li:nth-child(2)").css("color", "#999999");
				$(".titleHead ul li:nth-child(3)").css("color", "#E84626")
			});
}

/* 点击更改css样式 */
function changeContentLeftCss() {
	$('.aa').on('click', 'li', function(e) {
		$('.aa li').removeClass('bb');
		$(this).addClass('bb');
		url =a[$(".bb").val()];
		window.location.replace($("#PageContext").val()+url);
	});
}
