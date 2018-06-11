<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<c:if test="${sessionScope.user  != null  }">
	<title>${sessionScope.user.u_phone}</title>
</c:if>

<c:if test="${sessionScope.user  == null  }">
	<title>个人用户#未登录</title>
</c:if>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/main/base.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/main/main-position-head.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/main/main-position-content.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/main/reg-user-footer.css">
</head>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/publicFolder/jquery-1.11.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/main/jquery.cookie.js"></script>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/main/position_main.js"></script>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/main/main-position-content.js"></script>
<body>


	<!--用户界面头部-->
	<input id="PageContext" type="hidden"
		value="${pageContext.request.contextPath}" />
	<input id="Users" type="hidden" value="${sessionScope.user}" />
	<div class="user-head">
		<div class="head-top">
			<div class="mediate">
				<span> <a
					href="${ pageContext.request.contextPath}/user_po/user_positionMain.html">个人入口
						|</a> <a href="#">企业入口 |</a> <a href="#">培训入口 |</a> <a href="#">猎头入口
						|</a> <a href="#">劳务派遣入口</a>
				</span>

			</div>
		</div>
		<div class="head-bottom">
			<div class="mediate">
				<div class="logo">
					<img class="logo"
						src="${pageContext.request.contextPath}/UserFile/img/main/hcrclogo.jpg"
						alt="">
				</div>
				<div class="head-bottom-nav">
					<ul>
						<li><a style="color: #666;" href="${ pageContext.request.contextPath}/user_po/user_positionMain.html">首页</a></li>
						<li class="current"><a style="color: #E84626;" href="">招聘</a></li>
						<li><a href="">HR联盟</a></li>
						<li><a href="">培训联盟</a></li>
						<li><a href="">劳务派遣</a></li>
						<li><a href="">猎头</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!--中间内容-->
	<div class="m_content">
		<div class="position_banner">
			<img src="${pageContext.request.contextPath}/UserFile/img/main/banner.jpg"
				alt="">
		</div>
		<div class="position_login">

			<c:choose>
				<c:when test="${sessionScope.user  == null }">
					<div class="login_all">
						<div>人才账号登录</div>
						<div>
							<input id="txtUser" placeholder="用户名" type="text" name="u_phone">
						</div>
						<div>
							<input id="txtPassword" placeholder="密码" type="password"
								name="u_password">
						</div>
						<div>
							<span class="forgetPass">忘记密码？点我</span><input class="checkbox"
								type="checkbox"><span>记住账号</span>
						</div>
						<div class="button">
							<input type="button" value="注册账号"><input type="button"
								value="登录">
						</div>
					</div>
				</c:when>
			</c:choose>

			<c:choose>
				<c:when test="${sessionScope.user  != null }">
					<span title="退出" class="out"><img
						src="${pageContext.request.contextPath}/UserFile/img/main/exit.jpg"></img></span>
					<div class="login_all userInfo">
						<div>
							<div class="header">
								<img
									src="${pageContext.request.contextPath}/UserFile/img/main/${sessionScope.user.u_header}"
									alt="">
							</div>
							<div>
								<p>${sessionScope.user.u_phone}</p>
								<p>${sessionScope.user.u_phone}</p>
								<p>${sessionScope.user.u_phone}</p>
							</div>
						</div>

						<div>
							<ul>
								<li><a
									href="${ pageContext.request.contextPath}/user_po/user_center">
										<img
										src="${pageContext.request.contextPath}/UserFile/img/main/user-logo.jpg"
										alt="">

										<p>个人中心</p>
								</a></li>

								<li><a
									href="#">
										<img
										src="${pageContext.request.contextPath}/UserFile/img/main/flush-logo.jpg"
										alt="">
										<p>刷新简历</p>
								</a></li>

								<li><a
									href="#">
										<img
										src="${pageContext.request.contextPath}/UserFile/img/main/history-logo.jpg"
										alt="">
										<p>投递历史</p>
								</a></li>

								<li><span>10</span><a
									href="#">
										<img
										src="${pageContext.request.contextPath}/UserFile/img/main/messa-logo.jpg"
										alt="">
										<p>消息记录</p>
								</a></li>
							</ul>

						</div>
					</div>
				</c:when>
			</c:choose>

		</div>

		<div class="content_right">

			<div class="order_zhitou">
				<ul>
					<li><span>订单直投</span> <i></i></li>
					<li>
						<div class="order_zhitou-left">
							<div>
								<img
									src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo.jpg"
									alt="">
							</div>
							<div>
								<p>平面设计师</p>
								<span>成都</span> <span>10人</span>
							</div>

						</div>
					</li>
					<li>
						<div class="order_zhitou-left">
							<div>
								<img
									src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo.jpg"
									alt="">
							</div>
							<div>
								<p>平面设计师</p>
								<span>成都</span> <span>10人</span>
							</div>

						</div>
					</li>
					<li>
						<div class="order_zhitou-left">
							<div>
								<img
									src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo.jpg"
									alt="">
							</div>
							<div>
								<p>平面设计师</p>
								<span>成都</span> <span>10人</span>
							</div>

						</div>
					</li>
					<li>
						<div class="order_zhitou-left">
							<div>
								<img
									src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo.jpg"
									alt="">
							</div>
							<div>
								<p>平面设计师</p>
								<span>成都</span> <span>10人</span>
							</div>

						</div>
					</li>
					<li>
						<div class="order_zhitou-left">
							<div>
								<img
									src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo.jpg"
									alt="">
							</div>
							<div>
								<p>平面设计师</p>
								<span>成都</span> <span>10人</span>
							</div>

						</div>
					</li>
					<li>
						<div class="order_zhitou-left">
							<div>
								<img
									src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo.jpg"
									alt="">
							</div>
							<div>
								<p>平面设计师</p>
								<span>成都</span> <span>10人</span>
							</div>

						</div>
					</li>
				</ul>

			</div>

			<div class="lietou_zhitou order_zhitou">
				<ul>
					<li><span>猎头直投</span> <i></i></li>
					<li><span>资深电商视觉设计师</span> <span>8-15k</span></li>
					<li><span>资深电商视觉设计师</span> <span>8-15k</span></li>
					<li><span>资深电商视觉设计师</span> <span>8-15k</span></li>
					<li><span>资深电商视觉设计师</span> <span>8-15k</span></li>
					<li><span>资深电商视觉设计师</span> <span>8-15k</span></li>
					<li><span>资深电商视觉设计师</span> <span>8-15k</span></li>
				</ul>
			</div>
		</div>

		<div class="search">
			<div>
				<ul class="one">
					<li><select name="">
							<option value="0" selected="selected">区域</option>
					</select></li>
					<li><select id="select1">
							<option value="0" selected="selected">JAVA</option>
							<option>游戏原画师</option>
					</select></li>
					<li><input type="text" placeholder="输入关键字，如：系统架构师"></li>
					<li><input class="search_button" type="button" value="搜索"></li>
				</ul>
			</div>
			<div class="hot_search">
				<ul class="two">
					<li>热门搜索：</li>
					<li>java</li>
					<li>视觉设计</li>
					<li>.net</li>
					<li>u3d</li>
					<li>产品经理</li>
					<li>游戏原画师</li>
				</ul>
			</div>
		</div>


		<!--职位展示-->
		<div class="position_all">
			<div class="position_all_top">
				<ul>
					<li class="active">互联网</li>
					<li>软件/游戏</li>
					<li>地产物业</li>
					<li>机械制造</li>
					<li>销售</li>
					<li>物流运营</li>
					<li>能源化工</li>
					<li>服务</li>
					<li>艺术设计</li>
					<li>更多</li>
				</ul>
			</div>


			<div class="products">
				<div class="position_all_bottom selected">
					<ul>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
					</ul>
				</div>
				<div class="position_all_bottom">
					<ul>
						<li>ui</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
					</ul>
				</div>
				<div class="position_all_bottom">
					<ul>
						<li>css</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
					</ul>
				</div>
				<div class="position_all_bottom">
					<ul>
						<li>aaaaa</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
					</ul>
				</div>
				<div class="position_all_bottom">
					<ul>
						<li>cccccc</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
					</ul>
				</div>
				<div class="position_all_bottom">
					<ul>
						<li>ddddddddd</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
					</ul>
				</div>
				<div class="position_all_bottom">
					<ul>
						<li>eeeeeeee</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
					</ul>
				</div>
				<div class="position_all_bottom">
					<ul>
						<li>ffffffffff</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
					</ul>
				</div>
				<div class="position_all_bottom">
					<ul>
						<li>ggggggggg</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
						<li>java</li>
					</ul>
				</div>
			</div>





		</div>


		<div class="content-bottom">
			<div class="content-bottom-head">
				<ul>
					<li>推荐职位</li>
					<li>最新职位</li>
					<li>热门职位</li>
					<li><i></i> <i></i></li>
				</ul>
			</div>

			<div class="content-bottom-head2">
				<ul>
					<li>职位名称 / 待遇</li>
					<li>公司信息 / 行业</li>
				</ul>
			</div>

			<div class="content-bottom-pos">

				<ul>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo2.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo3.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo4.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo5.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo2.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo3.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>


					<li>
						<div class="content-bottom-pos1 content-bottom-pos1-more">
							<p>点击加载更多职位</p>
						</div>
					</li>
				</ul>


			</div>
			<div class="content-bottom-pos eg2">

				<ul>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo2.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo3.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo4.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo5.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo2.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo3.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1 content-bottom-pos1-more">
							<p>点击加载更多职位</p>
						</div>
					</li>
				</ul>


			</div>
			<div class="content-bottom-pos eg3">

				<ul>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo4.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo2.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo3.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>

					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo5.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo2.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1">

							<div>
								<p>
									<span>资深专题设计师</span><span>五险一金</span><span>美女多</span><span>下午茶</span>
								</p>
								<p>
									<span>5-8K</span><span>专科 / 2-3年</span>
								</p>
							</div>

							<div class="content-bottom-pos1-right">
								<div>
									<img
										src="${pageContext.request.contextPath}/UserFile/img/main/companyLogo3.jpg"
										alt="">
								</div>
								<div>
									<p>Netease杭州</p>
									<p>杭州 / 互联网</p>
								</div>

							</div>
						</div>
					</li>
					<li>
						<div class="content-bottom-pos1 content-bottom-pos1-more">
							<p>点击加载更多职位</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<!--用户注册界面脚部-->
	<div class="user-footer">
		<div class="footer-content mediate">
			<div class="footer-right">
				<img src="${pageContext.request.contextPath}/UserFile/img/main/logo.jpg"
					alt="">
			</div>
			<div class="content">
				<p>渝ICP备11015194-1</p>
				<p>Copyright ©2017-2018 www.huohr.com</p>
			</div>
			<div class="footer-left">
				<img
					src="${pageContext.request.contextPath}/UserFile/img/main/Hibuick.jpg"
					alt="">
			</div>
		</div>
	</div>
</body>
</html>


<!-- 防止刷新页面 再次进入未登录的首页   判断user是否为null 则确定使用相对应的css文件 及布局-->
<script type="text/javascript">

 <c:if test="${sessionScope.user  != null  }">
 
	replacejscssfile($("#PageContext").val()+"/UserFile/css/main/main-position-content.css",$("#PageContext").val()+"/UserFile/css/main/main-position-content(login).css","css");

 </c:if>

function createjscssfile(filename,filetype){

	if (filetype=="js"){

	varfileref=document.createElement('script')

	fileref.setAttribute("type","text/javascript")

	fileref.setAttribute("src",filename)

	}

	else if (filetype=="css"){

	var fileref=document.createElement("link")

	fileref.setAttribute("rel","stylesheet")

	fileref.setAttribute("type","text/css")

	fileref.setAttribute("href",filename)

	}

	return fileref

	}
/*执行处理*/
function replacejscssfile(oldfilename,newfilename, filetype){

	var targetelement=(filetype=="js")?"script" : (filetype=="css")? "link" :"none"

	var targetattr=(filetype=="js")?"src" : (filetype=="css")? "href" :"none"

	var allsuspects=document.getElementsByTagName(targetelement)

	for (var i=allsuspects.length; i>=0;i--){

	if (allsuspects[i] &&allsuspects[i].getAttribute(targetattr)!=null &&allsuspects[i].getAttribute(targetattr).indexOf(oldfilename)!=-1){

	  var newelement=createjscssfile(newfilename, filetype)

	  allsuspects[i].parentNode.replaceChild(newelement, allsuspects[i])

		}

	}

}




</script>

