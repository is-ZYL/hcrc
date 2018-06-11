//全局变量：
/*获取当前的路径*/
var pathName = window.document.location.pathname;
/* 通过字符串截取 获取到项目名 */
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

// 点击切换职位div（推荐/最新/热门）
$(function() {
	$(".content-bottom-head ul li:first-child").click(function() {
		$(".content-bottom-pos").show();
		$(".eg2").hide();
		$(".eg3").hide();
		$(".content-bottom-head ul li:first-child").css("color", "#E84626");
		$(".content-bottom-head ul li:nth-child(2)").css("color", "#999999");
		$(".content-bottom-head ul li:nth-child(3)").css("color", "#999999")
	});
	$(".content-bottom-head ul li:nth-child(2)").click(function() {
		$(".content-bottom-pos").hide();
		$(".eg2").show();
		$(".eg3").hide();
		$(".content-bottom-head ul li:first-child").css("color", "#999999");
		$(".content-bottom-head ul li:nth-child(2)").css("color", "#E84626");
		$(".content-bottom-head ul li:nth-child(3)").css("color", "#999999")
	});
	$(".content-bottom-head ul li:nth-child(3)").click(function() {
		$(".content-bottom-pos").hide();
		$(".eg2").hide();
		$(".eg3").show();
		$(".content-bottom-head ul li:first-child").css("color", "#999999");
		$(".content-bottom-head ul li:nth-child(2)").css("color", "#999999");
		$(".content-bottom-head ul li:nth-child(3)").css("color", "#E84626")
	})

	// 点击忘记密码 判断是否处于登录状态
	$(".forgetPass").click(function() {
		if ($("#txtUser").val() == "") {
			alert("请先填写手机号");
		}else{
			window.location.replace(projectName+"/user_po/user_accountSecurity");
		}
	})

	// 职位tab切换
	$(".position_all_top ul >li").mouseenter(
			function() {
				$(this).addClass("active").siblings().removeClass("active");
				$(".position_all_bottom").eq($(this).index()).addClass(
						"selected").siblings().removeClass("selected");
			})

	// 点击注册按钮 进入注册页面（通过重定向的方式）
	$(".button input:first-child").click(function() {
		goTo("/user_reg");
	})

	/* 点击登录提交数据到后台验证 */
	$(".button input:last-child").click(function() {
		Login();
	});

	/* 判断是否记住账号 */
	var u_phone = $.cookie('u_phone');
	if (u_phone != null) {
		$("#txtUser").val(u_phone)
	}

	/* 点击退出 */
	$(".out").click(function() {
		SignOut();
	})

});

/* 跳转页面 */
function goTo(url) {
	window.location.replace(projectName + url);
}

/* 改变css文件 */
/* 1：新建标签 */
function createjscssfile(filename, filetype) {

	if (filetype == "js") {

		varfileref = document.createElement('script')

		fileref.setAttribute("type", "text/javascript")

		fileref.setAttribute("src", filename)

	}

	else if (filetype == "css") {

		var fileref = document.createElement("link")

		fileref.setAttribute("rel", "stylesheet")

		fileref.setAttribute("type", "text/css")

		fileref.setAttribute("href", filename)

	}

	return fileref

}
/* 2：执行处理 */
function replacejscssfile(oldfilename, newfilename, filetype) {

	var targetelement = (filetype == "js") ? "script"
			: (filetype == "css") ? "link" : "none"

	var targetattr = (filetype == "js") ? "src" : (filetype == "css") ? "href"
			: "none"

	var allsuspects = document.getElementsByTagName(targetelement)

	for (var i = allsuspects.length; i >= 0; i--) {

		if (allsuspects[i]
				&& allsuspects[i].getAttribute(targetattr) != null
				&& allsuspects[i].getAttribute(targetattr).indexOf(oldfilename) != -1) {

			var newelement = createjscssfile(newfilename, filetype)

			allsuspects[i].parentNode.replaceChild(newelement, allsuspects[i])

		}

	}

}

/* 执行登录 */
function Login() {
	if (Check()) {
		LoginSuccess();
	}
}
/* 检查输入框是否有数据 */
function Check() {
	if ($("#txtUser").val() == "") {
		alert("账号不能为空啊！");
		$("#txtUser").focus();
		return false;
	}
	if ($("#txtPassword").val() == "") {
		alert("要想登录  请认真的填写密码")
		$("#txtPassword").focus();
		return false;
	}
	return true;
}
/* 检查无误则进行登录操作 */
function LoginSuccess() {
	$.ajax({
		type : "POST",
		url : projectName + "/user_po/user_login",
		data : {
			u_phone : $("#txtUser").val(),
			u_password : $("#txtPassword").val(),
			IsCheckd : $(".checkbox").is(':checked')
		},
		/*
		 * beforeSend : function(xmlHttp) {
		 * xmlHttp.setRequestHeader("If-Modified-Since", "0");
		 * xmlHttp.setRequestHeader("Cache-Control", "no-cache"); },
		 */
		success : function(data) {
			if (data == null) {
				alert("账号或密码不正确，请重新输入！");
				// 刷新当前页面
				location.reload(true);
			} else {
				// 判断是否需要记住密码
				if ($(".checkbox").is(':checked')) {
					// 创建一个仅对 path 路径页面有效的 cookie ，cookie 的有效期为 7 天
					$.cookie("u_phone", data.u_phone, {
						path : "/hcrc/user_po/",
						expires : 7,// 不设置此选项时 关闭浏览器就自动清除
						secure : false
					});
				} else {
					/* 删除cookie信息 */
					$.cookie('u_phone', "", {
						expires : -1,
						path : "/hcrc/user_po/"
					});
				}

				$(".position_login > div").remove();
				replacejscssfile($("#PageContext").val()
						+ "/UserFile/css/main-position-content.css", $(
						"#PageContext").val()
						+ "/UserFile/css/main-position-content(login).css",
						"css");
				$(".position_login").html(
						"<div class='login_all userInfo'>" + " <div>"
								+ " <div class='header'><img src='"
								+ $("#PageContext").val()
								+ "/UserFile/img/companyLogo.jpg' ></div>"
								+ "<div>"
								+ "<p>"
								+ data.u_phone
								+ "</p>"
								+ "<p>"
								+ data.u_phone
								+ "</p>"
								+ "<p>"
								+ data.u_phone
								+ "</p>"
								+ "</div>"
								+ "</div>"
								+

								"<div>"
								+ " <ul>"
								+ " <li>"
								+ "<img src='"
								+ $("#PageContext").val()
								+ "/UserFile/img/user-logo.jpg' >"
								+ "<p>个人中心</p>"
								+ "</li>"
								+ "<li>"
								+ " <img src='"
								+ $("#PageContext").val()
								+ "/UserFile/img/flush-logo.jpg' alt=''>"
								+ "<p>刷新简历</p>"
								+ " </li>"
								+

								"<li>"
								+ "<img src='"
								+ $("#PageContext").val()
								+ "/UserFile/img/history-logo.jpg' >"
								+ "<p>投递历史</p>"
								+ "</li>"
								+

								"<li>"
								+ " <span>10</span>"
								+ "<img src='"
								+ $("#PageContext").val()
								+ "/UserFile/img/messa-logo.jpg' >"
								+ "<p>消息记录</p>" + "</li>" + "</ul>" +

								" </div>" + "</div>");

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
				// 刷新当前页面
				location.reload(true);
			}
		}

	});
}
