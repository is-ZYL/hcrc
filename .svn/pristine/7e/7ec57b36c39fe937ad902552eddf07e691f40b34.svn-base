<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/recommend-headhunter-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/recommend-headhunter-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/account-headhunter-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/reg-user-footer.css">
</head>
<body>
<!--推荐候选人头部-->
<div class="recommend-head">
<div class="mediate">
    <p><img src="${pageContext.request.contextPath }/HeadhunterFile/img/hcrclogo.jpg" alt=""></p>
    <p><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain">回到首页</a></p>
    <p>
        <span>
            <a href="">${sessionScope.LOG_HEADHUNTING.h_companyFullName}</a>
            <a href="${pageContext.request.contextPath}/headhunter/headhunter_exit">退出账号</a>
        </span>
        <span>
            <img src="${pageContext.request.contextPath }/HeadhunterFile/img/${LOG_HEADHUNTING.h_logo}" alt="" style="width: 50px;">
        </span>
    </p>
</div>
</div>
<!--内容-->
<div class="recommend-content">
    <div class="mediate">
        <div class="content-left">
           <ul>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/tuijianrencai.jpg" alt="" ></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_talentPool" >寻找候选人</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/qiyejianjie.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_positionManage" >职位管理</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/gongjuxiang.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_candidate">候选人管理</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/ziliao.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterInformation" >猎头资料</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/xiaoxizhongxin.jpg" alt=""></i><a href="">消息中心</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/zhanghaoanquan.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_account" style="color: #EB6045">账号安全</a></li>
            </ul>
        </div>
        <div class="content-right">
            <div class="right-top">
                <ul>
                    <li ><a href="" class="active">账号安全</a></li>
                    <li><a href="">更换手机号</a></li>
                </ul>
            </div>
            <div class="right-products">
                <div class="main selected">
                    <form action="">
                        <p>
                            <span>原密码&nbsp;&nbsp;&nbsp;：</span>
                            <input type="password" name="password">
                        </p>
                        <p>
                            <span>新密码&nbsp;&nbsp;&nbsp;：</span>
                            <input type="password" name="h_password">
                        </p>
                        <p>
                            <span>再次输入：</span>
                            <input type="password">
                        </p>
                        <p>
                            <span>密码必须在6～12位之间，</span>
                            <span>且至少包含英文字母(Aa到Zz，不区分大小写)、</span>
                            <span>数字(0到9)及符号(如: !, #, %)中的任意两种。</span>
                        </p>
                        <input type="submit" value="确认修改">
                    </form>
                </div>
                <div class="main">
                    <form action="">
                        <p>
                            <span>原手机号：</span>
                            <input type="text" name="" >
                        </p>
                        <p >
                            <span>验证码&nbsp;&nbsp;&nbsp;：</span>
                            <input type="text" name="" id="telCode">
                            <input type="button" value="获取验证码" class="telCodeB">
                        </p>
                        <p>
                            <span>新手机号：</span>
                            <input type="text">
                        </p>

                        <input type="submit" value="确认更换">
                    </form>
                </div>
            </div>
        </div>
    </div>


</div>
<div class="user-footer">
    <div class="footer-content mediate">
        <div class="footer-right"><img src="${pageContext.request.contextPath }/HeadhunterFile/img/logo.jpg" alt=""></div>
        <div class="content">
            <p>渝ICP备11015194-1</p>
            <p>Copyright ©2017-2018 www.huohr.com</p>
        </div>
        <div class="footer-left"><img src="${pageContext.request.contextPath }/HeadhunterFile/img/Hibuick.jpg" alt=""></div>
    </div>
</div>
</body>
</html>
<script src="${pageContext.request.contextPath }/HeadhunterFile/jq/jquery-1.11.1.min.js"></script>
<script>
    $(function () {
        $(".content-right .right-top li a").mouseenter(function () {
            $(this).addClass("active").parent().siblings().children("a").removeClass("active");
            $(".content-right .right-products .main").eq($(this).parent().index()).addClass("selected").siblings().removeClass("selected");
        })
    })
</script>