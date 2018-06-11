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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/candidate-headhunter-content.css">
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
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/gongjuxiang.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_candidate" style="color: #EB6045">候选人管理</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/ziliao.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterInformation">猎头资料</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/xiaoxizhongxin.jpg" alt=""></i><a href="">消息中心</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/zhanghaoanquan.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_account">账号安全</a></li>
            </ul>
        </div>
        <div class="content-right">
            <div class="right-top">
                <ul>
                    <li ><a href="" class="active">候选人管理</a></li>
                    <li><a href="">邀请候选人</a></li>
                </ul>
            </div>
            <div class="right-products">
                <div class="main selected">
                    <div class="search">
                        <form action="">
                            <select>
                                <option>职位</option>
                            </select>
                            <input type="text" name="search" placeholder="输入关键字，入:系统架构师">
                            <input type="submit" value="搜索">
                        </form>
                    </div>
                    <table border="">
                        <tr >
                            <th>姓名</th>
                            <th>性别</th>
                            <th>年龄</th>
                            <th>学历</th>
                            <th>工作年限</th>
                            <th>居住地</th>
                            <th>期望待遇</th>
                            <th>联系电话</th>
                            <th>投递时间</th>
                            <th>操作</th>

                        </tr>
                        <tr>
                            <td>刘胖子</td>
                            <td>男</td>
                            <td>31</td>
                            <td>本科</td>
                            <td>7年</td>
                            <td>四川 成都 高新区</td>
                            <td>8000</td>
                            <td>13574115541</td>
                            <td>2017.05.22</td>
                            <td><a href="">查看简历</a></td>

                        </tr>
                        <tr>
                            <td>刘胖子</td>
                            <td>男</td>
                            <td>31</td>
                            <td>本科</td>
                            <td>7年</td>
                            <td>四川 成都 高新区</td>
                            <td>8000</td>
                            <td>13574115541</td>
                            <td>2017.05.22</td>
                            <td><a href="">查看简历</a></td>

                        </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>8000</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>

                    </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>8000</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>

                    </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>8000</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>

                    </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>8000</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>

                    </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>8000</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>

                    </tr>
                    </table>
                    <div class="post-bottom">
                        <p>
                            <span><a href="">< 第一页</a></span>
                            <span><a href="">< 上一页</a></span>
                            <span><a href="">1/58</a></span>
                            <span><a href="">下一页 ></a></span>
                            <span><a href="">最末页 ></a></span>
                        </p>
                    </div>
                </div>
                <div class="main">
                    <form action="">
                        <p>候选人tel：<input type="text"></p>
                        <p>平台用户：<select name="" id="">
                            <option value="是">是</option>
                            <option value="否">否</option>
                        </select>
                        <p>
                            <span>若候选人入驻平台，则系统自动发送邀请</span>
                            <span>若没入驻，则选择短信发送邀请</span>
                        </p>
                        <p><input type="submit" value="邀请"></p>
                    </form>
                    </div>
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