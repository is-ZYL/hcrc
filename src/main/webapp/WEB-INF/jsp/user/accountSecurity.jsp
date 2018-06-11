<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>账号安全</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/AccountSecurity/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/AccountSecurity/head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/AccountSecurity/accountSecurity-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/AccountSecurity/reg-user-footer.css">
</head>
<script src="${pageContext.request.contextPath}/UserFile/jq/publicFolder/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/UserFile/jq/publicFolder/content-left.js"></script>
<body>
<!--用户界面头部-->
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
<input id="Users" type="hidden" value="${sessionScope.user}" />
<div class="user-head">
    <div class="head-bottom">
        <div class="mediate">
            <div class="logo">
                <img class="logo" src="${pageContext.request.contextPath}/UserFile/img/AccountSecurity/hcrclogo.jpg" alt="">
            </div>
            <span><a href="${ pageContext.request.contextPath}/user_po/user_positionMain.html">回到首页</a></span>
            <div class="head-bottom-nav">
                <ul>
                    <li>
                        <p title="${sessionScope.user.u_phone}">${sessionScope.user.u_phone}</p>
                        <p>退出登录</p>
                    </li>
                    <div class="photo"><img src="${pageContext.request.contextPath}/UserFile/img/AccountSecurity/${sessionScope.user.u_header}" alt=""></div>
                </ul>
            </div>
        </div>
    </div>
</div>


<div class="middle-content">

    <div class="content">

        <div class="content-left">

            <ul class="aa">
                <li  value="1"><i class="n-icon one" ></i><span>个人中心</span></li>
                <li  value="2"><i class="n-icon two"></i><span>我的简历</span></li>
                <li  value="3"><i class="n-icon three"></i><span>职位投递</span></li>
                <li  value="4"><i class="n-icon four "></i><span>职位收藏</span></li>
                <li  value="5"><i class="n-icon five"></i><span>所属学苑</span></li>
                <li  value="6"><i class="n-icon six"></i><span>消息中心</span></li>
                <span class="messageNum">18</span>
                <li  value="7"><i class="n-icon seven"></i><span>屏蔽企业</span></li>
                <li class="bb" value="8"><i class="n-icon eight  "></i><span>账号安全</span></li>

            </ul>

            <div class="jinengtisheng">
                <ul>
                    <li>技能提升 <i class="right"></i></li>
                    <li>UI设计</li>
                    <li>淘宝店设计师</li>
                    <li>商品修图师</li>
                    <li>前端开发工程师</li>
                    <li>网页设计师</li>
                </ul>
            </div>

        </div>

        <!--左边的内容-->
        <div class="content-right">

            <div class="content-right-head">
                <ul>
                    <li>
                        <div class="countSafe">账号安全</div>
                    </li>
                    <li><div>更换手机号</div></li>
                </ul>
            </div>
            <!--账号安全-->
            <div class="content-right-content a">
                <div>
                    <ul>
                        <li><span>原密码:</span> <input class="pa1" name="u_password_OLD" onpaste="return false"  type="password"><i class="password1"></i></li>
                        <li><span>新密码:</span> <input class="pa2" name="u_password1" onpaste="return false" type="password"><i class="password2"></i></li>
                        <li><span>再次输入:</span> <input class="pa3" name="u_password2" onpaste="return false" type="password"><i class="password3"></i></li>
                        <li><input class="paButton" type="button" value="修改密码"></li>
                    </ul>


                </div>
            </div>

            <!--更换手机号-->
            <div class="content-right-content b">
                <div>
                    <ul>
                        <li><span>原手机号:</span> <input class="pa1" name="u_phone" onkeyup="this.value=this.value.replace(/[^-\d,/\s]/g,'')"   onpaste="return false" type="password"><i class="password1"></i></li>
                        <li><span>验证码:</span> <input class="pa2" onpaste="return false" type="password"><i class="password2"></i></li>
                        <li><span>新手机号:</span> <input class="pa3" name="u_phone" onkeyup="this.value=this.value.replace(/[^-\d,/\s]/g,'')" onpaste="return false" type="password"><i class="password3"></i></li>
                        <li><input class="paButton" type="button" value="更换手机号"></li>
                    </ul>

                </div>
            </div>


        </div>


    </div>


</div>

<!--用户注册界面脚部-->
<div class="user-footer">
    <div class="footer-content mediate">
        <div class="footer-right"><img src="${pageContext.request.contextPath}/UserFile/img/AccountSecurity/logo.jpg" alt=""></div>
        <div class="content">
            <p>渝ICP备11015194-1</p>
            <p>Copyright ©2017-2018 www.huohr.com</p>
        </div>
        <div class="footer-left"><img src="${pageContext.request.contextPath}/UserFile/img/AccountSecurity/Hibuick.jpg" alt=""></div>
    </div>
</div>
</body>
</html>