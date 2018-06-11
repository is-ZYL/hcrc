<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <meta charset="UTF-8">
    <title>账号安全</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/updatepasswordhead.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/accountSecurity-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/updatepasswordfooter.css">
</head>
<script src="${pageContext.request.contextPath}/EnterpriseFile/jq/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/EnterpriseFile/js/content-left.js"></script>
<body>
<!--用户界面头部-->
<div class="user-head">
    <div class="head-bottom">
        <div class="mediate">
            <div class="logo">
                <a href="${pageContext.request.contextPath}/main"><img class="logo" src="${pageContext.request.contextPath}/EnterpriseFile/img/hcrclogo.jpg" alt=""></a>
            </div>
            <span><a href="${pageContext.request.contextPath}/hr/hr_hrmain">回到首页</a></span>
            <div class="head-bottom-nav">
                <ul>
                    <li>
                        <p title="">张小胖第三点卡的萨达</p>
                        <p>退出登录</p>
                    </li>
                    <div class="photo"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/touxiang.jpg" alt=""></div>
                </ul>
            </div>
            
        </div>
    </div>
</div>


<div class="middle-content">

    <div class="content">

        <div class="content-left">

            <ul class="aa">
                <li  value="1"><i class="n-icon one" ></i><span><a href="${pageContext.request.contextPath}/hr/hr_enterprise">企业简介</a></span></li>
                <li  value="2"><i class="n-icon two"></i><span><a href="">劳务详情</a></span></li>
                <li  value="3"><i class="n-icon three"></i><span><a href="${pageContext.request.contextPath}/hr/hr_details">职位详情</a></span></li>
                <li class="bb" value="8"><i class="n-icon eight  "></i><span><a href="${pageContext.request.contextPath}/hr/hr_updatepassword">账号安全</a></span></li>
            </ul>
        </div>
        <!--左边的内容-->
        <div class="content-right">
       
            <div class="content-right-head">
                <ul>
                    <li>
                        <div class="countSafe">账号安全</div>
                    </li>
                </ul>
            </div>
            <!--账号安全-->
            <div class="content-right-content a">
                <div>
                    <ul>
                        <li><span>原密码:</span> <input class="pa1" name="e_password" onpaste ="return false" type="password"><i class="password1"></i></li>
                        <li><span>新密码:</span> <input class="pa2" name="e_password1" onpaste="return false" type="password"><i class="password2"></i></li>
                        <li><span>再次输入:</span> <input class="pa3" name="e_password2" onpaste="return false" type="password"><i class="password3"></i></li>
                        <li><input class="paButton" type="button" value="修改密码"></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!--用户注册界面脚部-->
<div class="user-footer">
    <div class="footer-content mediate">
        <div class="footer-right"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/logo.jpg" alt=""></div>
        <div class="content">
            <p>渝ICP备11015194-1</p>
            <p>Copyright ©2017-2018 www.huohr.com</p>
        </div>
        <div class="footer-left"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/Hibuick.jpg" alt=""></div>
    </div>
</div>
</body>
</html>
<script>

$(function () {

    $(".paButton").click(function() {
		if(checkPassword()){
			updatehrpassword();
		}
	})
    
})


function checkPassword(){
	if($(".pa2").val() == $(".pa3").val()){
		return true;
	}else  if($(".pa2").val() != $(".pa3").val()) {
		alert("密码不一样")
		return false;
	}
	
}

function updatehrpassword(){
	$.ajax({
		url:"${pageContext.request.contextPath}/hr/updatepw",
		data:{e_password_old:$(".pa1").val(),e_password_new:$(".pa2").val()},
		success:function(data){
			alert(data);
		}
	})
}

</script>
