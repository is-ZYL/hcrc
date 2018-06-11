<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<!-- ajax上传文件测试 -->
<meta http-equiv="Content-Type"
	content="multipart/form-data; charset=utf-8" />
<title>新建简历</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/publicFolder/base.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/publicFolder/main-user-head.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/userResume3/userResume3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/UserFile/css/publicFolder/reg-user-footer.css">
<!--设置浏览器上面显示的logo-->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/UserFile/img/userResume3/Windows 照片查看器墙纸.jpg">
</head>
<%-- <script src="${pageContext.request.contextPath}/UserFile/jq/publicFolder/jquery-1.11.2.js"></script> --%>
<!-- <script src="http://code.jquery.com/jquery-1.7.2.min.js"></script> -->
<script
	src="${pageContext.request.contextPath}/UserFile/jq/userResume3/jquery-1.7.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/userResume3/distpicker.data.js"></script>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/userResume3/distpicker.js"></script>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/userResume3/main.js"></script>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/userResume3/jquery.form.js"></script>
<script
	src="${pageContext.request.contextPath}/UserFile/jq/userResume3/userResume3.js"></script>
<body>
	<input id="PageContext" type="hidden"
		value="${pageContext.request.contextPath}" />
	<input id="Users" type="hidden" value="${sessionScope.user}" />
	<input id="r_id" type="hidden" value="${sessionScope.r_id}" />
	<!--用户界面头部-->
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
						src="${pageContext.request.contextPath}/UserFile/img/userResume3/hcrclogo.jpg"
						alt="">
				</div>
				<div class="head-bottom-nav">
					<ul>
						<li><a style="color: #666;"
							href="${ pageContext.request.contextPath}/user_po/user_positionMain.html">首页</a></li>
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
					<span> <a
						href="${ pageContext.request.contextPath}/user_po/user_myResume">简历中心</a></span>
					<span>></span> <span>新建简历</span>
				</p>


				<div class="resumeName">
					<c:if test="${sessionScope.r_rname != null }">
						<div>
							<span>简历名称:</span> <input type="text" name="r_rname"
								readonly="readonly" disabled="disabled"
								value="${sessionScope.r_rname}">
						</div>
					</c:if>
					<c:if test="${sessionScope.r_rname == null }">
						<div>
							<span>简历名称:</span> <input type="text" name="r_rname">
						</div>
					</c:if>
				</div>
				<ul class="basicIn">
					<c:if test="${sessionScope.basicResume !='ok' }">
						<li class="aaa">
							<div>
								<span>基本资料</span>
							</div>
						</li>

						<li class="resumeBasicInfo">

							<table>

								<tr>
									<td>姓名：</td>
									<td><input type="text" name="r_name"></td>
								</tr>

								<tr>
									<td>性别：</td>
									<td><input type="radio" value="男" name="sex"
										checked="checked">男 <input type="radio" value="女"
										name="sex">女</td>

								</tr>

								<tr>
									<td>生日：</td>
									<td><select name="birthdayYear" class="year"
										onchange="getDays()"></select> 年 <select name="birthdayMonth"
										class="month" onchange="getDays()"></select> 月 <select
										name="birthdayDay" class="day">
									</select> 日</td>

								</tr>

								</tr>
								<tr>
									<td>居住地址：</td>
									<td>
										<div id="target">
											<!-- container -->
											<select data-province="选择省" name="provinceName"></select> 省 <select
												data-city="选择市" name="cityName"></select> 市 <select
												data-district="选择区" name="districtName"></select> 区
										</div>
									</td>

								</tr>
								<tr>
									<td>详细地址：</td>
									<td><input type="text" name="detailedAdress"></td>

								</tr>

								<tr>
									<td>头像：</td>
									<td>
										<!-- ${ pageContext.request.contextPath}/user_po/createResumeDo -->
										<form id='addForm' action="" method="post"
											enctype="multipart/form-data">
											<a href='javascript:void(0);' class="blueButton">选择文件</a> <input
												type="file" name="file" class="myFileUpload" />
										</form>
									</td>
									<td>
										<div name="r_header" class="show"></div>
									</td>
								</tr>

								<tr>
									<td>电话：</td>
									<td><input type="text" name="u_phone" readonly="readonly"
										onkeyup="this.value=this.value.replace(/[^-\d,/\s]/g,'')"
										maxlength="11" value="${sessionScope.user.u_phone}" /></td>

									<td class="phone"><span></span></td>
								</tr>

								<tr>
									<td>邮箱：</td>
									<td><input name="r_email" type="text" class="emailInput"
										onblur="checkEmail(this.value)" /></td>
									<td class="email"><span></span></td>
								</tr>

								<tr>
									<td>QQ：</td>
									<td><input name="r_qq" type="text" class="qqInput"
										onblur="checkQQ(this.value)" /></td>
									<td class="qq"><span></span></td>
								</tr>

								<tr>
									<td>微信：</td>
									<td><input name="r_weChat" type="text" class="weChatInput" />
									</td>
									<td class="weChat"><span></span></td>
								</tr>


							</table>

						</li>

						<li class="aaa">
							<div>
								<span>自我评价</span>
							</div>
						</li>


						<li>
							<div class="resumeIntroduce">
								<textarea name="r_judgement" cols="70" rows="10"
									maxlength="2000"></textarea>
								<span>0/2000</span>
							</div>
						</li>



						<li><input class="saveBasic" type="button" value="点击保存基本信息">
						</li>

					</c:if>

					<li class="aaa">
						<div>
							<span>工作经历</span>
						</div>
					</li>

					<li class="workExperience">
						<table>

							<tr>
								<td>工作时间：</td>
								<td><select name="workYear" class="year">
										<option selected="selected">请选择</option>
								</select> 年 <select name="workMonth" class="month">
										<option selected="selected">请选择</option>
								</select> 月 <span>-</span> <select name="workYear1" class="year">
										<option selected="selected">请选择</option>
								</select> 年 <select name="workMonth1" class="month">
										<option selected="selected">请选择</option>
								</select> 月</td>
								<td><span>（未写表示至今 ,上限三条）</span></td>
							</tr>

							<tr>
								<td>公司名称：</td>
								<td><input name="je_company" type="text" /></td>
								<td><span></span></td>
							</tr>

							<tr>
								<td>职位：</td>
								<td><input name="je_job" type="text"></td>
								<td><span></span></td>
							</tr>


							<tr>
								<td>工作描述：</td>
								<td>
									<div class="resumeIntroduce1">
										<textarea name="je_describe" cols="70" rows="8"
											maxlength="240"></textarea>
										<span>0/240</span>
									</div>
								</td>
							</tr>

							<tr>
								<td></td>
								<td class="workExperienceSave"><input name="workButton"
									type="button" value="保 存"> <input name="workDelete"
									type="button" value="删 除"></td>

							</tr>
						</table>
						<ul class="workExperienceContent showWorkExperience">

							<c:forEach items="${sessionScope.jobExperiences }" var="job"
								varStatus="go">
								<li>
									<div class="workExperienceContent1">
										<p>
											<span>${job.je_start }</span>——<span>${job.je_end }</span> <span>${job.je_company }</span>
											<span>| </span> <span>${job.je_job}</span> <span
												class="execute execute${go.count }"
												onclick="workExperienceeditor(this)">编辑</span> <input
												type="hidden" value="${job.je_id}">
										</p>
										<p>
											<span>${job.je_describe}
										</p>
									</div>
								</li>
							</c:forEach>
							<!--显示工作经历  限制三条-->
						</ul>


					</li>


					<li class="aaa">
						<div>
							<span>项目经验</span>
						</div>
					</li>

					<li class="workExperience">
						<table>

							<tr>
								<td>工作时间：</td>
								<td><select name="projectYear1" class="year">
										<option selected="selected">请选择</option>
								</select> 年 <select name="projectMonth1" class="month">
										<option selected="selected">请选择</option>
								</select> 月 <span>-</span> <select name="projectYear2" class="year">
										<option selected="selected">请选择</option>
								</select> 年 <select name="projectMonth2" class="month">
										<option selected="selected">请选择</option>
								</select> 月</td>
								<td><span>(未写表示至今 上限三条)</span></td>
							</tr>

							<tr>
								<td>项目名称：</td>
								<td><input type="text" class="weChatInput" name="pe_name" /></td>
							</tr>

							<tr>
								<td>职位：</td>
								<td><input type="text" name="pe_position"></td>
							</tr>


							<tr>
								<td>项目描述：</td>
								<td>
									<div class="resumeIntroduce1">
										<textarea name="pe_describe" cols="70" rows="8"
											maxlength="240"></textarea>
										<span>0/240</span>
									</div>
								</td>
							</tr>

							<tr>
								<td></td>
								<td class="workExperienceSave"><input type="button"
									value="保 存" name="projectButton"> <input type="button"
									name="projectDelete" value="删 除"></td>

							</tr>
						</table>
						<ul class="workExperienceContent ">
							<c:forEach items="${sessionScope.projectExperiences }" var="pro"
								varStatus="go">
								<li>
									<div class="workExperienceContent1">
										<p>
											<span>${pro.pe_start }</span>——<span>${pro.pe_end }</span> <span>${pro.pe_name }</span>
											<span>| </span> <span>${pro.pe_position }</span> <span
												class="execute execute${go.count }"
												onclick="projectExperienceeditor(this)">编辑</span> <input
												type="hidden" value="${pro.pe_id}">
										</p>
										<p>
											<span>${pro.pe_describe}</span>
										</p>
									</div>
								</li>
							</c:forEach>
						</ul>


					</li>


					<li class="aaa">
						<div>
							<span>教育经历</span>
						</div>
					</li>

					<li class="workExperience">
						<table>

							<tr>
								<td>教育实践：</td>
								<td><select name="educationYear" class="year">
										<option selected="selected">请选择</option>
								</select> 年 <select name="educationMonth" class="month">
										<option selected="selected">请选择</option>
								</select> 月 <span>-</span> <select name="educationYear1" class="year">
										<option selected="selected">请选择</option>
								</select> 年 <select name="educationMonth1" class="month">
										<option selected="selected">请选择</option>
								</select> 月</td>
								<td><span>（未写表示至今）</span></td>
							</tr>

							<tr>
								<td>学校：</td>
								<td><input type="text" name="school_name"/></td>
							</tr>

							<tr>
								<td>系名：</td>
								<td><input type="text" name="system"></td>
							</tr>

							<tr>
								<td>专业：</td>
								<td><input type="text" name="major"></td>
							</tr>
							
							<tr>
								<td>学历：</td>
								<td><input type="text" name="education"></td>
							</tr>


							<tr>
								<td></td>
								<td class="workExperienceSave"><input type="button"
									value="保 存" name="educationButton"> <input type="button" name="educationDelete" value="删 除">
								</td>

							</tr>
						</table>
						<ul class="workExperienceContent">
							<c:forEach items="${sessionScope.educationalExperiences }" var="edu" varStatus="go">
							<li>
								<div class="workExperienceContent1">
									<p>
										<span>${edu.start_time }</span> —— <span>${edu.end_time}</span> <span>${edu.school_name}</span> —— <span>${edu.system}</span> <span> | </span><span>${edu.major}</span> <span class="execute execute${go.count }" onclick="educationExperienceeditor(this)">编辑</span>
										<input type="hidden" value="${edu.ed_id}">
									</p>
									<p>
										<span>${edu.education }</span>
									</p>
								</div>
							</li>
							</c:forEach>
						</ul>


					</li>


					<li class="aaa">
						<div>
							<span>培训经历</span> <span class="execute">添加</span>
						</div>
					</li>

					<li class="workExperience">
						<table>

							<tr>
								<td>培训时间：</td>
								<td><select  class="year" name="trainYear">
										<option selected="selected">请选择</option>
								</select> 年 <select name="trainMonth" class="month">
										<option selected="selected">请选择</option>
								</select> 月 <span>-</span> <select name="trainYear1" class="year">
										<option selected="selected">请选择</option>
								</select> 年 <select name="trainMonth1" class="month">
										<option selected="selected">请选择</option>
								</select> 月</td>
								<td><span>（未写表示至今）</span></td>
							</tr>

							<tr>
								<td>学校：</td>
								<td><input type="text" class="weChatInput" name="te_school"/></td>
							</tr>

							<tr>
								<td>科目：</td>
								<td><input type="text" name="te_course"></td>
							</tr>


							<tr>
								<td></td>
								<td class="workExperienceSave"><input type="button"
									value="保 存" name="trainButton"> <input type="button" name="trainDelete" value="删 除">
								</td>

							</tr>
						</table>
						<ul class="workExperienceContent">

								<c:forEach items="${sessionScope.trainExperiences }" var="tra" varStatus="go">
							<li>
								<div class="workExperienceContent1">
									<p>
										<span>${tra.te_start}</span> —— <span>${tra.te_end }</span> <span>${tra.te_school }
										</span> <span>| </span> <span>${tra.te_course}</span> <span class="execute execute${go.count}" onclick="trainExperienceeditor(this)">编辑</span>
										<input type="hidden" value="${tra.te_id}">
									</p>
									<p>
										<span></span>
									</p>
								</div>
							</li>
								</c:forEach>
						</ul>


					</li>


					<li class="aaa">
						<div>
							<span>其他特长</span>
						</div>
					</li>

					<li class="workExperience">
						<table>
							<tr>
								<td></td>
								<td>
								<div class="resumeIntroduce1" style="margin-left: -50px;">
										<textarea name="r_speciality" cols="70" rows="8"
											maxlength="240"></textarea>
										<span>0/240</span>
									</div>
								</td>
							</tr>


							<tr>
								<td></td>
								<td class="workExperienceSave"><input type="button"
									value="保 存" name="specialityButton"></td>
							</tr>

						</table>
						<ul class="workExperienceContent">
							
							<c:forEach items="${sessionScope.speciality }" var="spe" varStatus="go">
							<c:if test="${spe !=''}">
							<li>
								<div class="workExperienceContent1">
									<p>
										<span>${spe}</span> <span class="execute e${go.count }" onclick="specialityDelete(this)">删除</span>
									</p>
								</div>
							</li>
							</c:if>
							</c:forEach>
						</ul>
					</li>


					<li class="aaa">
						<div>
							<span>个人空间</span>
						</div>
					</li>

					<li class="workExperience">
						<table>
							<tr>
								<td></td>
								<td><input name="r_personalRoom" type="text"></td>
							</tr>
							
							<tr>
								<td></td>
								<td class="workExperienceSave"><input type="button"
									name="personalRoomButton" value="保 存">
								<input type="button"
									name="personalRoomDelete" value="删除">
									</td>
							</tr>
						</table>
						
						<ul class="workExperienceContent">
						<c:forEach items="${sessionScope.R_personalRoom }" var="per_room" varStatus="go">
							<c:if test="${per_room !=''}">
							<li>
								<div class="workExperienceContent1">
									<p>
										<span>${per_room}</span> <span class="execute e${go.count }" onclick="personalRoomeditor(this)">编辑</span>
									</p>
								</div>
							</li>
							</c:if>
							</c:forEach>
						</ul>
						
					</li>


					<li class="aaa">
						<div>
							<span>软件技能</span> <span class="aaa-2">（拖动滑块选择最适合的软件技能位置）</span> 
						</div>
					</li>

					<li class="workExperience">
						<table>
							<tr>
								<td></td>
								<td><input name="rs_name" type="text"></td>
							</tr>

							<tr>
								<td></td>
								<td class="workExperienceSave">
								<select class="skill">
								
								<option value="熟练程度" selected="selected">熟练程度</option>
								<option value="一般">一般</option>
								<option value="良好">良好</option>
								<option value="熟悉">熟悉</option>
								<option value="精通">精通</option>
								
								</select>
								</td>
							</tr>

							<tr>
								<td></td>
								<td class="workExperienceSave"><input type="button"
								name="skill"	value="保 存"></td>
							</tr>
						</table>
						<ul class="workExperienceContent">

							<li>
								<div class="workExperienceContent1 otherSpecial">
									<table id="otherSpecial">
									<c:forEach items="${sessionScope.softwareskilles }" var="skill" varStatus="go">  
										<tr>
											<td><span>${skill.rs_name }</span></td>
											<td><input class="range range${go.count }" type="range" value="0" ></td>
											<td><span name="rs_proficiency" >${skill.rs_proficiency }</span></td>
											<td>
											<span class="delete" onclick="skillDelete(this)" >删除</span>
											<input name="rs_id"  type="hidden" value="${skill.rs_id }">
											</td>
										</tr>
									</c:forEach>
									</table>
								</div>
							</li>
						</ul>
					</li>


				</ul>


			</div>
		</div>


	</div>

	<!--用户注册界面脚部-->
	<div class="user-footer">
		<div class="footer-content mediate">
			<div class="footer-right">
				<img
					src="${pageContext.request.contextPath}/UserFile/img/userResume3/logo.jpg"
					alt="">
			</div>
			<div class="content">
				<p>渝ICP备11015194-1</p>
				<p>Copyright ©2017-2018 www.huohr.com</p>
			</div>
			<div class="footer-left">
				<img
					src="${pageContext.request.contextPath}/UserFile/img/userResume3/Hibuick.jpg"
					alt="">
			</div>
		</div>
	</div>
</body>
</html>