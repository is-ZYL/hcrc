<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/recommend-headhunter-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/HeadhunterFile/css/recommend-headhunter-content.css">
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
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/tuijianrencai.jpg" alt="" ></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_talentPool" style="color: #EB6045">寻找候选人</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/qiyejianjie.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_positionManage">职位管理</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/gongjuxiang.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_candidate">候选人管理</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/ziliao.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterInformation">猎头资料</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/xiaoxizhongxin.jpg" alt=""></i><a href="">消息中心</a></li>
                <li><i><img src="${pageContext.request.contextPath }/HeadhunterFile/img/zhanghaoanquan.jpg" alt=""></i><a href="${pageContext.request.contextPath}/headhunter/headhunter_account">账号安全</a></li>
            </ul>
        </div>
        <div class="content-right">
            <div class="right-top">
                <ul>
                    <li ><a href="" class="active">推荐候选人</a></li>
                    <li><a href="">新入人才</a></li>
                    <li><a href="">搜索人才</a></li>
                </ul>
            </div>
            <div class="right-products">
                <div class="main selected">
                    <ul>
                        <!--头部建议不要动-->
                        <li>
                            <p><span>人才信息</span><span class="matching">匹配职位</span></p>
                        </li>
                        <!--以下从数据库里面获取-->
                        <c:forEach begin="0" end="${fn:length(requestScope.recommend.list)-1 }" var="i">
                        <li>
                            <i class="userLogo">
                                <span><img src="${pageContext.request.contextPath}/UserFile/img/${requestScope.recommend.list[i].u_header}" alt="" style="width: 48px"></span>
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
                    <div class="post-bottom">
                        <p>
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_talentPool">< 第一页</a></span>
                        <c:if test="${requestScope.recommend.pageCount eq 1 || requestScope.recommend.pageNow eq 1}">
                        <span><a>< 上一页</a></span>
                        </c:if>
                         <c:if test="${requestScope.recommend.pageNow != 1}">
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_talentPool?pageNow=${requestScope.recommend.pageNow-1}">< 上一页</a></span>
                        </c:if>
                        <span><a href="">${requestScope.recommend.pageNow}/${requestScope.recommend.pageCount}</a></span>
                        <c:if test="${requestScope.recommend.pageNow < requestScope.recommend.pageCount}">
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_talentPool?pageNow=${requestScope.recommend.pageNow+1}">下一页  ></a></span>
                        </c:if>
                        <c:if test="${requestScope.recommend.pageNow >= requestScope.recommend.pageCount}">
                        <span><a>下一页 ></a></span>
                        </c:if>
                        <span><a href="${pageContext.request.contextPath}/headhunter/headhunter_talentPool?pageNow=${requestScope.recommend.pageCount}">最末页 ></a></span>
                    </p>
                    </div>
                </div>
                <div class="main">
                    <ul>
                        <!--头部建议不要动-->
                        <li>
                            <p><span>人才信息</span></p>
                        </li>
                        <!--以下从数据库里面获取-->
                        <li>
                            <i class="userLogo">
                                <span><img src="${pageContext.request.contextPath }/HeadhunterFile/img/personageLogo.jpg" alt=""></span>
                            </i>
                            <p>
                                <span><i>顾某某</i><i>成都/成华区</i></span>
                                <span><i>数据运营经理</i><i>8-12k</i><i>本科/5年</i></span>
                            </p>
                            <p>

                                <span><i>2018.05.05</i><a href="">刷新简历</a></span>
                            </p>
                        </li>
                    </ul>
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
                    <div class="search">
                        <form action="">
                            <select>
                                <option>职位</option>
                            </select>
                            <input type="text" name="search" placeholder="输入关键字，入:系统架构师">
                            <input type="button" value="搜索" onclick="inputSearch()">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
<!--脚部-->
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
    function searchPost(keyCode) {
		   $.ajax({
		       type:"post",
		       dataType:"json",
		       data:{keyCode:keyCode},
		       url:"${pageContext.request.contextPath}/headhunter/SearchUsersByDim" , 
		    	success:function (data){
					console.log(data);
					 $(".content-right .right-products .main:nth-child(3)").html("<div class='search'>"+
		                       " <form action=''>"+
                    " <select>"+
                        " <option>职位</option>"+
                    " </select>"+
                    " <input type='text' name='search' placeholder='输入关键字，入:系统架构师'>"+
                    " <input type='button' value='搜索' onclick='inputSearch()'>"+
                " </form>"+
            " </div>"+
            " <ul>"+
                 <!--头部建议不要动-->
                 "<li>"+
                    " <p><span>人才信息</span></p>"+
               "  </li>");
				           for (var i = 0; i < data.list.length; i++) {
									
				                $(".content-right .right-products .main:nth-child(3) ul").append("  <li>" +
				                    "                            <i class='userLogo'>" +
				                    "                                <span><img src='${pageContext.request.contextPath}/UserFile/img/"+data.list[i].u_header+"' alt='' style='width: 48px'></span>" +
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
				           	$(".content-right .right-products .main:nth-child(3) .post-bottom").remove();
				            $(".post-content").append("</ul>" +
				                "                </div>");
				                
				            $(".content-right .right-products .main:nth-child(3)").append(" "+
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
	var keyCode = $(".main .search input:nth-child(2)").val();
	searchPost(keyCode)
		}
</script>