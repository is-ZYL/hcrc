<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>职位收藏</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/JobCollection/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/JobCollection/main-user-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/JobCollection/JobCollection.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/JobCollection/reg-user-footer.css">
    <!--设置浏览器上面显示的logo-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/UserFile/img/JobCollection/Windows 照片查看器墙纸.jpg">
</head>
<script src="${pageContext.request.contextPath}/UserFile/jq/publicFolder/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/UserFile/jq/publicFolder/userCenter.js"></script>
<body>
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
<input id="Users" type="hidden" value="${sessionScope.user}" />
<!--用户界面头部-->
<div class="user-head">
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
                <img class="logo" src="${pageContext.request.contextPath}/UserFile/img/JobCollection/hcrclogo.jpg" alt="">
            </div>
            <div class="head-bottom-nav">
                <ul>
                    <li ><a style="color: #666;" href="${ pageContext.request.contextPath}/user_po/user_positionMain.html">首页</a></li>
                    <li  class="current"><a style="color: #E84626;"  href="">职位</a></li>
                    <li><a href="">HR联盟</a></li>
                    <li><a href="">培训联盟</a></li>
                    <li><a href="">劳务派遣</a></li>
                    <li><a href="">猎头</a></li>
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
                <li class="bb" value="4"><i class="n-icon four "></i><span>职位收藏</span></li>
                <li  value="5"><i class="n-icon five"></i><span>所属学苑</span></li>
                <li  value="6"><i class="n-icon six"></i><span>消息中心</span></li>
                <span class="messageNum">18</span>
                <li  value="7"><i class="n-icon seven"></i><span>屏蔽企业</span></li>
                <li  value="8"><i class="n-icon eight  "></i><span>账号安全</span></li>

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
            <p>职位收藏</p>
                <ul>
                    <li>
                        <div class="EHeader"><img src="${pageContext.request.contextPath}/UserFile/img/JobCollection/Windows%20照片查看器墙纸.jpg" alt=""></div>
                        <div>
                            <p>
                                <span>UI设计师</span>
                                <span>8-12K</span>
                                <span>本科/2-5年</span>
                            </p>
                            <p>
                                <span>天使匠心 | </span>
                                <span>成都 | </span>
                                <span>互联网行业</span>
                            </p>
                        </div>
                        <div>
                            <p><span>2017-04-04 发布</span></p>
                            <p>
                                <span>取消收藏 | </span>
                                <span>招聘中</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="EHeader"><img src="${pageContext.request.contextPath}/UserFile/img/JobCollection/Windows%20照片查看器墙纸.jpg" alt=""></div>
                        <div>
                            <p>
                                <span>UI设计师</span>
                                <span>8-12K</span>
                                <span>本科/2-5年</span>
                            </p>
                            <p>
                                <span>天使匠心 | </span>
                                <span>成都 | </span>
                                <span>互联网行业</span>
                            </p>
                        </div>
                        <div>
                            <p><span>2017-04-04 发布</span></p>
                            <p>
                                <span>取消收藏 | </span>
                                <span>招聘中</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="EHeader"><img src="${pageContext.request.contextPath}/UserFile/img/JobCollection/Windows%20照片查看器墙纸.jpg" alt=""></div>
                        <div>
                            <p>
                                <span>UI设计师</span>
                                <span>8-12K</span>
                                <span>本科/2-5年</span>
                            </p>
                            <p>
                                <span>天使匠心 | </span>
                                <span>成都 | </span>
                                <span>互联网行业</span>
                            </p>
                        </div>
                        <div>
                            <p><span>2017-04-04 发布</span></p>
                            <p>
                                <span>取消收藏 | </span>
                                <span>招聘中</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="EHeader"><img src="${pageContext.request.contextPath}/UserFile/img/JobCollection/Windows%20照片查看器墙纸.jpg" alt=""></div>
                        <div>
                            <p>
                                <span>UI设计师</span>
                                <span>8-12K</span>
                                <span>本科/2-5年</span>
                            </p>
                            <p>
                                <span>天使匠心 | </span>
                                <span>成都 | </span>
                                <span>互联网行业</span>
                            </p>
                        </div>
                        <div>
                            <p><span>2017-04-04 发布</span></p>
                            <p>
                                <span>取消收藏 | </span>
                                <span>招聘中</span>
                            </p>
                        </div>
                    </li>

                    <li>
                        <div class="last" >
                            <p>点击加载更多职位</p>
                        </div>
                    </li>
                </ul>


        </div>


    </div>


</div>

<!--用户注册界面脚部-->
<div class="user-footer">
    <div class="footer-content mediate">
        <div class="footer-right"><img src="${pageContext.request.contextPath}/UserFile/img/JobCollection/logo.jpg" alt=""></div>
        <div class="content">
            <p>渝ICP备11015194-1</p>
            <p>Copyright ©2017-2018 www.huohr.com</p>
        </div>
        <div class="footer-left"><img src="${pageContext.request.contextPath}/UserFile/img/JobCollection/Hibuick.jpg" alt=""></div>
    </div>
</div>
</body>
</html>