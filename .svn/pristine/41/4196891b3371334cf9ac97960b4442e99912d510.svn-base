<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/HeadhunterFile/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/HeadhunterFile/css/main-headhunter-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/HeadhunterFile/css/main-headhunter-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/HeadhunterFile/css/reg-user-footer.css">
</head>
<body>
<!--猎头界面头部-->
<div class="user-head">
    <div class="head-top">
        <div class="mediate">
                <span>
                    <a href="#">个人入口 |</a>
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
                <img class="logo" src="${pageContext.request.contextPath}/HeadhunterFile/img/hcrclogo.jpg" alt="">
            </div>
            <div class="head-bottom-nav">
                <ul>
                    <li class="current"><a href="${pageContext.request.contextPath}/main">首页</a></li>
                    <li><a href="">招聘</a></li>
                    <li><a href="${pageContext.request.contextPath}/hr/hr_hrmain">HR联盟</a></li>
                    <li><a href="">培训联盟</a></li>
                    <li><a href="">劳务派遣</a></li>
                    <li><a href="">猎头</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--猎头内容-->
<div class="user-content">
    <div class="mediate">
        <div class="content-left">
            <div class="content-left-advertising">
                <img src="${pageContext.request.contextPath}/HeadhunterFile/img/banner.jpg" alt="">
            </div>
            <div class="perch"></div>
            <div class="content-left-search">
                <div class="content-left-search-top">
                    <div class="perch"></div>
                    <form action="" method="post">
                        <select>
                            <option>职位</option>
                        </select>
                    <input type="text" name="keyCode" placeholder="输入关键字，入:系统架构师">
                    <input type="button" value="搜索" onclick="inputSearch()">
                </form>

                    <p>
                        <i>热门搜索:</i>
                        <a onclick="searchPost('java')">java</a>
                        <a onclick="searchPost('视觉设计')">视觉设计</a>
                        <a onclick="searchPost('.net')">.net</a>
                        <a onclick="searchPost('u3d')">u3d</a>
                        <a onclick="searchPost('产品经理')">产品经理</a>
                        <a onclick="searchPost('游戏原画师')">游戏原画师</a>
                    </p>
                </div>
                <div class="content-left-search-bottom">
                    <ul class="tab">
                        <li class="active"><a href="">互联网</a></li>
                        <li><a href="">金融/证券</a></li>
                        <li><a href="">运营</a></li>
                        <li><a href="">销售</a></li>
                        <li><a href="">行政/职能</a></li>
                        <li><a href="">医疗健康</a></li>
                        <li><a href="">物流</a></li>
                        <li><a href="">家政</a></li>
                        <li><a href="">更多</a></li>
                    </ul>
                    <div class="industry">
                        <div class="main selected">
                            <ol>
                                <li><a href="">产品经理</a></li>
                                <li><a onclick="searchPost('java')">JAVA</a></li>
                                <li><a href="">.NET</a></li>
                                <li><a href="">PHP</a></li>
                                <li><a href="">UX</a></li>
                                <li><a href="">UI</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>
                                <li><a href="">游戏原画</a></li>


                            </ol>
                        </div>
                        <div class="main">2</div>
                        <div class="main">3</div>
                        <div class="main">4</div>
                        <div class="main">5</div>
                        <div class="main">6</div>
                        <div class="main">7</div>
                        <div class="main">8</div>
                        <div class="main">9</div>
                    </div>
                </div>
            </div>
            <div class="perch"></div>
            <div class="content-left-post">
            <c:choose>
            <c:when test="${sessionScope.LOG_HEADHUNTING eq null}">
                    <div class="post-top">
                    <p class="active">推荐候选人</p>
                </div>
                <div class="post-content">
                    <ul>
                        <!--头部建议不要动-->
                        <li>
                            <p><span>人才信息</span><span>匹配职位</span></p>
                        </li>
                        <!--以下从数据库里面获取-->
                         <c:forEach begin="0" end="${fn:length(requestScope.recommend.list)-1}" var="i">
                        	<li>
                            <i class="userLogo">
                                <span><img src="${pageContext.request.contextPath}/UserFile/img/${requestScope.recommend.list[i].u_header}" alt="" style="width:48px"></span>
                            </i>
                            <p>
                                <span><i>${requestScope.recommend.list[i].resume[0].r_name}</i><i>${requestScope.recommend.list[i].resume[0].r_address}</i></span>
                                <span><i>${requestScope.recommend.list[i].resume[0].jobExperience[0].je_job}</i><i>${requestScope.recommend.list[i].resume[0].r_experience}年</i><i>${requestScope.recommend.list[i].resume[0].educationalExperience[0].education}/${requestScope.recommend.list[i].resume[0].educationalExperience[0].school_name}</i></span>
                            </p>
                            <p>
                                <span>${requestScope.recommend.list[i].resume[0].jobExperience[0].je_job}</span>
                                <span><i>${requestScope.recommend.list[i].resume[0].r_sendtime}</i><a href="">刷新简历</a></span>
                            </p>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="post-bottom">
                    <p>
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain">< 第一页</a></span>
                        <c:if test="${requestScope.recommend.pageCount eq 1 || requestScope.recommend.pageNow eq 1}">
                        <span><a>< 上一页</a></span>
                        </c:if>
                         <c:if test="${requestScope.recommend.pageNow != 1}">
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain?pageNow=${requestScope.recommend.pageNow-1}">< 上一页</a></span>
                        </c:if>
                        <span><a href="">${requestScope.recommend.pageNow}/${requestScope.recommend.pageCount}</a></span>
                        <c:if test="${requestScope.recommend.pageNow < requestScope.recommend.pageCount}">
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain?pageNow=${requestScope.recommend.pageNow+1}">下一页  ></a></span>
                        </c:if>
                        <c:if test="${requestScope.recommend.pageNow >= requestScope.recommend.pageCount}">
                        <span><a>下一页 ></a></span>
                        </c:if>
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain?pageNow=${requestScope.recommend.pageCount}">最末页 ></a></span>
                    </p>
                </div>
            </c:when>
            <c:when test="${sessionScope.LOG_HEADHUNTING != null}">
                   <div class="post-top">
                    <p class="active">推荐候选人</p>
                    <p>新入人才</p>
                </div>
                <div class="post-content main selected">
                    <ul>
                        <!--头部建议不要动-->
                        <li>
                            <p><span>人才信息</span><span class="matching">匹配职位</span></p>
                        </li>
                        <!--以下从数据库里面获取-->
                        <c:forEach begin="0" end="${fn:length(requestScope.recommend.list)-1}" var="i">
                        	<li>
                            <i class="userLogo">
                            
                                <span><img src="${pageContext.request.contextPath}/UserFile/img/${requestScope.recommend.list[i].u_header}" alt="" style="width:48px" alt=""></span>
                            </i>
                            <p>
                                <span><i>${requestScope.recommend.list[i].resume[0].r_name}</i><i>${requestScope.recommend.list[i].resume[0].r_address}</i></span>
                                <span><i>${requestScope.recommend.list[i].resume[0].jobExperience[0].je_job}</i><i>${requestScope.recommend.list[i].resume[0].r_experience}年</i><i>${requestScope.recommend.list[i].resume[0].educationalExperience[0].education}/${requestScope.recommend.list[i].resume[0].educationalExperience[0].school_name}</i></span>
                            </p>
                            <p>
                                <span>${requestScope.recommend.list[i].resume[0].jobExperience[0].je_job}</span>
                                <span><i>${requestScope.recommend.list[i].resume[0].r_sendtime}</i><a href="">刷新简历</a></span>
                            </p>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="post-content main">
                    <ul>
                        <!--头部建议不要动-->
                        <li>
                            <p><span>ren才信息</span><span class="matching">匹配职位</span></p>
                        </li>
                        <!--以下从数据库里面获取-->
                        <li>
                            <i class="userLogo">
                                <span><img src="${pageContext.request.contextPath}/UserFile/img/default.jpg" alt="" style="width:48px" alt=""></span>
                            </i>
                            <p>
                                <span><i>顾某某</i><i>成都/成华区</i></span>
                                <span><i>数据运营经理</i><i>8-12k</i><i>本科/5年</i></span>
                            </p>
                            <p>
                                <span>策划经理</span>
                                <span><i>2018.05.05</i><a href="">刷新简历</a></span>
                            </p>
                        </li>
                </div>
                <div class="post-bottom main">
                     <p class="main selected">
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain">< 第一页</a></span>
                        <c:if test="${requestScope.recommend.pageCount eq 1 || requestScope.recommend.pageNow eq 1}">
                        <span><a>< 上一页</a></span>
                        </c:if>
                         <c:if test="${requestScope.recommend.pageNow != 1}">
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain?pageNow=${requestScope.recommend.pageNow-1}">< 上一页</a></span>
                        </c:if>
                        <span><a href="">${requestScope.recommend.pageNow}/${requestScope.recommend.pageCount}</a></span>
                        <c:if test="${requestScope.recommend.pageNow < requestScope.recommend.pageCount}">
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain?pageNow=${requestScope.recommend.pageNow+1}">下一页 ></a></span>
                        </c:if>
                        <c:if test="${requestScope.recommend.pageNow >= requestScope.recommend.pageCount}">
                        <span><a>下一页 ></a></span>
                        </c:if>
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain?pageNow=${requestScope.recommend.pageCount}">最末页 ></a></span>
                    </p>
                    <p class="main">
                        <span><a href="">< 第一页</a></span>
                        <span><a href="">< 上一页</a></span>
                        <span><a href="">3/58</a></span>
                        <span><a href="">下一页 ></a></span>
                        <span><a href="">最末页 ></a></span>
                    </p>
                </div>
            </c:when>
                </c:choose>
            </div>
        </div>
        <div class="content-right">
            <div class="content-right-log">
                  <c:choose>
                  	<c:when test="${sessionScope.LOG_HEADHUNTING eq null}">
                  		<h3>猎头账号登录</h3>
               			 <form action="">
                    	<input type="text" name="usernmae" placeholder="用户名" class="username" >
                    	<i><img src="${pageContext.request.contextPath}/HeadhunterFile/img/username.jpg" alt=""></i>
                    	<input type="password" name="password" placeholder="密码" class="password">
                    	<i><img src="${pageContext.request.contextPath}/HeadhunterFile/img/password.jpg" alt=""></i>
                    	<a href="${pageContext.request.contextPath}/headhunter_reg">注册账号</a>
                    	<input type="button" value="登录" onclick="headhunterLog()">
               			 </form>
                  	</c:when>
                  	<c:when test="${sessionScope.LOG_HEADHUNTING != null}">
                  		<div class="content-right-log-data">
                        <p><img src="${pageContext.request.contextPath}/HeadhunterFile/img/${LOG_HEADHUNTING.h_logo}" alt=""></p>
                        <p>
                            <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_account">${LOG_HEADHUNTING.h_contacts}</a></span>
                            <span><a href="">${LOG_HEADHUNTING.h_companyFullName}</a></span>
                        </p>
                         <i><a href="${pageContext.request.contextPath}/headhunter/headhunter_exit"><img src="${pageContext.request.contextPath}/HeadhunterFile/img/exit.jpg" alt="" style="width: 14px;"></a></i>
                    </div>
                    <div class="content-right-log-operate">
                        <ol>
                            <li>
                                <span><img src="${pageContext.request.contextPath}/HeadhunterFile/img/user-logo.jpg" alt=""></span>
                                <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterInformation">猎头中心</a></span>
                            </li>
                            <li>
                                <span><img src="${pageContext.request.contextPath}/HeadhunterFile/img/flush-logo.jpg" alt=""></span>
                                <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_talentPool">人才库</a></span>
                            </li>
                            <li>
                                <span><img src="${pageContext.request.contextPath}/HeadhunterFile/img/history-logo.jpg" alt=""></span>
                                <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_positionManage">猎头职位</a></span>
                            </li>
                            <li>
                                <span><img src="${pageContext.request.contextPath}/HeadhunterFile/img/messa-logo.jpg" alt=""></span>
                                <span><a href="">消息</a></span>
                            </li>
                        </ol>
                    </div>
                  	</c:when>
                  </c:choose>

            </div>
            <div class="perch"></div>
            <div class="content-right-talent">
           		 <c:if test="${requestScope.topTalents.pageNow < requestScope.topTalents.pageCount}">
                <p><span>高端人才</span><span> <a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain?pageNowTalents=${requestScope.topTalents.pageNow + 1}">>></a></span></p>
                </c:if>
           		 <c:if test="${requestScope.topTalents.pageNow >= requestScope.topTalents.pageCount}">
                <p><span>高端人才</span><span> <a>>></a></span></p>
                </c:if>
                <ul>
                <c:forEach begin="0" end="${fn:length(requestScope.topTalents.list)-1}" var="t">
                    <li>
                        <p><img src="${pageContext.request.contextPath}/UserFile/img/${requestScope.topTalents.list[t].u_header}" alt="" style="width:48px" alt=""></p>
                        <p>
                            <span>${requestScope.topTalents.list[t].resume[0].r_rname}</span>
                            <span>${requestScope.topTalents.list[t].resume[0].r_experience}年经验</span>
                        </p>
                    </li>
                    </c:forEach>
                </ul>
            </div>
        </div>

    </div>
</div>
<!--用户注册界面脚部-->
<div class="user-footer">
    <div class="footer-content mediate">
        <div class="footer-right"><img src="${pageContext.request.contextPath}/HeadhunterFile/img/logo.jpg" alt=""></div>
        <div class="content">
            <p>渝ICP备11015194-1</p>
            <p>Copyright ©2017-2018 www.huohr.com</p>
        </div>
        <div class="footer-left"><img src="${pageContext.request.contextPath}/HeadhunterFile/img/Hibuick.jpg" alt=""></div>
    </div>
</div>
</body>
</html>
<script src="${pageContext.request.contextPath}/HeadhunterFile/jq/jquery-1.11.1.min.js"></script>
<script>
    $(function () {
        $(".tab>li").mouseenter(function () {
            $(this).addClass("active").siblings().removeClass("active");
            $(".main").eq($(this).index()).addClass("selected").siblings().removeClass("selected");
        });
        headhunterLog.clicktop();
    })
    /* 猎头登录   */
	function headhunterLog() {
   var username= $(".username").val();
   var password= $(".password").val();
   $.ajax({
       type:"post",
       dataType:"json",
       data:{h_username:username,h_password:password},
       url:"${pageContext.request.contextPath}/headhunter/headhunter_logDo" , 
    	success:function (data) {
               if(data != null){
            	  
            	   $(".content-right-log").html("<div class='content-right-log-data'> " +
            			"   <p><img src='${pageContext.request.contextPath}/HeadhunterFile/img/"+data.headhunter.h_logo+"' alt=''></p>  " +
            			" <p>  "+
            			" <span><a href='${pageContext.request.contextPath}/headhunter/headhunter_account'>"+data.headhunter.h_contacts+"</a></span>  "+
            			"  <span><a href=''>"+data.headhunter.h_companyFullName+"</a></span> "+
            			"   </p> "+
            			"    <i><a href='${pageContext.request.contextPath}/headhunter/headhunter_exit'><img src='${pageContext.request.contextPath}/HeadhunterFile/img/exit.jpg' alt=''style='width: 14px;''></a></i> "+
            			"   </div>  "+
            			"  <div class='content-right-log-operate'>  "+
            			"   <ol>  "+
            			"  <li>  "+
            			"    <span><img src='${pageContext.request.contextPath}/HeadhunterFile/img/user-logo.jpg' alt=''></span> "+
            			"  <span><a href=''>猎头中心</a></span>  "+
            			"  </li>  "+
            			"  <li>  "+
            			"    <span><img src='${pageContext.request.contextPath}/HeadhunterFile/img/flush-logo.jpg' alt=''></span> "+
            			"  <span><a href='${pageContext.request.contextPath}/headhunter/headhunter_talentPool'>人才库</a></span>  "+
            			"  </li>  "+
            			"  <li>  "+
            			"    <span><img src='${pageContext.request.contextPath}/HeadhunterFile/img/history-logo.jpg' alt=''></span> "+
            			"  <span><a href='${pageContext.request.contextPath}/headhunter/headhunter_positionManage'>猎头职位</a></span>  "+
            			"  </li>  "+
            			"  <li>  "+
            			"    <span><img src='${pageContext.request.contextPath}/HeadhunterFile/img/messa-logo.jpg' alt=''></span> "+
            			"  <span><a href=''>消息</a></span>  "+
            			"  </li>  "+
            			"  </ol>  "+
            			"  </div>  "
            	   );
            	   $(".content-left-post").html("<div class='post-top'>"+
                         "  <p class='active'>推荐候选人</p>"+
                         "  <p>新入人才</p>"+
                     "  </div>"+
                     "  <div class='post-content main selected'>"+
                        "   <ul>"+
                               <!--头部建议不要动-->
                             "  <li>"+
                              "     <p><span>人才信息</span><span class='matching'>匹配职位</span></p>"+
                            "   </li>");
                               <!--以下从数据库里面获取-->
                               for (var i = 0; i < data.recommend.list.length; i++) {
                               $(".post-content.main:nth-child(2) ul").append("   <li>"+
                                "   <i class='userLogo'>"+
                               "        <span><img src='${pageContext.request.contextPath}/UserFile/img/"+data.recommend.list[i].u_header+"' alt='' style='width:48px' alt=''></span>"+
                               "    </i>"+
                               "                            <p>" +
			                    "                                <span><i>"+data.recommend.list[i].resume[0].r_name+"</i><i>"+data.recommend.list[i].resume[0].r_address+"</i></span>" +
			                    "                                <span><i>"+data.recommend.list[i].resume[0].jobExperience[0].je_job+"</i><i>"+data.recommend.list[i].resume[0].r_experience+"年</i><i>"+data.recommend.list[i].resume[0].educationalExperience[0].education+"/"+data.recommend.list[i].resume[0].educationalExperience[0].school_name+"</i></span>" +
			                    "                            </p>" +
			                    "                            <p>" +
			                    "                                <span>"+data.recommend.list[i].resume[0].jobExperience[0].je_job+"</span>" +
			                    "                                <span><i>"+data.recommend.list[i].resume[0].r_sendtime+"</i><a href=''>刷新简历</a></span>" +
			                    "                            </p>" +
                               "   </li>")
                               };
                            	 $(".content-left-post").append("   </ul>"+
                    			 "  </div>"+
                            	 " <div class='post-content main'>"+
                        "   <ul>"+
                               <!--头部建议不要动-->
                             "  <li>"+
                              "     <p><span>ren才信息</span><span class='matching'>匹配职位</span></p>"+
                            "   </li>");
                               <!--以下从数据库里面获取-->
                               for (var i = 0; i <1; i++) {
                                   $(".post-content.main:nth-child(3) ul").append("  <li>"+
                              "     <i class='userLogo'>"+
                              "         <span><img src='${pageContext.request.contextPath}/UserFile/img/default.jpg' alt='' style='width:48px' alt=''></span>"+
                              "     </i>"+
                               "    <p>"+
                                 "      <span><i>顾某某</i><i>成都/成华区</i></span>"+
                                 "      <span><i>数据运营经理</i><i>8-12k</i><i>本科/5年</i></span>"+
                                 "  </p>"+
                                "   <p>"+
                                  "     <span>策划经理</span>"+
                                   "    <span><i>2018.05.05</i><a href=''>刷新简历</a></span>"+
                               "    </p>"+
                           "    </li>")
                               }
                              $(".content-left-post").append("  </ul>"+
                   			 "   </div>"+
                    		 "  <div class='post-bottom main'>"+
                      		 "    <p class='main selected'>"+
                      		"<span><a href='${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain'>< 第一页</a></span>")
                      		if (data.recommend.pageCount == 1 || data.recommend.recommend.pageNow == 1) {
                      			$(".post-bottom.main p:nth-child(1)").append("<span><a>< 上一页</a></span>")
							}
                             if (data.recommend.pageNow != 1) {
                            	 $(".post-bottom.main p:nth-child(1)").append("<span><a href='${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain?pageNow=${requestScope.recommend.pageNow-1}'>< 上一页</a></span>")
                             }
                             $(".post-bottom.main p:nth-child(1)").append("<span><a href=''>${requestScope.recommend.pageNow}/${requestScope.recommend.pageCount}</a></span>")
                            if (data.recommend.pageNow < data.recommend.pageCount) {
                            	$(".post-bottom.main p:nth-child(1)").append("<span><a href='${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain?pageNow=${requestScope.recommend.pageNow+1}'>下一页 ></a></span>")
                            }
                            if (data.recommend.pageNow >= data.recommend.pageCount) {
                            	$(".post-bottom.main p:nth-child(1)").append("<span><a>下一页 ></a></span>")
                            }
                            $(".content-left-post .post-bottom.main p:nth-child(1)").append("<span><a href='${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain?pageNow=${requestScope.recommend.pageCount}'>最末页 ></a></span>"
                       /*  "   </p>" */)
                        
                          $(".content-left-post .post-bottom.main").append(" <p class='main'>"+
                           "    <span><a href=''>< 第一页</a></span>"+
                           "    <span><a href=''>< 上一页</a></span>"+
                            "   <span><a href=''>3/58</a></span>"+
                            "   <span><a href=''>下一页 ></a></span>"+
                             "  <span><a href=''>最末页 ></a></span>"+
                          " </p>"+
                     "  </div>");
            	   headhunterLog.clicktop();
           }
    	}
   })

	};
	headhunterLog.clicktop = function(){
		   $(".content-left-post .post-top p").click(function () {
	           $(this).addClass("active").siblings().removeClass("active");
	           $(".post-content.main").eq($(this).index()).addClass("selected").siblings().removeClass("selected");
	           $(".post-bottom p.main").eq($(this).index()).addClass("selected").siblings().removeClass("selected");
	   			})
	  		 };
	
	function searchPost(keyCode) {
		   $.ajax({
		       type:"post",
		       dataType:"json",
		       data:{keyCode:keyCode},
		       url:"${pageContext.request.contextPath}/headhunter/SearchUsersByDim" , 
		    	success:function (data){
					console.log(data);
					 $(".post-content").html(" <div class'post-top'>" +
				                "                </div>" +
				                "                <div class'post-content'>" +
				                "                    <ul>" +
				                "                        <!--头部建议不要动-->" +
				                "                        <li>" +
				                "                            <p><span>人才信息</span><span>匹配职位</span></p>" +
				                "                        </li>");
				           for (var i = 0; i < data.list.length; i++) {
									
				                $(".post-content ul").append("  <li>" +
				                    "                            <i class='userLogo'>" +
				                    "                                <span><img src='${pageContext.request.contextPath}/UserFile/img/"+data.list[i].u_header+"' alt='' style='width:48px' alt=''></span>" +
				                    "                            </i>" +
				                    "                            <p>" +
				                    "                                <span><i>"+data.list[i].resume[0].r_name+"</i><i>"+data.list[i].resume[0].r_address+"</i></span>" +
				                    "                                <span><i>"+data.list[i].resume[0].jobExperience[0].je_job+"</i><i>"+data.list[i].resume[0].r_experience+"年</i><i>"+data.list[i].resume[0].educationalExperience[0].education+"/"+data.list[i].resume[0].educationalExperience[0].school_name+"</i></span>" +
				                    "                            </p>" +
				                    "                            <p>" +
				                    "                                <span>"+data.list[i].resume[0].jobExperience[0].je_job+"</span>" +
				                    "                                <span><i>"+data.list[i].resume[0].r_sendtime+"</i><a href=''>刷新简历</a></span>" +
				                    "                            </p>" +
				                    "                        </li>")
				           }
				           	$(".content-left-post .post-bottom").remove();
				            $(".post-content").append("</ul>" +
				                "                </div>");
				                
				            $(".content-left-post").append(" "+
				                "                <div class='post-bottom'>" +
				                "                    <p>" +
				                "                        <span><a onclick='searchPost.firstPage()'>< 第一页</a></span>" +
				                "                        <span><a onclick='searchPost.upPage()'>< 上一页</a></span>" +
				                "                        <span><a href=''>"+data.pageNow+"/"+data.pageCount+"</a></span>" +
				                "                        <span><a onclick='searchPost.nextPage()'>下一页 ></a></span>" +							
				                "                        <span><a onclick='searchPost.lastPage()'>最末页 ></a></span>" +
				                "                    </p>" +
				                "                </div>");
				            
				            searchPost.firstPage = function(){
				            	$.ajax({
				            	       type:"post",
				            	       dataType:"json",
				            	       data:{keyCode:keyCode,pageNow:1},
				            	       url:"${pageContext.request.contextPath}/headhunter/SearchUsersByDim" 
				            		 		});
				            }
				            searchPost.lastPage = function(){
				            	$.ajax({
				            	       type:"post",
				            	       dataType:"json",
				            	       data:{keyCode:keyCode,pageNow:data.pageCount},
				            	       url:"${pageContext.request.contextPath}/headhunter/SearchUsersByDim" 
				            		 		});
				            }
				            searchPost.nextPage = function(){
				            	$.ajax({
				            	       type:"post",
				            	       dataType:"json",
				            	       data:{keyCode:keyCode,pageNow:data.pageNow+1},
				            	       url:"${pageContext.request.contextPath}/headhunter/SearchUsersByDim" 
				            		 		});
				            }
				            searchPost.upPage = function(){
				            	$.ajax({
				            	       type:"post",
				            	       dataType:"json",
				            	       data:{keyCode:keyCode,pageNow:data.pageNow-1},
				            	       url:"${pageContext.request.contextPath}/headhunter/SearchUsersByDim" 
				            		 		});
				            }
				             
				            }
							    		
		    	
		   })
	}
function inputSearch(){
	var keyCode = $(".content-left-search .content-left-search-top input:nth-child(2)").val();
	searchPost(keyCode)
		}
	
	
</script>