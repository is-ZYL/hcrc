//全局变量  判断是否可以提交 默认为false
var isPass = false;
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
var url;
$(function() {

	changeDiv();

	// 鼠标点击查看密码：
	lookPass($(".password1"), $(".pa1"));
	lookPass($(".password2"), $(".pa2"));
	lookPass($(".password3"), $(".pa3"));

	/* 修改密码 */
	$(".paButton").click(function() {
		if (Check() && isPass) {
			CheckSuccess();
		}

	})

	/* 退出登录 */
	$(".SignOut").click(function() {
		SignOut();
	})

	/* 点击跳转url */
	changeContentLeftCss();

	/* 6秒之后 判断user是否为空 空的就去登录 */
	/*
	 * setTimeout(() => { if($("#Users").val()==""){ alert("没有登录，点击确定去登陆");
	 * window.location.replace(projectName+"/user_po/user_positionMain.html"); } },
	 * 6000);
	 */
});

// 按下&释放 查看输入框中的内容
function lookPass(element, input) {

	element.mousedown(function() {
		$(element).css("background-position", "-31px -49px");
		$(input).attr("type", "text", "value", this.value);
	});

	element.mouseup(function() {
		$(element).css("background-position", "0px -49px");
		$(input).attr("type", "password", "value", this.value);
	});

	element.blur(function() {
		$(element).css("background-position", "0px -49px");
		$(input).attr("type", "password", "value", this.value);
	})
}

/* 判断密码是否合格 只能输入6-20个字母、数字、下划线 */
function isPasswd(s) {
	var patrn = /^(\w){6,20}$/;
	if (!patrn.exec(s))
		return false;
	return true
}

/* 判断手机号码是否合格 必须以数字开头，除数字外，可含有“-” */
function isMobil(s) {
	var patrn = /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
	if (!patrn.exec(s))
		return false
	return true
}

/* 检查输入框是否有数据 */
function Check() {
	if ($(".pa1").val() == "") {
		alert("原密码不能为空啊！");
		$(".pa1").focus();
		isPass = false;
		return false;
	}
	if ($(".pa2").val() == "") {
		alert("新密码不能为空啊！")
		$(".pa2").focus();
		isPass = false;
		return false;
	}

	if ($(".pa3").val() == "") {
		alert("新密码不能为空啊！")
		$(".pa3").focus();
		isPass = false;
		return false;
	}

	if ($(".pa2").val() != $(".pa3").val()) {
		alert("密码不一致");
		$(".pa2").focus();
		$(".pa3").focus();
		isPass = false;
		return false;
	}
	isPass = true;
	return true;
}

/* 前端检查都通过则执行此方法 */
function CheckSuccess() {
	$.ajax({
		type : "POST",
		url : projectName + "/user_po/updatePassword",
		data : {
			u_password_OLD : $(".pa1").val(),
			u_password : $(".pa2").val()
		},
		success : function(data) {
			if (data == "null") {
				alert("请登录再更改，点击确定进入首页登录");
				// 刷新当前页面
				window.location.replace(projectName
						+ "/user_po/user_positionMain.html");
			} else if (data == "no") {
				alert("原密码错误  无法更改");
			} else if (data == "No") {
				alert("修改密码失败");
			} else if (data == "ok") {
				alert("修改密码成功  点击确定进入首页");
				// 密码修改成功过后 需重新登录
				SignOut();
				window.location.replace(projectName
						+ "/user_po/user_positionMain.html");
			}
			// 登录成功刷新当前页面
			location.reload(true);
		}

	});
}

/* 退出登录 */
function SignOut() {
	$.ajax({
		type : "POST",
		url : projectName + "/user_po/signOut",
		success : function(data) {
			if (data == "ok") {
				window.location.replace(projectName
						+ "/user_po/user_positionMain.html");
			}
		}

	});
}

function changeDiv() {

	$(".content-right-head ul li:first-child").click(function() {
		$(".b").css("display", "none");
		$(".a").css("display", "block");
		$(".content-right-head ul li:first-child div").addClass("countSafe");
		$(".content-right-head ul li:last-child div").removeClass("countSafe");
	});
	$(".content-right-head ul li:last-child").click(
			function() {
				$(".a").css("display", "none");
				$(".b").css("display", "block");
				$(".content-right-head ul li:first-child div").removeClass(
						"countSafe");
				$(".content-right-head ul li:last-child div").addClass(
						"countSafe");
			});
}

/* 点击更改css样式 */
function changeContentLeftCss() {
	$('.aa').on('click', 'li', function(e) {
		$('.aa li').removeClass('bb');
		$(this).addClass('bb');
		url = a[$(".bb").val()];
		window.location.replace(projectName + url);
	});
}
