<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人用户注册</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/reg/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/reg/reg-user-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/reg/reg-user-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/reg/reg-user-footer.css">
</head>
<script src="${pageContext.request.contextPath}/UserFile/jq/publicFolder/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/UserFile/jq/reg/user-reg.js"></script>
<body>
<!--用户注册界面头部-->
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
    <div class="">
        <div class="head-top">
            <div class="mediate">
                <span>
                    <a href="${ pageContext.request.contextPath}/user_po/user_positionMain.html">个人入口 |</a>
                    <a href="#">企业入口 |</a>
                    <a href="#">培训入口 |</a>
                     <a href="#">猎头入口 |</a>
                     <a href="#">劳务派遣入口</a>
                </span>

            </div>
        </div>
        <div class="head-bottom">
            <div class="mediate">
                <div class="logo">
                    <img class="logo" src="${pageContext.request.contextPath}/UserFile/img/reg/hcrclogo.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
<!--用户界面内容-->
    <div class="user-content">
        <div class="user-reg">
            <div class="reg-title">
                <span>个人账号注册</span>
            </div>
            <div class="reg-content">
                <form action="${pageContext.request.contextPath }/user_po/user_regDo" class="content-form" method="post">
                    <p>
                    <label for="TEL">手机号码</label>
                    <input type="tel" name="u_phone" id="TEL" maxlength="11" onkeyup="value=value.replace(/[^\d]/g,'')" >
                    </p>
                    <p>
                    <label for="PHONECODE">验证码</label>
                    <input type="text" name="phonecode" id="PHONECODE">
                        <input type="button" value="获取验证码" class="phonecode">
                    </p>
                    <p>
                        <label for="PASSWORD">输入密码</label>
                        <input type="password" name="u_password" id="PASSWORD">
                    </p>
                    <p>
                        <label for="V_PASSWORD">再次输入</label>
                        <input type="password"  id="V_PASSWORD" onblur="validate()">
                        <span></span>
                    </p>
                    <p>
                        <label for="VAL">字母验证</label>
                        <input type="text" name="val" id="VAL">
                        <img class="img"  alt="">
                    </p>
                    <p class="form-protocol">注册代表同意 <a href="">火才用户协议</a></p>
                    <p>
                    <input type="submit" value="注册"> <input type="reset" value="重置">
                    </p>
                </form>
            </div>
        </div>
    </div>
<!--用户注册界面脚部-->
    <div class="user-footer">
        <div class="footer-content mediate">
                <div class="footer-right"><img src="${pageContext.request.contextPath}/UserFile/img/reg/logo.jpg" alt=""></div>
                <div class="content">
                <p>渝ICP备11015194-1</p>
                <p>Copyright ©2017-2018 www.huohr.com</p>
            </div>
                <div class="footer-left"><img  src="${pageContext.request.contextPath}/UserFile/img/reg/Hibuick.jpg" alt=""></div>
        </div>
    </div>
</body>
</html>