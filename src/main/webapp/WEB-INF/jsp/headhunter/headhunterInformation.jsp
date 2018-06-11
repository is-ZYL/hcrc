<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/recommend-headhunter-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/headhunterInformation-headhunter-content.css">
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
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/ziliao.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterInformation" style="color: #EB6045">猎头资料</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/xiaoxizhongxin.jpg" alt=""></i><a href="">消息中心</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/zhanghaoanquan.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_account">账号安全</a></li>
            </ul>
        </div>
        <div class="content-right">
            <div class="right-top">
                <ul>
                    <li ><a href="" class="active">猎头资料</a></li>
                </ul>
            </div>
            <div class="right-products">
                <div class="main selected">
                    <!--猎头资料-->
                    <a onclick="EditData()">编辑</a>
                    <div class="main-top">
                        <p><img src="${pageContext.request.contextPath }/HeadhunterFile/img/Plogo.jpeg" alt=""></p>
                        <p>
                        <span>IRIS</span>
                        <span>从业经验：5年</span>
                        <span>擅长行业：互联网/物流/制造业/旅游</span>
                        <span>重庆市 北路新区 清枫北路18号 凤凰A座右半层565</span>
                        </p>
                    </div>
                    <div class="main-content">
                        <p>联系方式：<span>1581543351</span></p>
                        <p>所在企业：<span>瑞士方达</span></p>
                        <p>公司官网：<span><a href="">www.easttop.com.cn</a></span></p>
                        <p>公司邮箱：<span>hr@dfjs.com</span></p>
                        <p>邮政编码：<span>未填写</span></p>
                    </div>
                    <div class="main-bottom">
                        <span>简介：</span>
                        <span>东方嘉盛是一家创新型、综合性专业第三方物流企业，于2001年7月在深圳成立，总注册资本人民币1亿元。公司是我国最早涉足供应链管理行业的本土企业之一，目前在国内市场居于领先地位，在行业内具有较高的知名度和影响力。东方嘉盛创新设立“一体化供应链”模式，为客户提供向传统供应链前端及后端延伸的新型供应链一体化解决方案，整合采购、进出口代理和报关、仓储、配送、分销与售后服务等一站式物流服务，形成一体化的供应链管理，为 it、医疗设备、高档消费品、纺织、化工、机械等行业的国际国内著名企业提供第三方采购、分销、配送、仓储、报关等多环节、多方位的一体化物流服务。东方嘉盛以“控制物流运作成本，降低客户风险，成为客户***战略联盟伙伴”作为公司经营理念，始终将“满足客户需求”作为企业永续发展的基石。</span>
                    </div>


                    <!--编辑资料-->
                    <!--<div class="main-data">
                        <p>猎头名称：<input type="text" placeholder="必填项"></p>
                        <p>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：<input type="text" placeholder=""></p>
                        <p>从业时间：<input type="text" placeholder="必填项"></p>
                        <p>擅长行业：<select name="" id="">
                                <option value="">互联网</option>
                            </select> <select name="" id="">
                                <option value="">互联网</option>
                            </select> <select name="" id="">
                                <option value="">互联网</option>
                            </select> <select name="" id="">
                                <option value="">互联网</option>
                            </select>
                        </p>
                    </div>
                    <div class="main-company">
                        <p>公司名称：<input type="text"></p>
                        <p>公司地址：<select name="" id="">
                                <option value="">四川省</option>
                            </select><select name="" id="">
                                <option value="">成都市</option>
                            </select><select name="" id="">
                                <option value="">高新区</option>
                            </select>
                            <input type="text" placeholder="详细地址">
                        </p>
                        <p>头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像：<input type="file"></p>
                        <p>公司官网：<input type="text" placeholder="必填项"></p>
                        <p>公司邮箱：<input type="email" placeholder="必填项"></p>
                        <p>公司座机：<input type="text" placeholder=""></p>
                        <p>邮政编码：<input type="text" placeholder=""></p>
                    </div>
                    <div class="main-intro">
                        <span>简&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介：</span>
                        <textarea cols="100" rows="10"></textarea>
                        <input type="submit" value="确认修改">
                    </div>-->
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
    function EditData() {
        $(".right-products .main:nth-child(1)").html("<div class='main-data'>" +
            "                        <p>猎头名称：<input type='text' placeholder='必填项'></p>" +
            "                        <p>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：<input type='text' placeholder=''></p>" +
            "                        <p>从业时间：<input type='text' placeholder='必填项'></p>" +
            "                        <p>擅长行业：<select name='' id=''>" +
            "                                <option value=''>互联网</option>" +
            "                            </select> <select name='' id=''>" +
            "                                <option value=''>互联网</option>" +
            "                            </select> <select name='' id=''>" +
            "                                <option value=''>互联网</option>" +
            "                            </select> <select name='' id=''>" +
            "                                <option value=''>互联网</option>" +
            "                            </select>" +
            "                        </p>" +
            "                    </div>" +
            "                    <div class='main-company'>" +
            "                        <p>公司名称：<input type='text'></p>" +
            "                        <p>公司地址：<select name='' id=''>" +
            "                                <option value=''>四川省</option>" +
            "                            </select><select name='' id=''>" +
            "                                <option value=''>成都市</option>" +
            "                            </select><select name='' id=''>" +
            "                                <option value=''>高新区</option>" +
            "                            </select>" +
            "                            <input type='text' placeholder='详细地址'>" +
            "                        </p>" +
            "                        <p>头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像：<input type='file'></p>" +
            "                        <p>公司官网：<input type='text' placeholder='必填项'></p>" +
            "                        <p>公司邮箱：<input type='email' placeholder='必填项'></p>" +
            "                        <p>公司座机：<input type='text' placeholder=''></p>" +
            "                        <p>邮政编码：<input type='text' placeholder=''></p>" +
            "                    </div>" +
            "                    <div class='main-intro'>" +
            "                        <span>简&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介：</span>" +
            "                        <textarea cols='100' rows='10'></textarea>" +
            "                        <input type='submit' value='确认修改'>" +
            "                    </div>");
    }
</script>