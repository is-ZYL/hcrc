<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的简历</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/publicFolder/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/publicFolder/main-user-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/userResume2/userResume2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/UserFile/css/publicFolder/reg-user-footer.css">
    <!--设置浏览器上面显示的logo-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/UserFile/img/userResume2/Windows 照片查看器墙纸.jpg">
</head>
<script src="${pageContext.request.contextPath}/UserFile/jq/publicFolder/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/UserFile/jq/userResume2/userResume2.js"></script>
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
                <img class="logo" src="${pageContext.request.contextPath}/UserFile/img/userResume2/hcrclogo.jpg" alt="">
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
                <li class="bb" value="2"><i class="n-icon two"></i><span>我的简历</span></li>
                <li value="3"><i class="n-icon three"></i><span>职位投递</span></li>
                <li value="4"><i class="n-icon four "></i><span>职位收藏</span></li>
                <li value="5"><i class="n-icon five"></i><span>所属学苑</span></li>
                <li value="6"><i class="n-icon six"></i><span>消息中心</span></li>
                <span class="messageNum">18</span>
                <li value="7"><i class="n-icon seven"></i><span>屏蔽企业</span></li>
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
            <p>
                <span>简历中心</span>
                <span>></span>
                <span>我的简历</span>
            </p>

            <div class="headers">
                <div>
                    <div class="resumeInfo-left">
                        <p>我的前端开发简历</p>
                        <p>2017.05.12 刷新</p>
                        <p>已设置快速投递</p>
                    </div>
                    <div class="resumeInfo-right">
                        <ul>
                            <li>
                                <img src="${pageContext.request.contextPath}/UserFile/img/userResume2/flushResume.jpg" alt="">
                                <p>刷新简历</p>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/UserFile/img/userResume2/delete.png" alt="">
                                <p>删除</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="otherInfo">
                <ul>

                    <li class="aaa">
                        <div>
                            <span>基本资料</span>
                            <span class="execute">编辑</span>
                        </div>
                    </li>
${requestScope.resumes }
                    <li>
                        <div class="head_logo">
                            <img src="${pageContext.request.contextPath}/UserFile/img/userResume2/Windows%20照片查看器墙纸.jpg" alt="">
                        </div>
                        <div class="resume_basicInfo">
                            <p>张小胖</p>
                            <p>
                                <span>男  |</span>
                                <span>27岁  |</span>
                                <span>现居成都高新区  |</span>
                                <span>13547441154</span>
                            </p>
                            <p>
                                <span>安邦保险集团西南研发中心  |</span>
                                <span>产品经理  |</span>
                                <span>5年工作经验</span>
                            </p>
                            <p>
                                <span>邮箱：11543@qq.com  |</span>
                                <span>QQ：11543  |</span>
                                <span>微信：abeaef1171</span>
                            </p>
                        </div>
                    </li>

                    <li class="aaa">
                        <div>
                            <span>自我评价</span>
                            <span class="execute">编辑</span>
                        </div>
                    </li>

                    <li class="myIntroduce">
                        <span>
                            诚实、稳重、勤奋、积极上进，拥有丰富的大中型企业管理经验，
                        有较强的团队管理能力，良好的沟通协调组织能力，敏锐的洞察力，
                        自信是我的魅力。我有着良好的形象和气质，健康的体魄和乐观的精神使我能
                        全身心地投入到工作当中。
                        </span>
                    </li>


                    <li class="aaa">
                        <div>
                            <span>工作经历</span>
                            <span class="execute">添加</span>
                        </div>
                    </li>

                    <li>
                        <ul class="workExperience">
                            <li>
                                <p>
                                    <span>2012.03 </span>-<span>2012.08</span>
                                    <span>西游网</span>
                                    <span> | </span>
                                    <span>视觉设计师</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>
                                        诚实、稳重、勤奋、积极上进，拥有丰富的大中型企业管理经验，
                                    有较强的团队管理能力，良好的沟通协调组织能力，敏锐的洞察力，
                                    自信是我的魅力。我有着良好的形象和气质，
                                    健康的体魄和乐观的精神使我能全身心地投入到工作当中。
                                    </span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>2012.03 </span>-<span>2012.08</span>
                                    <span>西游网</span>
                                    <span> | </span>
                                    <span>视觉设计师</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>
                                        诚实、稳重、勤奋、积极上进，拥有丰富的大中型企业管理经验，
                                    有较强的团队管理能力，良好的沟通协调组织能力，敏锐的洞察力，
                                    自信是我的魅力。我有着良好的形象和气质，
                                    健康的体魄和乐观的精神使我能全身心地投入到工作当中。     诚实、稳重、勤奋、积极上进，拥有丰富的大中型企业管理经验，
                                    有较强的团队管理能力，良好的沟通协调组织能力，敏锐的洞察力，
                                    自信是我的魅力。我有着良好的形象和气质，
                                    健康的体魄和乐观的精神使我能全身心地投入到工作当中。     诚实、稳重、勤奋、积极上进，拥有丰富的大中型企业管理经验，
                                    有较强的团队管理能力，良好的沟通协调组织能力，敏锐的洞察力，
                                    自信是我的魅力。我有着良好的形象和气质，
                                    健康的体魄和乐观的精神使我能全身心地投入到工作当中。     诚实、稳重、勤奋、积极上进，拥有丰富的大中型企业管理经验，
                                    有较强的团队管理能力，良好的沟通协调组织能力，敏锐的洞察力，
                                    自信是我的魅力。我有着良好的形象和气质，
                                    健康的体魄和乐观的精神使我能全身心地投入到工作当中。
                                    </span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>2012.03 </span>-<span>2012.08</span>
                                    <span>西游网</span>
                                    <span> | </span>
                                    <span>视觉设计师</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>
                                        诚实、稳重、勤奋、积极上进，拥有丰富的大中型企业管理经验，
                                    有较强的团队管理能力，良好的沟通协调组织能力，敏锐的洞察力，
                                    自信是我的魅力。我有着良好的形象和气质，
                                    健康的体魄和乐观的精神使我能全身心地投入到工作当中。
                                    </span>
                                </p>
                            </li>
                        </ul>
                    </li>


                    <li class="aaa">
                        <div>
                            <span>项目经验</span>
                            <span class="execute">添加</span>
                        </div>

                    </li>
                    <li>
                        <ul class="workExperience projectExperience">
                            <li>
                                <p>
                                    <span>2012.03 </span>-<span>2012.08</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>系统集成B端项目设计</span>
                                    <span> | </span>
                                    <span>项目负责人</span>

                                </p>
                                <p>
                                    <span>
                                        诚实守信，具有良好的感恩意识；勤勉务实，注重理论与实践的有效结合；
                                        善于创新，拥有优异的创造性思维；责任心强，对待工作尽职尽责；
                                        进取意识烈强烈，虚心好学；有良好的团队组织能力及协作精神，具备良好的人际关系；
                                        能承担较大的工作量及较强的工作压力。
                                    </span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>2012.03 </span>-<span>2012.08</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>系统集成B端项目设计</span>
                                    <span> | </span>
                                    <span>项目负责人</span>

                                </p>
                                <p>
                                    <span>
                                        诚实守信，具有良好的感恩意识；勤勉务实，注重理论与实践的有效结合；
                                        善于创新，拥有优异的创造性思维；责任心强，对待工作尽职尽责；
                                        进取意识烈强烈，虚心好学；有良好的团队组织能力及协作精神，具备良好的人际关系；
                                        能承担较大的工作量及较强的工作压力。
                                    </span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>2012.03 </span>-<span>2012.08</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>系统集成B端项目设计</span>
                                    <span> | </span>
                                    <span>项目负责人</span>

                                </p>
                                <p>
                                    <span>
                                        诚实守信，具有良好的感恩意识；勤勉务实，注重理论与实践的有效结合；
                                        善于创新，拥有优异的创造性思维；责任心强，对待工作尽职尽责；
                                        进取意识烈强烈，虚心好学；有良好的团队组织能力及协作精神，具备良好的人际关系；
                                        能承担较大的工作量及较强的工作压力。
                                    </span>
                                </p>
                            </li>
                        </ul>
                    </li>


                    <li class="aaa">
                        <div>
                            <span>教育经历</span>
                            <span class="execute">添加</span>
                        </div>
                    </li>

                    <li>
                        <ul class="workExperience eduExperience">
                            <li>
                                <p>
                                    <span>重庆师范大学</span>
                                    <span>2008.09</span>-<span>2012.07</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>艺术系</span>
                                    <span>|</span>
                                    <span>视觉传达专业</span>
                                    <span>|</span>
                                    <span>硕士</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>重庆师范大学</span>
                                    <span>2008.09</span>-<span>2012.07</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>艺术系</span>
                                    <span>|</span>
                                    <span>视觉传达专业</span>
                                    <span>|</span>
                                    <span>硕士</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>重庆师范大学</span>
                                    <span>2008.09</span>-<span>2012.07</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>艺术系</span>
                                    <span>|</span>
                                    <span>视觉传达专业</span>
                                    <span>|</span>
                                    <span>硕士</span>
                                </p>
                            </li>
                        </ul>

                    </li>


                    <li class="aaa">
                        <div>
                            <span>培训经历</span>
                            <span class="execute">添加</span>
                        </div>
                    </li>

                    <li>
                        <ul class="workExperience eduExperience">
                            <li>
                                <p>
                                    <span>xxx培训学校</span>
                                    <span>2008.09</span>-<span>2012.07</span>
                                    <span class="execute">删除</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>UI设计</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>xxx培训学校</span>
                                    <span>2008.09</span>-<span>2012.07</span>
                                    <span class="execute">删除</span>
                                    <span class="execute">编辑</span>
                                </p>
                                <p>
                                    <span>UI设计</span>
                                </p>
                            </li>
                        </ul>
                    </li>


                    <li class="aaa">
                        <div>
                            <span>其他特长</span>
                            <span class="execute">编辑</span>
                        </div>
                    </li>
                        <li>
                            <ul class="workExperience otherSpecialties">
                                <li>
                                    <p><span>学校艺术大赛一等奖</span></p>
                                    <p><span>校先进学生会成员</span></p>
                                    <p><span>C1驾照</span></p>
                                </li>
                            </ul>
                        </li>





                    <li class="aaa">
                        <div>
                            <span>个人空间</span>
                            <span class="execute">编辑</span>
                        </div>
                    </li>

                    <li>
                        <ul class="workExperience personalSpace">
                            <li>
                                <p><span>http://t.cn/RJbVLI9</span></p>
                            </li>
                        </ul>
                    </li>


                    <li class="aaa">
                        <div>
                            <span>软件技能</span>
                            <span class="execute">编辑</span>
                        </div>
                    </li>

                    <li>
                        <ul class=" softwareSkills">
                            <li>
                                <p>
                                    <span>PHOTOSHOP</span>
                                    <span class="skillfulBar">
                                    <span ></span>
                                    </span>
                                    <span>熟练</span>
                                </p>
                            </li>

                            <li>
                                <p>
                                    <span>PHOTOSHOP</span>
                                    <span class="skillfulBar">
                                    <span ></span>
                                    </span>
                                    <span>熟练</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>PHOTOSHOP</span>
                                    <span class="skillfulBar">
                                    <span ></span>
                                    </span>
                                    <span>熟练</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>PHOTOSHOP</span>
                                    <span class="skillfulBar">
                                    <span ></span>
                                    </span>
                                    <span>熟练</span>
                                </p>
                            </li>
                        </ul>
                    </li>




                </ul>

            </div>

        </div>
    </div>


</div>

<!--用户注册界面脚部-->
<div class="user-footer">
    <div class="footer-content mediate">
        <div class="footer-right"><img src="${pageContext.request.contextPath}/UserFile/img/userResume2/logo.jpg" alt=""></div>
        <div class="content">
            <p>渝ICP备11015194-1</p>
            <p>Copyright ©2017-2018 www.huohr.com</p>
        </div>
        <div class="footer-left"><img src="${pageContext.request.contextPath}/UserFile/img/userResume2/Hibuick.jpg" alt=""></div>
    </div>
</div>
</body>
</html>