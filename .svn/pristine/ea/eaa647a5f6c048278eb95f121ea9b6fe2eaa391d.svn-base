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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/management-headhunter-content.css">
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
                    <li ><a href="" class="active">编辑职位</a></li>
                </ul>
            </div>
            <div class="right-products">
                <div class="main selected">
                    <form action="">
                        <p>
                            <label for="NAME">职位名称：</label>
                            <input type="text" placeholder="必填项" id="NAME" name="hp_name">
                        </p>
                        <p>
                            <label for="COMHPANY">企业名称：</label>
                            <input type="text" placeholder="必填项,前端不显示，请放心填写" id="COMHPANY" name="hp_comhpanyName">
                        </p>
                        <p>
                            <label for="KEYWORD">关键字&nbsp;&nbsp;&nbsp;：</label>
                            <input type="text" placeholder="必填项,每个关键字用空格隔开" id="KEYWORD" name="hp_Keyword">
                        </p>
                        <p>
                            <label for="jobNumber">职位编号：</label>
                            <input type="text" id="jobNumber" name="hp_jobNumber">
                        </p>
                        <p>
                            <label>薪&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;资：</label>
                            <select name="hp_additionalWelfare" id="">
                                <option value="2000">2000-3000</option>
                                <option value="3000">3000-5000</option>
                                <option value="5000">5000-7000</option>
                                <option value="8000">8000-10000</option>
                                <option value="10000">10000+</option>
                            </select>
                            附加福利：<input type="text" id="additionalWelfare" name="hp_additionalWelfare" placeholder="附加福利可以为0">
                        </p>
                        <p>
                            <label>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</label>
                           从 <input type="text" name="hp_minAge">
                            到 <input type="text" name="hp_maxAge"> 岁
                        </p>
                        <p>
                            <label>学历要求：</label>
                            <select name="hp_eduRequirements" >
                                <option value="高中">高中 / 中职 / 中专</option>
                                <option value="大专及以上">大专及以上</option>
                                <option value="本科及以上">本科及以上</option>
                                <option value="研究生及以上">研究生及以上</option>
                                <option value="博士">博士</option>
                            </select>
                        </p>
                        <p>
                            <label>工作年限：</label>
                            <select name="hp_exhperience" >
                                <option value="应届生">应届生</option>
                                <option value="1年及以下">1年及以下</option>
                                <option value=3年"">1-3年</option>
                                <option value="5年">3-5年</option>
                                <option value="10年">5-10年</option>
                                <option value="10年">10年+</option>
                            </select>
                        </p>

                        <p>
                            <label for="recruitsNumber">招聘人数：</label>
                            <input type="text" id="recruitsNumber" name="hp_recruitsNumber" placeholder="必填"> 人
                        </p>
                        <p>
                            <label>工作性质：</label>
                            <select name="hp_jobNature" >
                                <option value="全职">全职</option>
                                <option value="兼职">兼职</option>
                                <option value="实习">实习</option>
                            </select>
                        </p>
                        <p>
                            <label for="recruitsNumber">发布城市：</label>
                            <select>
                                <option value="">省</option>
                            </select>
                            <select>
                                <option value="">市</option>
                            </select>
                            <select>
                                <option value="">区</option>
                            </select>
                        </p>
                        <p>
                            <label for="recruitsNumber">工作地点：</label>
                            <select>
                                <option value="">省</option>
                            </select>
                            <select>
                                <option value="">市</option>
                            </select>
                            <select>
                                <option value="">区</option>
                            </select>

                        </p>
                        <p>
                            <label >详细地址：</label>
                            <input type="text" placeholder="工作地点详细地址">
                        </p>
                        <p>
                            <label for="endTime">结束日期：</label>
                             <input type="date" id="endTime" name="ld_endTime" placeholder="必填项，最长不能超过30天">
                        </p>
                        <p>
                            <label for="jobAdvantage">岗位优势：</label>
                             <input type="text" name="ld_jobAdvantage" id="jobAdvantage" placeholder="必填项">
                        </p>
                        <p>
                            <label for="jobAdvantage">岗位描述：</label>
                            <textarea cols="48" rows="10" name="ld_JobDescription"></textarea>
                        </p>
                        <p>
                            <label for="jobAdvantage">任职要求：</label>
                            <textarea cols="48" rows="10" name="ld_tenureRequirements"></textarea>
                        </p>
                        <input type="submit" value="确认修改" id="submit">
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