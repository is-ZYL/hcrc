<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>TalentOrder</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/editors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/last.css">
</head>
<body>
<div class="dingdan-head">
    <div class="mediate">
        <div class="head-header">
            <div class="header-left">
                <div>
                    <img src="${pageContext.request.contextPath}/EnterpriseFile/img/hcrclogo.jpg" alt="">
                </div>
                <div class="left-left">
                    <span>|</span>
                    <a href="${pageContext.request.contextPath}/hr/hr_hrmain">返回首页</a>
                </div>
            </div>
            <div class="header-right">
                <div>
                    <p>东方嘉盛集团</p>
                    <p><a href="${pageContext.request.contextPath}/hr/hrExit">退出账号</a></p>
                </div>
                <div>
                    <img src="${pageContext.request.contextPath}/EnterpriseFile/img/baitu.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="dingdan-conter">
    <div class="mediate">
        <div class="conter-left">
        	<p><img src="${pageContext.request.contextPath}/EnterpriseFile/img/qiyejianjie.jpg" alt=""><a herf="${pageContext.request.contextPath}/hr/hr_enterprise"><span>企业简介</span></a></p>
            <p><img src="${pageContext.request.contextPath}/EnterpriseFile/img/tuijianrencai.jpg" alt=""><a herf=""><span>劳务详情</span></a></p>
            <p><img src="${pageContext.request.contextPath}/EnterpriseFile/img/xiaoxizhongxin.jpg" alt=""><a herf="${pageContext.request.contextPath}/hr/hr_details"><span>职位详情</span></a></p>
            <p><img src="${pageContext.request.contextPath}/EnterpriseFile/img/zhanghaoanquan.jpg" alt=""><a herf=""><span>账号安全</span></a></p>
            
        </div>
        <div class="conter-right">
            <div class="right-top">
               
                <a href=""><sapn> >编辑职位</sapn></a>
            </div>
            <div class="edit-one">
                <div class="one-editors">
                    <span>编辑职位</span>
                </div>
            </div>
            <div class="position-name">
                <div class="position-center">
                    <div class="position-name-left">
                        <div class="position-name-left-keyword">
                            <p><span>职位名称</span></p>
                            <p><span>关键字</span></p>
                        </div>
                        <div class="position-name-left-keyword-down">
                            <p><span>职位编号</span></p>
                            <p><span>薪资</span></p>
                            <p><span>年龄要求</span></p>
                            <p><span>学历要求</span></p>
                            <p><span>工作年限</span></p>
                            <p><span>工作性质</span></p>
                            <p><span>招聘人数</span></p>
                        </div>
                    </div>
                    <div class="position-name-right">
                        <p>
                            <input type="text"><span> 必填项</span>
                        </p>
                        <p>
                            <input type="text"><span> 必填项</span>
                        </p>
                        <p>
                            <span>请输入最多10个关键词，每个词不超过6个中文字或12个英文字母，用空格隔开</span>
                        </p>
                        <p>
                            <input type="text">
                        </p>
                        <p>
                            <select>
                                <option>月薪</option>
                            </select>
                            <select>
                                <option>5000-10000</option>
                            </select>
                            <span> 附加福利</span>
                            <input type="text"><span> 必填项，附加福利可以为0</span>
                        </p>
                        <p>
                            <input type="text"><span>至</span><input type="text"><span>岁</span> <span> 可填项，默认为18岁以上，无年龄限制</span>
                        </p>
                        <p>
                            <select>
                                <option>专科以上</option><span> 必填项</span>
                            </select>
                        </p>
                        <p>
                            <select>
                                <option>5年以上</option><span>必填项</span>
                            </select>
                        </p>
                        <p>
                            <select>
                                <option>全职</option><span> 必填项</span>
                            </select>
                        </p>
                        <p>
                            <input type="text"><span> 必填项</span>
                        </p>
                    </div>
                </div>
            </div>

            <div class="end-date">
                <div class="end-date-surround">
                    <div class="end-date-surround-release-city">
                        <div class="release-city-top">
                            <p><span>结束日期</span></p>
                            <p><span>发布城市</span></p>
                            <p><span>工作地点</span></p>
                        </div>
                        <div class="release-city-down">
                            <p><span>结束日期</span></p>
                        </div>
                    </div>
                    <div class="end-date-surround-region">
                        <p>
                            <input type="text"> <span> 结束日期</span>
                        </p>
                        <p>
                            <select>
                                <option>省</option>
                            </select>
                            <select>
                                <option>市</option>
                            </select>
                            <select>
                                <option>区</option>
                            </select><span>必填项</span>
                        </p>
                        <p>
                            <select>
                                <option>省</option>
                            </select>
                            <select>
                                <option>市</option>
                            </select>
                            <select>
                                <option>区</option>
                            </select><span>必填项</span>
                        </p>
                        <p><input type="text"><span>必填项</span></p>
                        <p>
                            <input type="text"><span>必填项，最长不超过30天</span>
                        </p>
                    </div>
                </div>
            </div>

            <div class="post-advantage">
                <div class="post-advantage-encircle">
                    <div class="post-advantage-encircle-left">
                        <p><span>岗位优势</span></p>
                        <p><span>岗位描述</span></p>
                        <p><span>任职要求</span></p>
                    </div>
                    <div class="post-advantage-encircle-right">
                        <div class="post-advantage-encircle-right-text">
                            <p><input type="text"><span>必填项</span></p>
                            <p><span>请输入最多10个关键词，每个词不超过6个中文字或12个英文字母，间用空格隔开</span></p>
                        </div>
                        <div class="post-advantage-encircle-right-textarea">
                            <p><input type="textarea"></p>
                            <p><span>必填项</span>&nbsp;&nbsp;<span>154/2000</span></p>
                        </div>
                        <div class="post-advantage-encircle-right-textare2">
                            <p><input type="textarea"></p>
                            <p><span>必填项</span>&nbsp;&nbsp;<span>154/2000</span></p>
                        </div>
                        <div class="post-advantage-encircle-right-button">
                            <p><input type="button" value="保存"> <input type="button" value="取消"> <input type="button" value="删除"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="lao-footer">
    <div class="footer-content mediate">
        <div class="footer-right"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/logo.jpg" alt=""></div>
        <div class="content">
            <p>渝ICP备11015194-1</p>
            <p>Copyright ©2017-2018 www.huohr.com</p>
        </div>
        <div class="footer-left"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/Hibuick.jpg" alt=""></div>
    </div>

</div>
</body>
