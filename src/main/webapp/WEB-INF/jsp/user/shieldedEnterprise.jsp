<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>屏蔽企业</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/publicFolder/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/publicFolder/main-user-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/shieldedEnterprise/shieldedEnterprise.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/publicFolder/reg-user-footer.css">
    <!--设置浏览器上面显示的logo-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/UserFile/img/shieldedEnterprise/Windows 照片查看器墙纸.jpg">
</head>
<script src="${pageContext.request.contextPath}/UserFile/jq/publicFolder/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/UserFile/jq/shieldedEnterprise/shieldedEnterprise.js"></script>
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
                <img class="logo" src="${pageContext.request.contextPath}/UserFile/img/shieldedEnterprise/hcrclogo.jpg" alt="">
            </div>
            <div class="head-bottom-nav">
                <ul>
                    <li><a style="color: #666;" href="${ pageContext.request.contextPath}/user_po/user_positionMain.html">首页</a></li>
                    <li class="current"><a style="color: #E84626;" href="">职位</a></li>
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
                <li value="1"><i class="n-icon one"></i><span>个人中心</span></li>
                <li value="2"><i class="n-icon two"></i><span>我的简历</span></li>
                <li value="3"><i class="n-icon three"></i><span>职位投递</span></li>
                <li value="4"><i class="n-icon four "></i><span>职位收藏</span></li>
                <li value="5"><i class="n-icon five"></i><span>所属学苑</span></li>
                <li value="6"><i class="n-icon six"></i><span>消息中心</span></li>
                <span class="messageNum">18</span>
                <li class="bb" value="7"><i class="n-icon seven"></i><span>屏蔽企业</span></li>
                <li value="8"><i class="n-icon eight  "></i><span>账号安全</span></li>

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
            <p>屏蔽企业</p>

            <div class="heads">

                    <div>
                        <span>企业名称:</span> <input type="text" placeholder="企业全称/简称/关键字" onkeyup="value=value.replace(/[\W]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"><input type="button" value="添 加">
                    </div>
                    <div class="message">
                        <p>1、请输入企业的全程或包含的关键字。</p>
                        <p>2、当企业全程或关键字加入到屏蔽列表中，包含该文字的企业都不可以看到你的简历。</p>
                    </div>


                <ul>
                    <li>
                        <span>被屏蔽的企业名称</span>  <span>操作</span>
                    </li>
                    <li>
                        <span>韦伯双语机器人教育</span><span>删除</span>
                    </li>

                    <li>
                        <span>百词斩</span><span>删除</span>
                    </li>

                    <li>
                        <span>蓝色时代儿童科技</span><span>删除</span>
                    </li>
                    <li>
                        <span>蓝色时代儿童科技</span><span>删除</span>
                    </li>
                    <li>
                        <span>蓝色时代儿童科技</span><span>删除</span>
                    </li>
                    <li>
                        <span>蓝色时代儿童科技</span><span>删除</span>
                    </li>
                </ul>

            </div>
        </div>


    </div>


</div>

<!--用户注册界面脚部-->
<div class="user-footer">
    <div class="footer-content mediate">
        <div class="footer-right"><img src="${pageContext.request.contextPath}/UserFile/img/shieldedEnterprise/logo.jpg" alt=""></div>
        <div class="content">
            <p>渝ICP备11015194-1</p>
            <p>Copyright ©2017-2018 www.huohr.com</p>
        </div>
        <div class="footer-left"><img src="${pageContext.request.contextPath}/UserFile/img/shieldedEnterprise/Hibuick.jpg" alt=""></div>
    </div>
</div>
</body>
</html>