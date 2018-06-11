<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的简历</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/publicFolder/base.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/publicFolder/main-user-head.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/userResume1/userResume.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/publicFolder/reg-user-footer.css">
<!--设置浏览器上面显示的logo-->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/UserFile/img/userResume1/Windows 照片查看器墙纸.jpg">
</head>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/publicFolder/jquery-1.11.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/userResume1/userResume.js"></script>
<body>
	<input id="PageContext" type="hidden"
		value="${pageContext.request.contextPath}" />
	<input id="Users" type="hidden" value="${sessionScope.user}" />
	<!--用户界面头部-->
	<div class="user-head">
		<div class="head-top">
			<div class="mediate">
				<span> <a
					href="${ pageContext.request.contextPath}/user_po/user_positionMain.html">个人入口
						|</a> <a href="${pageContext.request.contextPath}/hr/hr_hrmain">企业入口 |</a> <a href="#">培训入口 |</a> <a href="#">猎头入口
						|</a> <a href="#">劳务派遣入口</a>
				</span>

			</div>
		</div>
		<div class="head-bottom">
			<div class="mediate">
				<div class="logo">
					<img class="logo"
						src="${pageContext.request.contextPath}/UserFile/img/userResume1/hcrclogo.jpg"
						alt="">
				</div>
				<div class="head-bottom-nav">
					<ul>
						<li><a style="color: #666;" href="${ pageContext.request.contextPath}">首页</a></li>
						<li class="current"><a style="color: #E84626;" href="${ pageContext.request.contextPath}/user_po/user_positionMain.html">职位</a></li>
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
					<span>我的简历</span> <span>技能树</span> <span> <a
					href="${ pageContext.request.contextPath}/user_po/user_createResume">新建简历</a></span>
				</p>

				<p>温馨提示：打开“快速投递”，自动选择该简历投递。如果对简历有投递选择要求，可以选择关闭该功能</p>

				<table class="table">
					<tr>
						<td>简历中心</td>
						<td>刷新时间</td>
						<td>快速投递</td>
						<td>操作</td>
					</tr>
					<c:forEach items="${requestScope.resumes }" var="res" varStatus="go">
					
					<tr>
						<td>${res.r_rname}</td>
						
						
						<c:if test="${res.r_flushTime == null}">
						<td>
						未刷新
						</td>
						</c:if>
						
						
						<c:if test="${res.r_flushTime != null}">
						<td>
						${res.r_flushTime}
						</td>
						</c:if>
						
						
						<td>
							<div class="switch switch-mini">
								<input name="defaultResume" type="radio"  />
							</div>
						</td>
						<td><a href="${pageContext.request.contextPath }/user_po/user_checkResume?r_id=${res.r_id }"><span>编辑 | </span></a> <span>刷新 | </span> <span>复制 | </span>
							<span>删除 </span>
							<input  type="hidden" value="${res.r_id }"/>
							</td>
					</tr>
					
					</c:forEach>
					
					
					
				</table>

			</div>
		</div>


	</div>

	<!--用户注册界面脚部-->
	<div class="user-footer">
		<div class="footer-content mediate">
			<div class="footer-right">
				<img
					src="${pageContext.request.contextPath}/UserFile/img/userResume1/logo.jpg"
					alt="">
			</div>
			<div class="content">
				<p>渝ICP备11015194-1</p>
				<p>Copyright ©2017-2018 www.huohr.com</p>
			</div>
			<div class="footer-left">
				<img
					src="${pageContext.request.contextPath}/UserFile/img/userResume1/Hibuick.jpg"
					alt="">
			</div>
		</div>
	</div>
</body>
</html>