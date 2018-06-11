<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>HR联盟</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/last.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/main-user-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/qiye-button.css">
</head>
<body>
    <!--用户界面头部-->
    <c:if test="">
    </c:if>
    <div class="user-head">
        <div class="head-top">
            <div class="mediate">
                    <span>
                        <a href="">个人入口 |</a>
                        <a href="${pageContext.request.contextPath}/hr/hr_hrmain">企业入口 |</a>
                        <a href="#">培训入口 |</a>
                        <a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain">猎头入口 |</a>
                        <a href="">劳务派遣入口</a>
                    </span>
            </div>
        </div>
        <div class="head-bottom">
            <div class="mediate">
                <div class="logo">
                    <a href="${pageContext.request.contextPath}/main"><img class="logo" src="${pageContext.request.contextPath}/EnterpriseFile/img/hcrclogo.jpg" alt=""></a>
                </div>
                <div class="head-bottom-nav">
                    <ul>
                        <li ><a href="${pageContext.request.contextPath}/main">首页</a></li>
                        <li><a href="">招聘</a></li>
                        <li class="current"><a href="${pageContext.request.contextPath}/hr/hr_hrmain" >HR联盟</a></li>
                        <li><a href="">培训联盟</a></li>
                        <li><a href="">劳务派遣</a></li>
                        <li><a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain">猎头</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--中部-->
    <div class="qiye-button">
        <div class="mediate">
                <div class="button-lunbo">
                    <div class="lunbo-left">
                        <img src="${pageContext.request.contextPath}/EnterpriseFile/img/lunbo.jpg" alt="">
                    </div>
                    <div class="reg-right">
                    <!-- 登录前 -->
                   	 <c:if test="${sessionScope.HR_LOG == null}">
                   
                         <div class="personnel">
                            <div class="personnel-per">
                                <p><span>企业账号登录</span></p>
                                <p><input type="text" id="e_username" placeholder="用户名"></p>
                                <p><input type="password" id="e_password" placeholder="密码">
                            </div>
                            <div class="personnel-aoc">
                               
                            </div>
                            <div class="personnel-per-button">
                                <div class="personnel-per-button-reg">
                                    <a href="${pageContext.request.contextPath }/hr_reg">注册</a>
                                </div>
                                <div class="personnel-per-button-log">
                                    <input type="button" value="登录"  onclick="enterpriseFileLogin()">
                                </div>
                            </div>
                        </div>
					</c:if>
					<!-- 登录后 -->
					<c:if test="${sessionScope.HR_LOG != null}">
						 <div class="change">
                            <div class="change-top">
                                <div><a href=""><img src="${pageContext.request.contextPath}/EnterpriseFile/img/touxiang.jpg" alt=""></a></div>
                                <div>
                                    <span>${ HR_LOG.e_username}</span><br>
                                    <span></span><br>
                                    <span>5年工作经验</span>
                                </div>
                                <i><a onclick="hrExit()"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/exit.jpg" alt="" style="width: 14px;"></a></i>
                            </div>
                            <div class="change-down">
                                <div>
                                   <ul>
		                            <li>
		                                <p><a href=""><img src="${pageContext.request.contextPath}/EnterpriseFile/img/gerenzhongxin.jpg"alt=""></a></p>
		                                <p><span>个人中心</span></p>
		                            </li>
		                            <li>
		                                <p><a href="${pageContext.request.contextPath}/hr/hr_enterprise"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/shuaxinjianli.jpg" alt=""></a></p>
		                                <p><span>企业简介</span></p>
		                            </li>
		                            <li>
		                                <p><a href=""><img src="${pageContext.request.contextPath}/EnterpriseFile/img/toudijianli.jpg" alt=""></a></p>
		                                <p><span>投递简历</span></p>
		                            </li>
		                            <li>
		                                <p><a href=""><img src="${pageContext.request.contextPath}/EnterpriseFile/img/xingxi.jpg" alt=""></a></p>
		                                <p><span>信息</span></p>
		                            </li>
		                        </ul>
                                </div>
                            </div>
                            
                        </div>
                       </c:if> 
                       
                    </div> 
                </div>
            <div class="button-search"><!--搜索-->
                <div class="search-xiala">
                    <ul>
                        <li>
                            <select>
                                <option>区域</option>
                            </select>
                        </li>
                        <li>
                            <input type="text" name="" placeholder="输入关键字">
                        </li>
                        <li>
                            <input type="submit" value="搜索">
                        </li>
                    </ul>
                </div>
                <div class="search-title">
                    <span>热门搜索：</span>
                    <a href="">培训</a><a href="">.net</a><a href="游戏"></a><a href="">产品经理</a>
                </div>
            </div>
            <div class="button-admission"><!--入驻名单-->
                <div class="admission-top">
                    <a href="">入驻名单</a>
                    <img src="${pageContext.request.contextPath}/EnterpriseFile/img/jiantou.jpg" alt="">
                </div>
                <hr>
                <div class="admission-down">
                    <ul>
                        <li>
                            <p>
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/pingmianshejishilan.jpg" alt="">
                            </p>
                            <p>
                                <span><a href="">平面设计师</a></span>
                                <span><a href="">成都</a></span>
                                <span>20人</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/zhongjizhuantishejishi.jpg" alt="">
                            </p>
                          <p>
                              <span><a href="">中级专题设计师</a></span>
                              <span><a href="">重庆</a></span>
                              <span>16人</span>
                          </p>
                        </li>
                        <li>
                            <p>
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/chahuashi.jpg" alt="">
                            </p>
                            <p>
                                <span><a href="">插画设计师</a></span>
                                <span><a href="">上海</a></span>
                                <span>24人</span>
                            </p>

                        </li>
                        <li>
                            <p>
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/pingpaisheji.jpg" alt="">
                            </p>
                            <p>
                                <span><a href="">品牌设计主管</a></span>
                                <span><a href="">呼和浩特</a></span>
                                <span>30人</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/pingminashejishi.jpg" alt="">
                            </p>
                            <p>
                                <span><a href="">平面设计师</a></span>
                                <span><a href="">成都</a></span>
                                <span>28人</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/zhoubianchanping.jpg" alt="">
                            </p>
                           <p>
                               <span><a href="">周边产品实习生</a></span>
                               <span><a href="">北京</a></span>
                               <span>10人</span>
                           </p>

                        </li>
                    </ul>

                </div>
            </div>
            <div class="button-personnel"><!--人才培养-->
                <div class="personnel-top">
                    <div class="personnel-top-left">
                        <span><a href="">推荐职位</a></span>
                    </div>
                    <div class="personnel-top-right">
                        <img src="${pageContext.request.contextPath}/EnterpriseFile/img/xiangzuo.jpg" alt="">
                        <img src="${pageContext.request.contextPath}/EnterpriseFile/img/xiangyou.jpg" alt="">
                    </div>
                </div>
                <div class="personnel-center">
                    <div class="center-title">
                        <div><span>职位名称/待遇</span></div>
                        <div><span>公司信息/行业</span></div>
                    </div>
                    <div class="center-title-one">
                        <div class="one-left">
                            <p><span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span></p>
                            <p><span>5-8K</span><span>专科/2-3年</span></p>
                        </div>
                        <div class="one-right">
                            <div class="right-top">
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/netease.jpg" alt="">
                            </div>
                            <div class="right-button">
                                <p><span>Netease杭州</span></p>
                                <p><span>杭州/互联网</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="center-title-one">
                        <div class="one-left">
                            <p><span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span></p>
                            <p><span>5-8K</span><span>专科/2-3年</span></p>
                        </div>
                        <div class="one-right">
                            <div class="right-top">
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/netease.jpg" alt="">
                            </div>
                            <div class="right-button">
                                <p><span>Netease杭州</span></p>
                                <p><span>杭州/互联网</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="center-title-one">
                        <div class="one-left">
                            <p><span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span></p>
                            <p><span>5-8K</span><span>专科/2-3年</span></p>
                        </div>
                        <div class="one-right">
                            <div class="right-top">
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/netease.jpg" alt="">
                            </div>
                            <div class="right-button">
                                <p><span>Netease杭州</span></p>
                                <p><span>杭州/互联网</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="center-title-one">
                        <div class="one-left">
                            <p><span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span></p>
                            <p><span>5-8K</span><span>专科/2-3年</span></p>
                        </div>
                        <div class="one-right">
                            <div class="right-top">
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/netease.jpg" alt="">
                            </div>
                            <div class="right-button">
                                <p><span>Netease杭州</span></p>
                                <p><span>杭州/互联网</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="center-title-one">
                        <div class="one-left">
                            <p><span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span></p>
                            <p><span>5-8K</span><span>专科/2-3年</span></p>
                        </div>
                        <div class="one-right">
                            <div class="right-top">
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/netease.jpg" alt="">
                            </div>
                            <div class="right-button">
                                <p><span>Netease杭州</span></p>
                                <p><span>杭州/互联网</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="center-title-one">
                        <div class="one-left">
                            <p><span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span></p>
                            <p><span>5-8K</span><span>专科/2-3年</span></p>
                        </div>
                        <div class="one-right">
                            <div class="right-top">
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/netease.jpg" alt="">
                            </div>
                            <div class="right-button">
                                <p><span>Netease杭州</span></p>
                                <p><span>杭州/互联网</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="center-title-one">
                        <div class="one-left">
                            <p><span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span></p>
                            <p><span>5-8K</span><span>专科/2-3年</span></p>
                        </div>
                        <div class="one-right">
                            <div class="right-top">
                                <img src="${pageContext.request.contextPath}/EnterpriseFile/img/netease.jpg" alt="">
                            </div>
                            <div class="right-button">
                                <p><span>Netease杭州</span></p>
                                <p><span>杭州/互联网</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="button-jump">
                        <div>
                            <span><a href="">＜第一页</a></span>
                            <span><a href="">＜上一页</a></span>
                            <span><a href="">3/58</a></span>
                            <span><a href="">下一页＞</a></span>
                            <span><a href="">最末页＞</a></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="talentpool"><!--人才库-->
                <div class="talentpool-top">
                    <span>入驻名录</span>
                    <img src="${pageContext.request.contextPath}/EnterpriseFile/img/jiantou.jpg" alt="">
                </div>
                <div class="talentpool-down">
                    <p><span>重庆中天科技职业培训学校</span></p>
                    <p><span>成都达内</span></p>
                     <p><span>重庆中天科技职业培训学校</span></p>
                    <p><span>成都达内</span></p>
                     <p><span>重庆中天科技职业培训学校</span></p>
                    <p><span>成都达内</span></p>
                     <p><span>重庆中天科技职业培训学校</span></p>
                    <p><span>成都达内</span></p>
                </div>
            </div>
        </div>
    </div>
    <!--用户注册界面脚部-->
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
</html>

<script src="${pageContext.request.contextPath}/EnterpriseFile/jq/jquery-1.11.1.min.js"></script>
<script>
    /*猎头登录*/
    function enterpriseFileLogin() {
        var username =$("#e_username").val();
        var password = $("#e_password").val();
        $.ajax({
            type:"post",
            dataType:"json",
            data:{e_username:username,e_password:password},
            url:"${pageContext.request.contextPath}/hr/selectLogin",
            success:function(data){
               if(data != null){
                    console.log(data);
                    $(".reg-right").html(
                    "<div class='change'>"+
                        "<div class='change-top'>"+
                        	"<div><a href=''><img src='${pageContext.request.contextPath}/EnterpriseFile/img/touxiang.jpg' alt=''></a></div>"+
                    		"<div>"+
                   			 	"<span>安小萌</span><br>"+
                   			 	"<span>平面设计师</span><br>"+
                   	 			"<span>5年工作经验</span>"+
                    		"</div>"+
                    		"<i><a onclick='hrExit()'><img src='${pageContext.request.contextPath}/EnterpriseFile/img/exit.jpg' alt='' style='width: 14px;''></a></i>"+
                    "</div>"+
                    	"<div class='change-down'>"+
	                        "<div>"+
	                        "<ul>"+
                            "<li>"+
                                "<p><a href=''><img src='${pageContext.request.contextPath}/EnterpriseFile/img/gerenzhongxin.jpg' alt=''></a></p>"+
                                "<p><span>个人中心</span></p>"+
                            "</li>"+
                            "<li>"+
                                "<p><a href=''><img src='${pageContext.request.contextPath}/EnterpriseFile/img/shuaxinjianli.jpg' alt=''></a></p>"+
                                "<p><span>企业简介</span></p>"+
                            "</li>"+
                            "<li>"+
                                "<p><a href=''><img src='${pageContext.request.contextPath}/EnterpriseFile/img/toudijianli.jpg' alt=''></a></p>"+
                                "<p><span>投递简历</span></p>"+
                            "</li>"+
                            "<li>"+
                                "<p><a href=''><img src='${pageContext.request.contextPath}/EnterpriseFile/img/xingxi.jpg' alt=''></a></p>"+
                                "<p><span>信息</span></p>"+
                            "</li>"+
                        "</ul>"+
	                        "</div>"+
                        "</div>"+
                      "</div>" 
                    ); 
                 } 
            }
        })
    }
    
    function hrExit(){
    	$.ajax({
    		url:"${pageContext.request.contextPath}/hr/hrExit",
    		success:function(data){
    			$(".reg-right").html(
    					"<div class='personnel'>"+
                        "<div class='personnel-per'>"+
                            "<p><span>人才账号登录</span></p>"+
                            "<p><input type='text' id='e_username' placeholder='用户名'></p>"+
                            "<p><input type='password' id='e_password' placeholder='密码'>"+
                        "</div>"+
                        "<div class='personnel-aoc'>"+
                            "<input type='checkbox' ><span>记住密码</span>"+
                        "</div>"+
                        "<div class='personnel-per-button'>"+
                           " <div class='personnel-per-button-reg'>"+
                               "<a href='${pageContext.request.contextPath}/hr_reg'>注册</a>"+
                           " </div>"+
                            "<div class='personnel-per-button-log'>"+
                                "<input type='button' value='登录'  onclick='enterpriseFileLogin()'>"+
                            "</div>"+
                        "</div>"+
                    "</div>"
    			)
    		}
    	})
    }
</script>
