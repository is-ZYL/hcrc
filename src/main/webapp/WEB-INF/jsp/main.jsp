<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/MainFile/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/MainFile/css/main-user-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/MainFile/css/main-user-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/MainFile/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/MainFile/css/slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/MainFile/css/reg-user-footer.css">
    <script src="${pageContext.request.contextPath}/MainFile/jq/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/MainFile/jq/jquery.reslider.js"></script>
</head>
<body>
<!--用户界面头部-->
<div class="user-head">
    <div class="head-top">
        <div class="mediate">
                <span>
                    <a href="${ pageContext.request.contextPath}/user_po/user_positionMain.html"">个人入口 |</a>
                    <a href="${pageContext.request.contextPath}/hr/hr_hrmain">企业入口 |</a>
                    <a href="#">培训入口 |</a>
                     <a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain">猎头入口 |</a>
                     <a href="#">劳务派遣入口</a>
                </span>

        </div>
    </div>
    <div class="head-bottom">
        <div class="mediate">
            <div class="logo">
                <img class="logo" src="${pageContext.request.contextPath}/MainFile/img/hcrclogo.jpg" alt="">
            </div>
            <div class="head-bottom-nav">
                <ul>
                    <li class="current"><a href="">首页</a></li>
                    <li><a href="">招聘</a></li>
                    <li><a href="${pageContext.request.contextPath}/hr/hr_hrmain">HR联盟</a></li>
                    <li><a href="">培训联盟</a></li>
                    <li><a href="">劳务派遣</a></li>
                    <li><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain">猎头</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--主页内容-->
<div class="user-content">
    <div class="content-slider">
        <div class="slider-block" data-url="${pageContext.request.contextPath}/MainFile/img/nav-01.jpg"></div>
        <div class="slider-block" data-url="${pageContext.request.contextPath}/MainFile/img/nav-02.jpg"></div>
        <div class="slider-dots">
            <ul>
            </ul>
        </div>
    </div>
    <div class="content-intro">
        <div class="mediate position">
            <div class="intro-left">
                <div class="left-top">
                    <ul>
                        <li>
                            <p><a href="">人才招聘</a></p>
                            <p>TALENT</p>
                            <p>RECRUITMENT</p>
                        </li>
                        <li>
                            <p><a href="">HR联盟</a></p>
                            <p>HR ALLIANCE</p>

                        </li>
                        <li>
                            <p><a href="">培训联盟</a></p>
                            <p>TRALNING</p>
                            <p>ALLANCE</p>
                        </li>
                        <li>
                            <p><a href="">劳务派遣</a></p>
                            <p>LABOR</p>
                            <p>DISPATCH</p>
                        </li>
                    </ul>
                </div>
                <div class="left-bottom">
                    <div class="bottom-logo">
                        <img src="${pageContext.request.contextPath}/MainFile/img/logotwo.jpg" alt="">
                    </div>
                    <div class="bottom-describe">
                        <p>火才平台能够全方位获取合适人才，为企业、劳务派遣、个人、猎头常年提供充足的专业人才资源选择，为人才快速实现就业。</p>
                    </div>
                </div>
            </div>
            <div class="intro-right">
                <p><span>人才简历</span><span><a href="">${requestScope.CountResume }</a></span><span>件</span></p>
                <p><span>成交订单</span><span><a href="">748</a></span><span>笔</span></p>
                <p><span>猎头入驻</span><span><a href="">${requestScope.CountHeadhunting }</a></span><span>个</span></p>
            </div>
        </div>
    </div>
    <div class="content-main">
        <div class="perch"></div>
        <div class="main-enterprise mediate">
            <ul>
                <!--板块标题 建议不要动-->
                <li>
                    <p><a href="#">最新企业成交订单</a></p><span>▷</span>
                    <p><span>今日成交 <a href="">351</a></span> / <span>总成交 <a href="">5411</a></span></p>
                </li>
                <!--以下都是板块内容 跟随数据库更新 共8条记录-->
                <li>
                    <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                    <p>
                        <span><a href="">大客户经理</a></span>
                        <span><a>30人</a></span>
                        <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                    </p>
                </li><li>
                    <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                    <p>
                        <span><a href="">大客户经理</a></span>
                        <span><a>30人</a></span>
                        <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                    </p>
                </li><li>
                    <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                    <p>
                        <span><a href="">大客户经理</a></span>
                        <span><a>30人</a></span>
                        <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                    </p>
                </li><li>
                    <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                    <p>
                        <span><a href="">大客户经理</a></span>
                        <span><a>30人</a></span>
                        <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                    </p>
                </li><li>
                    <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                    <p>
                        <span><a href="">大客户经理</a></span>
                        <span><a>30人</a></span>
                        <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                    </p>
                </li><li>
                    <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                    <p>
                        <span><a href="">大客户经理</a></span>
                        <span><a>30人</a></span>
                        <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                    </p>
                </li><li>
                    <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                    <p>
                        <span><a href="">大客户经理</a></span>
                        <span><a>30人</a></span>
                        <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                    </p>
                </li><li>
                    <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                    <p>
                        <span><a href="">大客户经理</a></span>
                        <span><a>30人</a></span>
                        <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                    </p>
                </li>

            </ul>
        </div>
        <div class="perch"></div>
        <div class="main-dispatching mediate">
            <ul>
                <!--板块标题 建议不要动-->
                <li>
                    <p><a href="#">最新劳务派遣成交订单</a></p><span>▷</span>
                    <p><span>今日成交 <a href="">177</a></span> / <span>总成交 <a href="">3507</a></span></p>
                </li>
                <!--以下都是板块内容 跟随数据库更新 共8条记录-->
                <li>
                    <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                    <p>
                        <span><a href="">大客户经理</a></span>
                        <span><a>30人</a></span>
                        <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                    </p>
                </li> <li>
                <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                <p>
                    <span><a href="">大客户经理</a></span>
                    <span><a>30人</a></span>
                    <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                </p>
            </li> <li>
                <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                <p>
                    <span><a href="">大客户经理</a></span>
                    <span><a>30人</a></span>
                    <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                </p>
            </li> <li>
                <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                <p>
                    <span><a href="">大客户经理</a></span>
                    <span><a>30人</a></span>
                    <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                </p>
            </li> <li>
                <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                <p>
                    <span><a href="">大客户经理</a></span>
                    <span><a>30人</a></span>
                    <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                </p>
            </li> <li>
                <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                <p>
                    <span><a href="">大客户经理</a></span>
                    <span><a>30人</a></span>
                    <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                </p>
            </li> <li>
                <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                <p>
                    <span><a href="">大客户经理</a></span>
                    <span><a>30人</a></span>
                    <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                </p>
            </li> <li>
                <p><a href=""><img src="${pageContext.request.contextPath}/MainFile/img/youbao.jpg" alt=""></a></p>
                <p>
                    <span><a href="">大客户经理</a></span>
                    <span><a>30人</a></span>
                    <span><a href="">深圳友宝科斯科技有限公司</a></span> / <sapn>成都</sapn>
                </p>
            </li>
            </ul>
        </div>
        <div class="perch"></div>
        <div class="main-headhunter mediate">
            <ul>
                <li>
                    <p><a href="#">最新猎头成交订单</a></p><span>▷</span>
                    <p><span>今日成交 <a href="">124</a></span> / <span>总成交 <a href="">2547</a></span></p>
                </li>
                <li>
                    <span><a href="">某大客户营销经理</a></span>
                    <span><a>18-25k</a></span>
                    <span><a href="">前程无忧才人咨询有限公司</a></span>
                </li> <li>
                    <span><a href="">某大客户营销经理</a></span>
                    <span><a>18-25k</a></span>
                    <span><a href="">前程无忧才人咨询有限公司</a></span>
                </li> <li>
                    <span><a href="">某大客户营销经理</a></span>
                    <span><a>18-25k</a></span>
                    <span><a href="">前程无忧才人咨询有限公司</a></span>
                </li> <li>
                    <span><a href="">某大客户营销经理</a></span>
                    <span><a>18-25k</a></span>
                    <span><a href="">前程无忧才人咨询有限公司</a></span>
                </li> <li>
                    <span><a href="">某大客户营销经理</a></span>
                    <span><a>18-25k</a></span>
                    <span><a href="">前程无忧才人咨询有限公司</a></span>
                </li> <li>
                    <span><a href="">某大客户营销经理</a></span>
                    <span><a>18-25k</a></span>
                    <span><a href="">前程无忧才人咨询有限公司</a></span>
                </li> <li>
                    <span><a href="">某大客户营销经理</a></span>
                    <span><a>18-25k</a></span>
                    <span><a href="">前程无忧才人咨询有限公司</a></span>
                </li> <li>
                    <span><a href="">某大客户营销经理</a></span>
                    <span><a>18-25k</a></span>
                    <span><a href="">前程无忧才人咨询有限公司</a></span>
                </li>

            </ul>
        </div>
        <div class="perch"></div>
        <div class="main-advertise mediate">
            <ul>
                <li>
                    <div class="photo"><img src="${pageContext.request.contextPath}/MainFile/img/advertising.jpg"/></div>
                    <div class="rsp"></div>
                    <div class="text"><a href=""><p>火才学苑遍布全国各地，为人才提供技能学习、职业素质、自我提升等全方位的综合学习平台。<span>⇨</span></p> </a></div>
                </li> <li>
                    <div class="photo"><img src="${pageContext.request.contextPath}/MainFile/img/advertising.jpg"/></div>
                    <div class="rsp"></div>
                    <div class="text"><a href=""><p>火才学苑遍布全国各地，为人才提供技能学习、职业素质、自我提升等全方位的综合学习平台。<span>⇨</span></p> </a></div>
                </li> <li>
                    <div class="photo"><img src="${pageContext.request.contextPath}/MainFile/img/advertising.jpg"/></div>
                    <div class="rsp"></div>
                    <div class="text"><a href=""><p>火才学苑遍布全国各地，为人才提供技能学习、职业素质、自我提升等全方位的综合学习平台。<span>⇨</span></p> </a></div>
                </li> <li>
                    <div class="photo"><img src="${pageContext.request.contextPath}/MainFile/img/advertising.jpg"/></div>
                    <div class="rsp"></div>
                    <div class="text"><a href=""><p>火才学苑遍布全国各地，为人才提供技能学习、职业素质、自我提升等全方位的综合学习平台。<span>⇨</span></p> </a></div>
                </li> <li>
                    <div class="photo"><img src="${pageContext.request.contextPath}/MainFile/img/advertising.jpg"/></div>
                    <div class="rsp"></div>
                    <div class="text"><a href=""><p>火才学苑遍布全国各地，为人才提供技能学习、职业素质、自我提升等全方位的综合学习平台。<span>⇨</span></p> </a></div>
                </li>
            </ul>
        </div>
        <div class="perch"></div>
        <!--用户注册界面脚部-->
        <div class="user-footer">
            <div class="footer-content mediate">
                <div class="footer-right"><img src="${pageContext.request.contextPath}/MainFile/img/logo.jpg" alt=""></div>
                <div class="content">
                    <p>渝ICP备11015194-1</p>
                    <p>Copyright ©2017-2018 www.huohr.com</p>
                </div>
                <div class="footer-left"><img src="${pageContext.request.contextPath}/MainFile/img/Hibuick.jpg" alt=""></div>
            </div>
</div>

</div>

</div>
</body>
</html>
<script>
    $(function(){
        $('.content-slider').reSlider({
            speed:500,//设置轮播的高度
            delay:5000,//设置轮播的延迟时间
            imgCount:2,//设置轮播的图片数
            dots:true,//设置轮播的序号点
            autoPlay:true//设置轮播是否自动播放
        });

        $(".main-advertise ul li .rsp").hide();
        $(".main-advertise ul li").hover(function(){
                $(this).find(".rsp").stop().fadeTo(500,0.8);
                $(this).find(".text").stop().animate({left:'0'}, {duration: 500})
            },
            function(){
                $(this).find(".rsp").stop().fadeTo(500,0);
                $(this).find(".text").stop().animate({left:'300'}, {duration: "fast"});
                $(this).find(".text").animate({left:'-300'}, {duration: 0})
            });

    });
</script>
