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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/JobDetails-headhunter-content.css">
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
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/qiyejianjie.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_positionManage" style="color: #EB6045">职位管理</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/gongjuxiang.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_candidate">候选人管理</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/ziliao.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterInformation">猎头资料</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/xiaoxizhongxin.jpg" alt=""></i><a href="">消息中心</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/zhanghaoanquan.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_account">账号安全</a></li>
            </ul>
        </div>
        <div class="content-right">
            <div class="right-top">
                <ul>
                    <li ><a href="" class="active">职位详情</a></li>
                    <li><a href="">投递人数</a></li>
                    <li><a href="">邀请候选人</a></li>
                </ul>
            </div>
            <div class="right-products">
                <div class="main selected">
                    <a href="${pageContext.request.contextPath }/headhunter/headhunter_compileJob">编辑</a>
                    <div class="data-top">
                        <H1>JAVA开发工程师</H1>
                        <span>2017.05.12发布</span>
                        <p>关键字：<span>专家 资深 高级 嵌入式 单片机 硬件开发</span></p>
                    </div>
                    <div class="data-content">
                        <p>职位编号： <span>12316789165748</span></p>
                        <p>薪&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;资： <span>5000</span></p>
                        <p>年龄要求： <span>25-40岁</span></p>
                        <p>工作性质： <span>全职</span></p>
                        <p>学历要求： <span>大专及以上</span></p>
                        <p>工作年限： <span>5年以上</span></p>
                    </div>
                    <div class="data-bottom">
                        <p>招聘人数： <span>3人</span></p>
                        <p>发布城市： <span>重庆市 沙坪坝区</span></p>
                        <p>发布城市： <span>成都 高新区 石羊 锦晖西一街布鲁明顿广场1栋2单元10楼</span></p>
                    </div>
                    <div class="data-claim">
                        <p>岗位优势： 不加班   有美女陪聊   五险一金   年终分红<span></span></p>
                        <p>岗位描述：
                            <span>1、负责新硬件产品的行业调研、收集硬件产品需求、以及硬件技术方案的提出。</span>
                            <span>2、根据组织团队，制定项目计划，并按项目计划完成项目目标；</span>
                            <span>3、根据设计文档或需求说明完成电子电路设计、芯片程序编写，调试，测试和维护。</span>
                            <span>4、根据工艺要求，不断调整设计方案。 </span>
                        </p>
                        <p>任职要求：
                            <span>1、28-40岁，专科及以上学历，通讯工程、计算机、电子电路相关专业；</span>
                            <span>2、三年以上单片机开发经验；</span>
                            <span>3、学习能力强，能够吃苦耐劳； 工作心细，做事细致。</span>
                            <span>4、掌握C编程语言； </span>
                            <span>5、熟练掌握PCB设计软件AD； </span>
                            <span>6、熟练使用开发工具Keil uVision、IAR、ST Visual Programmer等； </span>
                            <span>7、对于STM32系列芯片、MSP430系列芯片比较了解。了解并使用过蓝牙通讯技术、433无限通讯、电容指纹识别模块、指静脉识别模块的人员优先。</span>
                            <span>8、同时具备二年以上Arm系列，Linux系统 嵌入式开发经验者优先。</span>
                        </p>
                    </div>
                </div>
                <div class="main">
                    <table border="">
                        <tr >
                            <th>姓名</th>
                            <th>性别</th>
                            <th>年龄</th>
                            <th>学历</th>
                            <th>工作年限</th>
                            <th>居住地</th>
                            <th>联系电话</th>
                            <th>投递时间</th>
                            <th>操作</th>
                            <th>备注</th>
                        </tr>
                        <tr>
                            <td>刘胖子</td>
                            <td>男</td>
                            <td>31</td>
                            <td>本科</td>
                            <td>7年</td>
                            <td>四川 成都 高新区</td>
                            <td>13574115541</td>
                            <td>2017.05.22</td>
                            <td><a href="">查看简历</a></td>
                            <td><a href="">添加备注</a></td>
                        </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>
                        <td><a href="">添加备注</a></td>
                    </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>
                        <td><a href="">添加备注</a></td>
                    </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>
                        <td><a href="">添加备注</a></td>
                    </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>
                        <td><a href="">添加备注</a></td>
                    </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>
                        <td><a href="">添加备注</a></td>
                    </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>
                        <td><a href="">添加备注</a></td>
                    </tr>
                        <tr>
                        <td>刘胖子</td>
                        <td>男</td>
                        <td>31</td>
                        <td>本科</td>
                        <td>7年</td>
                        <td>四川 成都 高新区</td>
                        <td>13574115541</td>
                        <td>2017.05.22</td>
                        <td><a href="">查看简历</a></td>
                        <td><a href="">添加备注</a></td>
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
<script src="${pageContext.request.contextPath }/HeadhunterFile/jq/jquery-1.11.1.min.js"></script>
<script>
    $(function () {
        $(".content-right .right-top li a").mouseenter(function () {
            $(this).addClass("active").parent().siblings().children("a").removeClass("active");
            $(".content-right .right-products .main").eq($(this).parent().index()).addClass("selected").siblings().removeClass("selected");
        })
    })
</script>
</html>