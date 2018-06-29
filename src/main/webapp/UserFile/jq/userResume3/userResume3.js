//全局变量：
/*获取当前的路径*/
var pathName = window.document.location.pathname;
/* 通过字符串截取 获取到项目名 */
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
var a = [ "", "/user_po/user_center", "/user_po/user_myResume",
		"/user_po/user_postDelivery", "/user_po/user_jobCollection", "", "",
		"/user_po/user_shieldedEnterprise", "/user_po/user_accountSecurity", ];
var urls;
var isPass = false; // 声明一个布尔全局变量 执行ajax请求时判断
var IscheckResumeName = false;//判断简历名称的变量
var isQQ = false;//判断qq的格式是否正确的变量
var isEmail = false;//判断Email的格式是否正确的变量
var isPhoto = false;//判断头像是否已经选择
var workExperienceeditorNum = undefined;//当前工作经历编辑的id（je_id）
var projectExperienceeditorNum = undefined;//当前项目经历编辑的id（pe_id）
var educationExperienceeditorNum = undefined;//当前教育经历编辑的id（ed_id）
var trainExperienceeditorNum = undefined;//当前培训经历编辑的id（te_id）
var personalRoom = undefined;//当前简历的个人空间信息
$(function() {
	changeDiv();
	changeContentLeftCss();
	range();
	birthdaySelectData();
	if ($("#Users").val() == null) {
		alert("没有登录，点击确定去登陆");
		window.location.replace(projectName + "/user_po/user_positionMain.html");
	}
	$(".myFileUpload").change(function() {
		var arrs = $(this).val().split('\\');
		var filename = arrs[arrs.length - 1];
		$(".show").html(filename);
	});

	checkNum("resumeIntroduce", 2000);
	checkNum("resumeIntroduce1", 240);
	
	// 初始化jquery.form.js
	$('#addForm').ajaxForm(function() {
	}).submit();
	// 保存简历
	createResume();
	// 保存工作经历
	workExperienceSave();
	// 删除工作经历
	workExperienceDelete();
	//保存项目经验
	projectExperienceSave();
	//删除项目经验
	projectExperienceDelete();
	//保存教育经历
	educationExperienceSave();
	//删除教育经历
	educationExperienceDelete();
	//保存培训经历
	trainExperienceSave();
	//删除培训经历
	trainExperienceDelete();
	//保存特长
	specialitySave();
	//保存个人空间信息
	personalRoomSave();
	//删除个人空间信息
	personalRoomDelete();
	//保存技能
	skillSave();
	/* 城市级联初始化 */
	$("#target").distpicker();
	$("#target").distpicker({
		province : '省份名',
		city : '城市名',
		district : '区名',
		autoSelect : false,
		placeholder : false
	});
	// 检查简历名是否合格
	checkResumeName($("input[name=r_rname]"));
	/*
	
	onchange="rangeChange(this)"
	
	var rs_proficienc = $("span[name='rs_proficiency']").val();
	if (rs_proficienc == '精通'){
		$("span[name='rs_proficiency']").parent().chiledren("td").eq(2).children("input[type='range']").attr("value","90")
	}else if (rs_proficienc == '熟练') {
		$("span[name='rs_proficiency']").parent().chiledren("td").eq(2).children("input[type='range']").attr("value","60")
	}else if (rs_proficienc == '良好') {
		$("span[name='rs_proficiency']").parent().chiledren("td").eq(2).children("input[type='range']").attr("value","50")
	}else if (rs_proficienc == '一般') {
		$("span[name='rs_proficiency']").parent().chiledren("td").eq(2).children("input[type='range']").attr("value","30")
	}
*/
});

function changeDiv() {
	$(".titleHead>ul li:first-child").click(
			function() {
				$(".ones").show();
				$(".twos").hide();
				$(".threes").hide();
				$(".PromptMessage p").html("去完善简历  即可为您推荐职位");
				$(".titleHead > ul li:nth-child(3) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(2) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(1) div").css("border-bottom",
						"3px solid #E84626");
				$(".titleHead ul li:first-child").css("color", "#E84626");
				$(".titleHead ul li:nth-child(2)").css("color", "#999999");
				$(".titleHead ul li:nth-child(3)").css("color", "#999999")
			});
	$(".titleHead>ul li:nth-child(2)").click(
			function() {
				$(".ones").hide();
				$(".twos").show();
				$(".threes").hide();
				$(".PromptMessage p").html("您没有申请任何职位");
				$(".titleHead > ul li:nth-child(1) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(3) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(2) div").css("border-bottom",
						"3px solid #E84626");
				$(".titleHead ul li:first-child").css("color", "#999999");
				$(".titleHead ul li:nth-child(2)").css("color", "#E84626");
				$(".titleHead ul li:nth-child(3)").css("color", "#999999")
			});
	$(".titleHead>ul li:nth-child(3)").click(
			function() {
				$(".ones").hide();
				$(".twos").hide();
				$(".threes").show();
				$(".PromptMessage p").html("没有任何企业查看过您！ 去完善简历");
				$(".titleHead > ul li:nth-child(1) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(2) div").css("border-bottom",
						"none");
				$(".titleHead > ul li:nth-child(3) div").css("border-bottom",
						"3px solid #E84626");
				$(".titleHead ul li:first-child").css("color", "#999999");
				$(".titleHead ul li:nth-child(2)").css("color", "#999999");
				$(".titleHead ul li:nth-child(3)").css("color", "#E84626")
			});
}

// 用户生日的select数据
function birthdaySelectData() {
	var date = new Date();// 创建日期对象
	var year = date.getFullYear();// 获取当前年份
	for (var i = year - 100; i <= year; i++) {// 在id为year的selector附加option选项
		$(".year").append("<option value=\"" + i + "\">" + i + "</option>");// append函数附加html到元素结尾处
	}
	for (var i = 1; i <= 12; i++) {
		$(".month").append("<option value=\"" + i + "\">" + i + "</option>");// 为Id为month的selector附加option选项
	}
	getDays($(".month").val(), $(".year").val());// 执行函数getDays()，传参year和month，初始化day
	// selector

}

/**
 * 年月对应的日数算法
 * 
 * @param month
 * @param year
 * @returns {number}
 */
function getDaysInMonth(month, year) {
	var days;
	if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8
			|| month == 10 || month == 12) {
		days = 31;// 固定31
	} else if (month == 4 || month == 6 || month == 9 || month == 11) {
		days = 30;// 固定30
	} else {
		if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) { // 排除百年，每四年一闰；每四百年一闰；
			days = 29; // 闰年29
		} else {
			days = 28; // 平年28
		}
	}
	return days;// 返回该年月的日数
}

/**
 * 获取日
 */
function getDays() {
	var year = $(".year").val();// year selector
	// onchange="getDays()"动态获取用户选择的year值
	var month = $(".month").val();// month selector
	// onchange="getDays()"动态获取用户选择的month值
	var days = getDaysInMonth(month, year);// 调用算法函数计算对应年月的日数
	$(".day").empty();// 调用empty()函数清空day selector options，然后再append函数往day
	// selector添加options
	for (var i = 1; i <= days; i++) {
		$(".day").append("<option value=\"" + i + "\">" + i + "</option>");
	}
}

/**
 * 判断邮箱格式
 * 
 * @param str
 */
function checkEmail(str) {
	var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
	if (re.test(str)) {
		$(".email>span").empty();
		$(".emailInput").css("border", "1px solid #7c7c7c");
		isEmail= true;
	} else {
		$(".email>span").text("格式错误");
		$(".emailInput").css("border", "1px solid red");
		isEmail = false;
	}

	$(".emailInput").focus(function() {
		$(".email>span").empty();
		$(".emailInput").css("border", "1px solid #7c7c7c");
	})
}

/**
 * 判断QQ号码是否合格
 * 
 * @param str
 */
function checkQQ(str) {
	var re = /^[1-9][0-9]{4,9}$/;
	if (re.test(str)) {
		$(".qq>span").empty();
		$(".qqInput").css("border", "1px solid #7c7c7c");
		isQQ= true;
	} else {
		$(".qqInput").css("border", "1px solid red");
		$(".qq>span").text("格式错误");
		isQQ= false;
	}

	$(".qqInput").focus(function() {
		$(".qq>span").empty();
		$(".qqInput").css("border", "1px solid #7c7c7c");
	})
}

/**
 * 判断是否为合格的url
 * 
 * @param str_url
 * @returns
 */
function IsURL(str_url) {
	var strRegex = '^((https|http|ftp|rtsp|mms)?://)'
			+ '?(([0-9a-z_!~*\'().&=+$%-]+: )?[0-9a-z_!~*\'().&=+$%-]+@)?' // ftp的user@
			+ '(([0-9]{1,3}.){3}[0-9]{1,3}' // IP形式的URL- 199.194.52.184
			+ '|' // 允许IP和DOMAIN（域名）
			+ '([0-9a-z_!~*\'()-]+.)*' // 域名- www.
			+ '([0-9a-z][0-9a-z-]{0,61})?[0-9a-z].' // 二级域名
			+ '[a-z]{2,6})' // first level domain- .com or .museum
			+ '(:[0-9]{1,4})?' // 端口- :80
			+ '((/?)|' // a slash isn't required if there is no file name
			+ '(/[0-9a-z_!~*\'().;?:@&=+$,%#-]+)+/?)$';
	var re = new RegExp(strRegex);
	if (re.test(str_url)) {
		return (true);
	} else {
		return (false);
	}
}

/**
 * 限制textarea字数
 */
function checkNum(who, Num) {
	/* 字数限制 */
	$("." + who + ">textarea").on("input propertychange", function() {
		var $this = $(this), _val = $this.val(), count = "";
		if (_val.length > Num) {
			$this.val(_val.substring(0, Num));
		}
		count = 2000 - $this.val().length;
		$("#text-count").text(count);
		$("." + who + ">span").text($this.val().length + "/" + Num);

		if ($this.val().length == Num) {
			$("." + who + ">span").css("color", "#E84626");
		} else {
			$("." + who + ">span").css("color", "#666");
		}

	});

}

function range() {
	// 滑动时的样式
	$.fn.RangeSlider = function(cfg) {
		this.sliderCfg = {
			min : cfg && !isNaN(parseFloat(cfg.min)) ? Number(cfg.min) : null,
			max : cfg && !isNaN(parseFloat(cfg.max)) ? Number(cfg.max) : null,
			step : cfg && Number(cfg.step) ? cfg.step : 1,
			callback : cfg && cfg.callback ? cfg.callback : null
		};

		var $input = $(this);
		var min = this.sliderCfg.min;
		var max = this.sliderCfg.max;
		var step = this.sliderCfg.step;
		var callback = this.sliderCfg.callback;

		$input.attr('min', min).attr('max', max).attr('step', step);

		$input.bind("input", function(e) {
			$input.attr('value', this.value);
			$input.css('background',
					'linear-gradient(to right, #059CFA, #ebeff4 ' + this.value
							+ '%, #ebeff4)');
			if ($.isFunction(callback)) {
				callback(this);
			}
		});
	};
	
	// !*获取元素上面的class值 以便进行相关操作 *!/
	 var className = $("input[type='range']").attr("class");
	 var workExprienceEditor = undefined;
	if (className != undefined) {
		workExprienceEditor =className.split(/\s+/);
		// 将第二个class名赋值给who 以便进行删除操作
		who = workExprienceEditor[1];
	}
	$(who).RangeSlider({
		min : 0,
		max : 100,
		step : 1,
		callback : ''
	});// .range为input的class名
	

	/**
	 * input range 拖动改变 后面span内的值
	 */
	function rangeChange(who) {
			var Num = $(who).val();
			if (Num > 80) {
				$(who).parent().parent().children("td").eq(2).children("span").html("精通")
			} else if (Num > 50 && Num < 80) {
				$(who).parent().parent().children("td").eq(2).children("span").html("熟练")
			} else if (Num < 50 && Num > 30) {
				$(who).parent().parent().children("td").eq(2).children("span").html("良好")
			} else if (Num < 30) {
				$(who).parent().parent().children("td").eq(2).children("span").html("一般")
			};
			
	}

}

/* 点击更改css样式 */
function changeContentLeftCss() {
	$('.aa').on('click', 'li', function(e) {
		$('.aa li').removeClass('bb');
		$(this).addClass('bb');
		url = a[$(".bb").val()];
		window.location.replace($("#PageContext").val() + url);
	});
}

/**
 * 
 * 格式化日期2018.02
 * 
 * @param year
 * @param month
 * @returns {string}
 */
function getNowFormatDate(year, month) {
	var seperator1 = ".";
	/*
	 * if (month >= 1 && month <= 9) { month = "0" + month; }
	 */
	var currentdate = year + seperator1 + month
	return currentdate;

}

/**
 * 检查用户填写的简历名称是否合格
 * @param who
 * @returns
 */
function checkResumeName(who){
	$(who).blur(function() {
						if ($(this).val() == "") {
							alert("请填写简历名称");
						} else {
							$.ajax({
										type : "post",
										url : projectName
												+ "/user_po/user_checkResumeName",
										data : {"r_rname" : $(this).val()},
										success : function(data) {
											if (data != "") {
												if (data == "userIsNull") {
													alert("当前未登录  点击确定进首页进行登录")
													window.location.replace(projectName+ "/user_po/user_positionMain.html");
													IscheckResumeName =false;
												} else if (data == "no") {
													alert("重复的简历名，请重新填写")
													$(who).val("");
													IscheckResumeName =false;
												} else {
													IscheckResumeName =true;
												}

											}
										}
									});
						}
					})

}

/**
 * 新建简历
 * @returns
 */
function createResume() {

	$(".saveBasic").click(
			function() {
				if (IscheckResumeName && isEmail && isQQ) {
					// 简历名称
					var r_rname = $("input[name=r_rname]").val();
					// 真实姓名
					var r_name = $("input[name=r_name]").val();
					// 性别
					var r_sex = $("input[name='sex']:checked").val();
					// 年龄
					var r_age = jsGetAge(getNowFormatDate($(
							"select[name='birthdayYear']").val() * 1, $(
							"select[name='birthdayMonth']").val() * 1, $(
							"select[name='birthdayDay']").val() * 1));
					// 居住地址
					var r_address = getAdress();
					// 联系电话
					var r_phone = $("input[name='u_phone']").val();
					// 邮箱
					var r_email = $("input[name='r_email']").val();
					// qq
					var r_qq = $("input[name='r_qq']").val();
					// 微信
					var r_weChat = $("input[name='r_weChat']").val();
					// 自我介绍
					var r_judgement = $("textarea[name='r_judgement']").val();
					var date = new Date();
					// 创建时间
					var r_sendtime = getNowFormatDate(date.getFullYear() * 1,
							date.getMonth() * 1 + 1, date.getDate() * 1);
					// 个人空间 可以为空
					var r_personalRoom = function() {
						if (IsURL($("input[name='r_personalRoom']").val())) {
							return $("input[name='r_personalRoom']").val();
						} else {
							alert("个人空间的地址不正确");
							return "";
						}
					};
					var r_speciality = $("input[name='r_speciality']").val()// 特长
					var r_expressDelivery = "false"; // 是否快速投递

					if (r_rname == "") {
						alert("请填写简历名称")
						return;
					}
					if (r_name == "") {
						alert("请填写你的真实姓名")
						return;
					}
					if (r_judgement == "") {
						alert("请填写自我介绍")
						return;
					}
					if ($("input[name='detailedAdress']").val() == "") {
						alert("请填写详细地址")
						return;
					}

					// 图片的路径
					var imgurl = $(".myFileUpload").val();
					if (imgurl=="") {
						isPhoto = true;
						alert("请选择头像");
						return;
					}
					$("#addForm").ajaxSubmit({
						url : projectName + "/user_po/createResumeDo",
						type : "post",
						data : {
							"r_rname" : r_rname,
							"r_name" : r_name,
							"r_sex" : r_sex,
							"r_age" : r_age,
							"r_address" : r_address,
							"r_phone" : r_phone,
							"r_email" : r_email,
							"r_qq" : r_qq,
							"r_weChat" : r_weChat,
							"r_judgement" : r_judgement,
							"r_sendtime" : r_sendtime,
						},
						enctype : 'multipart/form-data',
						success : function(data) {
							if (data != "") {
								var message;
								if (data == "ok" ) {
									message = "保存成功,请继续填写其他信息"
									alert(message)
									parent.location.reload()//刷新父亲对象（用于框架）
								} else if(data == "outRang"){
										message = "简历条数超过限制范围 点击确定 返回我的简历"
										alert(message)
										//清空文本框的内容
										$("input[name=r_rname]").val("");
										$("input[name=r_name]").val("");
										$("input[name='sex']:checked").val("");
										$("input[name='r_email']").val("");
										$("input[name='r_qq']").val("");
										$("input[name='r_weChat']").val("");
										$("input[name='detailedAdress']").val("");
										$("textarea[name='r_judgement']").val("");	
										window.location.replace(projectName+"/user_po/user_myResume");	
										return;
								}else if (data == "no") {
									//清空文本框的内容
									$("input[name=r_rname]").val("");
									$("input[name=r_name]").val("");
									$("input[name='sex']:checked").val("");
									$("input[name='r_email']").val("");
									$("input[name='r_qq']").val("");
									$("input[name='r_weChat']").val("");
									$("input[name='detailedAdress']").val("");
									$("textarea[name='r_judgement']").val("");	
									message = "保存失败，请重新填写"
									alert(message);
								}
								//将简历名称的文本框设置成无法编辑状态
								$("input[name=r_rname]").attr("disabled","disabled");
								//删除已经填写成功的元素
								$(".aaa:nth-child(-n+3)").remove();
								$(".resumeBasicInfo").remove();
								$(".resumeIntroduce").remove();
								$(".saveBasic").remove();
								
							}
						},
						error : function(data) {

							alert("保存失败，请重新填写");

						}
					})
				}else {
					alert("请正确填写信息")
				}
			});
}

/**
 * 保存工作经验数据 并展示在该下方
 */
var i = 0;// i为添加的class名 方便识别
var who = undefined;// who为要删除的工作经验class名
function workExperienceSave() {
	$("input[name='workButton']").click(function() {
						var date = new Date();
						var workYear = $("select[name='workYear']").val(),
						workMonth = $("select[name='workMonth']").val(),
						workYear1 = $("select[name='workYear1']").val(), 
						workMonth1 = $("select[name='workMonth1']").val(),
						je_company = $("input[name='je_company']").val(), 
						je_job = $("input[name='je_job']").val(),
						je_describe = $("textarea[name='je_describe']").val();
						// 若不符合要求 则清空数据
						if (workYear == workYear1 && workMonth == workMonth1 || parseInt(workYear) > parseInt(workYear1) || workYear=="请选择" || workMonth=="请选择" || workYear1 !="请选择"&& workMonth1=="请选择" || workYear1 =="请选择"&& workMonth1 !="请选择"  ) {
							alert("请正确填写工作开始与截止时间");
							return;
						}
						// 未写截止时间 则设置截止时间为至今
						if (workYear1 == "请选择" && workMonth1 == "请选择") {
							workYear1 = date.getFullYear();
							workMonth1 = date.getMonth();
						}
						if (je_company == "" && je_job == ""
								&& je_describe == "") {
							alert("请填写工作经验信息");
							return;
						}
						je_start = workYear+"-"+workMonth;
						je_end = workYear1+"-"+workMonth1;
						
						if (workExperienceeditorNum != undefined) {
							$.ajax({
								type:"post",
								url:projectName+"/user_po/updateJobExperience",
								data:{"je_start":je_start,"je_end":je_end,"je_company":je_company,"je_job":je_job,"je_describe":je_describe,"r_id":$("#r_id").val(),"je_id":workExperienceeditorNum},
								success:function(data){
									 if (data =="ok") {
										alert("工作经历更新成功");
										workExperienceeditorNum = undefined;
										parent.location.reload()//刷新父亲对象（用于框架）
									}},
									error:function(data){
										alert("工作经历更新失败");
									}
							})

						} else {
							$.ajax({
								type:"post",
								url:projectName+"/user_po/saveJobExperience",
								data:{"je_start":je_start,"je_end":je_end,"je_company":je_company,"je_job":je_job,"je_describe":je_describe,"r_id":$("#r_id").val()},
								success:function(data){
									if (data =="outRang") {
										alert("工作经历已超过上限");
										parent.location.reload()//刷新父亲对象（用于框架）
									}else if (data =="ok") {
										alert("工作经历保存成功");
										parent.location.reload()//刷新父亲对象（用于框架）
									}},
									error:function(data){
										alert("工作经历保存失败");
										parent.location.reload()//刷新父亲对象（用于框架）
									}
							})

						}
						$("input[name='je_company']").html(""), 
						$("input[name='je_job']").html(""),
						$("textarea[name='je_describe'] span").html("0/240");
					});
}

/**
 * 用户对工作经历进行重新编辑
 * @param editor
 * @returns
 */
function workExperienceeditor(editor) {
	// !*获取元素上面的class值 以便进行相关操作 *!/
	var workExprienceEditor = $(editor).attr("class").split(/\s+/);
	// 将第二个class名赋值给who 以便进行删除操作
	who = workExprienceEditor[1];
	
	workExperienceeditorNum = $(editor).parent().children("input[type='hidden']").val();
	if (editor != undefined) {
		// 开始时间
		var startTime = $(editor).parent().children("span").eq(0).html().split("-");
		// 结束时间
		var endTime = $(editor).parent().children("span").eq(1).html().split("-");
		$("select[name='workYear']").val(startTime[0]);
		$("select[name='workMonth']").val(startTime[1]);
		$("select[name='workYear1']").val(endTime[0]);
		$("select[name='workMonth1']").val(endTime[1]);
		// 设置公司名
		$("input[name='je_company']").val(
				$(editor).parent().children("span").eq(2).html());
		// 设置职位
		$("input[name='je_job']").val(
				$(editor).parent().children("span").eq(4).html());
		// 设置工作描述
		$("textarea[name='je_describe']").val(
				$(editor).parent().next().children("span").html())
	}
}

/**
 * 删除工作经历
 * @returns
 */
function workExperienceDelete() {
	$("input[name='workDelete']").click(function() {
		if (workExperienceeditorNum != undefined) {
			$.ajax({
				type:"post",
				url:projectName+"/user_po/deleteJobExperience",
				data:{"workExperienceeditorNum":workExperienceeditorNum,"r_id":$("#r_id").val()},
				success:function(data){
					 if (data =="ok") {
						alert("工作经历删除成功");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "null") {
						alert("操作出现异常");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "no") {
						alert("工作经历删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
				},
				error:function(data){
						alert("工作经历删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
			})
			$("input[name='je_company']").val("");
			$("input[name='je_job']").val("");
			$("textarea[name='je_describe']").val("");
		} else {
			alert("请先编辑")
		}
	});

}

/**
 * 保存用户的项目经验
 * @returns
 */
function projectExperienceSave() {
	$("input[name='projectButton']").click(function() {
						var date = new Date();
						var projectYear = $("select[name='projectYear1']").val(),
						projectMonth = $("select[name='projectMonth1']").val(),
						projectYear1 = $("select[name='projectYear2']").val(), 
						projectMonth1 = $("select[name='projectMonth2']").val(),
						pe_name = $("input[name='pe_name']").val(), 
						pe_position = $("input[name='pe_position']").val(),
						pe_describe = $("textarea[name='pe_describe']").val();
						// 若不符合要求 则清空数据
						if (projectYear == projectYear1 && projectMonth == projectMonth1 || parseInt(projectYear) > parseInt(projectYear1) || projectYear=="请选择" || projectMonth=="请选择" || projectYear1 !="请选择"&& projectMonth1=="请选择" || projectYear1 =="请选择"&& projectMonth1 !="请选择"  ) {
							alert("请正确填写项目开始与截止时间");
							return;
						}
						// 未写截止时间 则设置截止时间为至今
						if (projectYear1 == "请选择" && projectMonth1 == "请选择") {
							projectYear1 = date.getFullYear();
							projectMonth1 = date.getMonth();
						}
						if (pe_name == "" && pe_position == ""
								&& pe_describe == "") {
							alert("请填写项目经验信息");
							return;
						}
						pe_start = projectYear+"-"+projectMonth;
						pe_end = projectYear1+"-"+projectMonth1;
						
						if (projectExperienceeditorNum != undefined) {
							$.ajax({
								type:"post",
								url:projectName+"/user_po/updateProjectExperience",
								data:{"pe_start":pe_start,"pe_end":pe_end,"pe_name":pe_name,"pe_position":pe_position,"pe_describe":pe_describe,"r_id":$("#r_id").val(),"pe_id":projectExperienceeditorNum},
								success:function(data){
									 if (data =="ok") {
										alert("项目经验更新成功");
										projectExperienceeditorNum = undefined;
										parent.location.reload()//刷新父亲对象（用于框架）
									}},
									error:function(data){
										alert("项目经验更新失败");
										parent.location.reload()//刷新父亲对象（用于框架）
									}
							})
						} else {
							$.ajax({
								type:"post",
								url:projectName+"/user_po/saveProjectExperience",
								data:{"pe_start":pe_start,"pe_end":pe_end,"pe_name":pe_name,"pe_position":pe_position,"pe_describe":pe_describe,"r_id":$("#r_id").val()},
								success:function(data){
									if (data =="outRang") {
										alert("项目经验已超过上限");
										parent.location.reload()//刷新父亲对象（用于框架）
									}else if (data =="ok") {
										alert("项目经验保存成功");
										parent.location.reload()//刷新父亲对象（用于框架）
									}},
									error:function(data){
										alert("项目经验保存失败");
										parent.location.reload()//刷新父亲对象（用于框架）
									}
							})

						}
						$("input[name='pe_name']").html(""), 
						$("input[name='pe_position']").html(""),
						$("textarea[name='pe_describe'] span").html("0/240");
					});
}

/**
 * 用户对项目经历进行重新编辑 
 * @param editor
 * @returns
 */
function projectExperienceeditor(editor) {
	// !*获取元素上面的class值 以便进行相关操作 *!/
	var workExprienceEditor = $(editor).attr("class").split(/\s+/);
	// 将第二个class名赋值给who 以便进行删除操作
	who = workExprienceEditor[1];
	projectExperienceeditorNum = $(editor).parent().children("input[type='hidden']").val();
	if (editor != undefined) {
		// 开始时间
		var startTime = $(editor).parent().children("span").eq(0).html().split("-");
		// 结束时间
		var endTime = $(editor).parent().children("span").eq(1).html().split("-");
		$("select[name='projectYear1']").val(startTime[0]);
		$("select[name='projectMonth1']").val(startTime[1]);
		$("select[name='projectYear2']").val(endTime[0]);
		$("select[name='projectMonth2']").val(endTime[1]);
		// 设置公司名
		$("input[name='pe_name']").val($(editor).parent().children("span").eq(2).html());
		// 设置职位
		$("input[name='pe_position']").val(
				$(editor).parent().children("span").eq(4).html());
		// 设置工作描述
		$("textarea[name='pe_describe']").val($(editor).parent().next().children("span").html())
	}
}

/**
 * 删除项目经历
 */
function projectExperienceDelete() {
	$("input[name='projectDelete']").click(function() {
		if (projectExperienceeditorNum != undefined) {
			$.ajax({
				type:"post",
				url:projectName+"/user_po/deleteProjectExperience",
				data:{"projectExperienceeditorNum":projectExperienceeditorNum,"r_id":$("#r_id").val()},
				success:function(data){
					 if (data =="ok") {
						alert("工作经历删除成功");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "null") {
						alert("操作出现异常");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "no") {
						alert("工作经历删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
				},
				error:function(data){
						alert("工作经历删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
			})
			$("input[name='pe_name']").val("");
			$("input[name='pe_position']").val("");
			$("textarea[name='pe_describe']").val("");
		} else {
			alert("请先编辑")
		}
	});

}

/**
 * 保存用户的教育经历
 * @returns
 */
function educationExperienceSave() {
	$("input[name='educationButton']").click(function() {
						var date = new Date();
						var educationYear = $("select[name='educationYear']").val(),
						educationMonth = $("select[name='educationMonth']").val(),
						educationYear1 = $("select[name='educationYear1']").val(), 
						educationMonth1 = $("select[name='educationMonth1']").val(),
						school_name = $("input[name='school_name']").val(), 
						major = $("input[name='major']").val(),
						system = $("input[name='system']").val(),
						education = $("input[name='education']").val();
						// 若不符合要求 则清空数据
						if(educationYear == educationYear1 && educationMonth == educationMonth1 || parseInt(educationYear) > parseInt(educationYear1) || educationYear=="请选择" || educationMonth=="请选择" || educationYear1 !="请选择"&& educationMonth1=="请选择" || educationYear1 =="请选择"&& educationMonth1 !="请选择"  ) {
							alert("请正确填写教育开始与截止时间");
							return;
						}
						// 未写截止时间 则设置截止时间为至今
						if (educationYear1 == "请选择" && educationMonth1 == "请选择") {
							educationYear1 = date.getFullYear();
							educationMonth1 = date.getMonth();
						}
						if (school_name == "" && major == ""
								&& systme == "" && education == "" ) {
							alert("请填写项目经验信息");
							return;
						}
						start_time = educationYear+"-"+educationMonth;
						end_time = educationYear1+"-"+educationMonth1;
						
						if (educationExperienceeditorNum != undefined) {
							$.ajax({
								type:"post",
								url:projectName+"/user_po/updateEducationExperience",
								data:{"start_time":start_time,"end_time":end_time,"school_name":school_name,"major":major,"system":system,"education":education,"r_id":$("#r_id").val(),"ed_id":educationExperienceeditorNum},
								success:function(data){
									 if (data =="ok") {
										alert("教育经历更新成功");
										educationExperienceeditorNum = undefined;
										parent.location.reload()//刷新父亲对象（用于框架）
									}},
									error:function(data){
										alert("教育经历更新失败");
										parent.location.reload()//刷新父亲对象（用于框架）
									}
							})
						} else {
							$.ajax({
								type:"post",
								url:projectName+"/user_po/saveEducationExperience",
								data:{"start_time":start_time,"end_time":end_time,"school_name":school_name,"major":major,"system":system,"education":education,"r_id":$("#r_id").val()},
								success:function(data){
									if (data =="outRang") {
										alert("教育经历已超过上限");
										parent.location.reload()//刷新父亲对象（用于框架）
									}else if (data =="ok") {
										alert("教育经历保存成功");
										parent.location.reload()//刷新父亲对象（用于框架）
									}},
									error:function(data){
										alert("教育经历保存失败");
										parent.location.reload()//刷新父亲对象（用于框架）
									}
							})

						}
						$("input[name='school_name']").html(""), 
						$("input[name='major']").html(""),
						$("input[name='system']").html(""),
						$("input[name='education']").html("")
					});
}

/**
 * 用户对教育经历进行重新编辑 
 * @param editor
 * @returns
 */
function educationExperienceeditor(editor) {
	// !*获取元素上面的class值 以便进行相关操作 *!/
	var workExprienceEditor = $(editor).attr("class").split(/\s+/);
	// 将第二个class名赋值给who 以便进行删除操作
	who = workExprienceEditor[1];
	educationExperienceeditorNum = $(editor).parent().children("input[type='hidden']").val();
	if (editor != undefined) {
		// 开始时间
		var startTime = $(editor).parent().children("span").eq(0).html().split("-");
		// 结束时间
		var endTime = $(editor).parent().children("span").eq(1).html().split("-");
		$("select[name='educationYear']").val(startTime[0]);
		$("select[name='educationMonth']").val(startTime[1]);
		$("select[name='educationYear1']").val(endTime[0]);
		$("select[name='educationMonth1']").val(endTime[1]);
		// 设置学校
		$("input[name='school_name']").val($(editor).parent().children("span").eq(2).html());
		// 设置系
		$("input[name='system']").val(
				$(editor).parent().children("span").eq(3).html());
		// 设置专业
		$("input[name='major']").val($(editor).parent().children("span").eq(5).html());
		// 设置学历
		$("input[name='education']").val(
				$(editor).parent().next().children("span").html());
	}
}

/**
 * 删除教育经历
 */
function educationExperienceDelete() {
	$("input[name='educationDelete']").click(function() {
		if (educationExperienceeditorNum != undefined) {
			$.ajax({
				type:"post",
				url:projectName+"/user_po/deleteEducationExperience",
				data:{"educationExperienceeditorNum":educationExperienceeditorNum,"r_id":$("#r_id").val()},
				success:function(data){
					 if (data =="ok") {
						alert("工作经历删除成功");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "null") {
						alert("操作出现异常");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "no") {
						alert("工作经历删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
				},
				error:function(data){
						alert("工作经历删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
			})
			$("input[name='major']").val("");
			$("input[name='system']").val("");
			$("input[name='education']").val("");
			$("input[name='school_name']").val("");
		} else {
			alert("请先编辑")
		}
	});

}



/**
 * 保存用户的培训经历
 * @returns
 */
function trainExperienceSave() {
	$("input[name='trainButton']").click(function() {
		var date = new Date();
		var trainYear = $("select[name='trainYear']").val(),
		trainMonth = $("select[name='trainMonth']").val(),
		trainYear1 = $("select[name='trainYear1']").val(), 
		trainMonth1 = $("select[name='trainMonth1']").val(),
		te_school = $("input[name='te_school']").val(), 
		te_course = $("input[name='te_course']").val();
		// 若不符合要求 则清空数据
		if(trainYear == trainYear1 && trainMonth == trainMonth1 || parseInt(trainYear) > parseInt(trainYear1) || trainYear=="请选择" || trainMonth=="请选择" || trainYear1 !="请选择"&& trainMonth1=="请选择" || trainYear1 =="请选择"&& trainMonth1 !="请选择"  ) {
			alert("请正确填写培训开始与截止时间");
			return;
		}
		// 未写截止时间 则设置截止时间为至今
		if (trainYear1 == "请选择" && trainMonth1 == "请选择") {
			trainYear1 = date.getFullYear();
			trainMonth1 = date.getMonth();
		}
		if (te_school == "" && te_course == ""
			) {
			alert("请填写培训经历信息");
			return;
		}
		te_start= trainYear+"-"+trainMonth;
		te_end = trainYear1+"-"+trainMonth1;
		
		if (trainExperienceeditorNum != undefined) {
			$.ajax({
				type:"post",
				url:projectName+"/user_po/updateTrainExperience",
				data:{"te_start":te_start,"te_end":te_end,"te_school":te_school,"te_course":te_course,"r_id":$("#r_id").val(),"te_id":trainExperienceeditorNum},
				success:function(data){
					if (data =="ok") {
						alert("教育经历更新成功");
						trainExperienceeditorNum = undefined;
						parent.location.reload()//刷新父亲对象（用于框架）
					}},
					error:function(data){
						alert("教育经历更新失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
			})
		} else {
			$.ajax({
				type:"post",
				url:projectName+"/user_po/saveTrainExperience",
				data:{"te_start":te_start,"te_end":te_end,"te_school":te_school,"te_course":te_course,"r_id":$("#r_id").val()},
				success:function(data){
					if (data =="outRang") {
						alert("培训经历已超过上限");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data =="ok") {
						alert("培训经历保存成功");
						parent.location.reload()//刷新父亲对象（用于框架）
					}},
					error:function(data){
						alert("培训经历保存失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
			})
			
		}
		$("input[name='te_school']").html(""), 
		$("input[name='te_course']").html("");
	});
}

/**
 * 用户对培训经历进行重新编辑 
 * @param editor
 * @returns
 */
function trainExperienceeditor(editor) {
	// !*获取元素上面的class值 以便进行相关操作 *!/
	var workExprienceEditor = $(editor).attr("class").split(/\s+/);
	// 将第二个class名赋值给who 以便进行删除操作
	who = workExprienceEditor[1];
	trainExperienceeditorNum = $(editor).parent().children("input[type='hidden']").val();
	if (editor != undefined) {
		// 开始时间
		var startTime = $(editor).parent().children("span").eq(0).html().split("-");
		// 结束时间
		var endTime = $(editor).parent().children("span").eq(1).html().split("-");
		$("select[name='trainYear']").val(startTime[0]);
		$("select[name='trainMonth']").val(startTime[1]);
		$("select[name='trainYear1']").val(endTime[0]);
		$("select[name='trainMonth1']").val(endTime[1]);
		// 设置学校
		$("input[name='te_school']").val($(editor).parent().children("span").eq(2).html());
		// 设置科目
		$("input[name='te_course']").val(
				$(editor).parent().children("span").eq(4).html());
	}
}


/**
 * 删除教育经历
 * @returns
 */
function trainExperienceDelete() {
	$("input[name='trainDelete']").click(function() {
		if (trainExperienceeditorNum != undefined) {
			$.ajax({
				type:"post",
				url:projectName+"/user_po/deleteTrainExperience",
				data:{"trainExperienceeditorNum":trainExperienceeditorNum,"r_id":$("#r_id").val()},
				success:function(data){
					if (data =="ok") {
						alert("培训经历删除成功");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "null") {
						alert("操作出现异常");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "no") {
						alert("培训经历删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
				},
				error:function(data){
					alert("培训经历删除失败");
					parent.location.reload()//刷新父亲对象（用于框架）
				}
			})
			$("input[name='te_school']").val("");
			$("input[name='te_course']").val("");
		} else {
			alert("请先编辑")
		}
	});
	
}

/**
 * 用户对培训经历进行重新编辑 
 * @param editor
 * @returns
 */
function trainExperienceeditor(editor) {
	// !*获取元素上面的class值 以便进行相关操作 *!/
	var workExprienceEditor = $(editor).attr("class").split(/\s+/);
	// 将第二个class名赋值给who 以便进行删除操作
	who = workExprienceEditor[1];
	trainExperienceeditorNum = $(editor).parent().children("input[type='hidden']").val();
	if (editor != undefined) {
		// 开始时间
		var startTime = $(editor).parent().children("span").eq(0).html().split("-");
		// 结束时间
		var endTime = $(editor).parent().children("span").eq(1).html().split("-");
		$("select[name='trainYear']").val(startTime[0]);
		$("select[name='trainMonth']").val(startTime[1]);
		$("select[name='trainYear1']").val(endTime[0]);
		$("select[name='trainMonth1']").val(endTime[1]);
		// 设置学校
		$("input[name='te_school']").val($(editor).parent().children("span").eq(2).html());
		// 设置科目
		$("input[name='te_course']").val(
				$(editor).parent().children("span").eq(4).html());
	}
}


/**
 * 删除教育经历
 * @returns
 */
function trainExperienceDelete() {
	$("input[name='trainDelete']").click(function() {
		if (trainExperienceeditorNum != undefined) {
			$.ajax({
				type:"post",
				url:projectName+"/user_po/deleteTrainExperience",
				data:{"trainExperienceeditorNum":trainExperienceeditorNum,"r_id":$("#r_id").val()},
				success:function(data){
					if (data =="ok") {
						alert("培训经历删除成功");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "null") {
						alert("操作出现异常");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "no") {
						alert("培训经历删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
				},
				error:function(data){
					alert("培训经历删除失败");
					parent.location.reload()//刷新父亲对象（用于框架）
				}
			})
			$("input[name='te_school']").val("");
			$("input[name='te_course']").val("");
		} else {
			alert("请先编辑")
		}
	});
	
}


/**
 * 保存当前简历的特长
 * @returns
 */
function specialitySave() {
	$("input[name='specialityButton']").click(function() {
		r_speciality = $("textarea[name='r_speciality']").val();
		// 若不符合要求 则清空数据
		if(r_speciality=="") {
			alert("请正确填写特长信息");
			return;
		}
			$.ajax({
				type:"post",
				url:projectName+"/user_po/saveR_Speciality",
				data:{"r_speciality":r_speciality,"r_id":$("#r_id").val()},
				success:function(data){
					if (data =="outRang") {
						alert("特长信息已超过上限");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data =="ok") {
						alert("特长信息保存成功");
						parent.location.reload()//刷新父亲对象（用于框架）
					}},
					error:function(data){
						alert("特长信息保存失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
			})
		$("textarea[name='r_speciality']").html("");
	});
}

/**
 * 保存当前简历的技能
 * @returns
 */
function skillSave() {
	$("input[name='skill']").click(function() {
		rs_name = $("input[name='rs_name']").val();
		rs_proficiency = $(".skill").val();
		// 若不符合要求 则清空数据
		if(rs_name=="") {
			alert("请填写技能信息");
			return;
		}
		if(rs_proficiency=="熟练程度") {
			alert("请选择熟练程度");
			return;
		}
		$.ajax({
			type:"post",
			url:projectName+"/user_po/skillSave",
			data:{"rs_name":rs_name,"rs_proficiency":rs_proficiency,"r_id":$("#r_id").val()},
			success:function(data){
				if (data =="outRang"){
					alert("特长信息已超过上限");
					parent.location.reload()//刷新父亲对象（用于框架）
				}else if (data =="ok") {
					alert("特长信息保存成功");
					parent.location.reload()//刷新父亲对象（用于框架）
				}},
				error:function(data){
					alert("特长信息保存失败");
					parent.location.reload()//刷新父亲对象（用于框架）
				}
		})
	});
}

/**
 * 用户删除技能 
 * @param who
 * @returns
 */
function skillDelete(who) {
	// !*获取元素上面的class值 以便进行相关操作 *!/
	var workExprienceEditor = $(who).attr("class").split(/\s+/);
	// 将第二个class名赋值给who 以便进行删除操作
	whos = workExprienceEditor[1];
	rs_id = $("input[name='rs_id']").val();
	if (who != undefined) {
			$.ajax({
				type:"post",
				url:projectName+"/user_po/skillDelete",
				data:{"rs_id":rs_id,"r_id":$("#r_id").val()},
				success:function(data){
					if (data =="ok") {
						alert("培训经历删除成功");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "null") {
						alert("操作出现异常");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "no") {
						alert("培训经历删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
				},
				error:function(data){
					alert("培训经历删除失败");
					parent.location.reload()//刷新父亲对象（用于框架）
				}
			})
	}
}



/**
 * 删除当前简历的特长
 * @returns
 */
function specialityDelete(who) {
		alert($(who).parent().children("span:first-child").html())
			$.ajax({
				type:"post",
				url:projectName+"/user_po/deleteSpeciality",
				data:{"r_speciality":$(who).parent().children("span:first-child").html(),"r_id":$("#r_id").val()},
				success:function(data){
					if (data =="ok") {
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "null") {
						alert("操作出现异常");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "no") {
						alert("特长删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
				},
				error:function(data){
					alert("特长删除失败");
					parent.location.reload()//刷新父亲对象（用于框架）
				}
			})
}

/**
 * 保存当前简历的个人空间信息
 * @returns
 */
function personalRoomSave() {
	$("input[name='personalRoomButton']").click(function() {
		r_personalRoom = $("input[name='r_personalRoom']").val();
		alert(r_personalRoom);
		// 若不符合要求 则清空数据
		if(r_personalRoom=="") {
			alert("请正确填写个人空间信息");
			return;
		}
			$.ajax({
				type:"post",
				url:projectName+"/user_po/saveR_personalRoom",
				data:{"r_personalRoom":r_personalRoom,"r_id":$("#r_id").val()},
				success:function(data){
					 if (data =="ok") {
						alert("个人空间保存成功");
						parent.location.reload()//刷新父亲对象（用于框架）
					}},
					error:function(data){
						alert("特长信息保存失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
			})
		$("input[name='r_personalRoom']").html("");
	});
}


/**
 * 用户对个人空间信息进行重新编辑 
 * @param editor
 * @returns
 */
function personalRoomeditor(editor) {
	// !*获取元素上面的class值 以便进行相关操作 *!/
	var workExprienceEditor = $(editor).attr("class").split(/\s+/);
	// 将第二个class名赋值给who 以便进行删除操作
	who = workExprienceEditor[1];
	personalRoom = $(editor).parent().children("span").eq(0).html();
	if (editor != undefined) {
		$("input[name='r_personalRoom']").val($(editor).parent().children("span").eq(0).html());
	}
}


/**
 * 删除个人空间信息
 * @returns
 */
function personalRoomDelete() {
	$("input[name='personalRoomDelete']").click(function() {
		if (personalRoom != undefined) {
			$.ajax({
				type:"post",
				url:projectName+"/user_po/deletePersonalRoom",
				data:{"r_personalRoom":personalRoom,"r_id":$("#r_id").val()},
				success:function(data){
					if (data =="ok") {
						alert("个人空间信息删除成功");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "null") {
						alert("操作出现异常");
						parent.location.reload()//刷新父亲对象（用于框架）
					}else if (data == "no") {
						alert("个人空间信息删除失败");
						parent.location.reload()//刷新父亲对象（用于框架）
					}
				},
				error:function(data){
					alert("个人空间信息删除失败");
					parent.location.reload()//刷新父亲对象（用于框架）
				}
			})
		} else {
			alert("请先编辑")
		}
	});
	
}

/**
 * 将用户输入的日期格式为yyyy-mm-dd格式
 * @param year
 * @param month
 * @param strDate
 * @returns
 */
function getNowFormatDate(year, month, strDate) {
	var seperator1 = "-";
	if (month >= 1 && month <= 9) {
		month = "0" + month;
	}
	if (strDate >= 0 && strDate <= 9) {
		strDate = "0" + strDate;
	}
	var currentdate = year + seperator1 + month + seperator1 + strDate;
	return currentdate;

}

/**
 * 通过格式化的时间获取到年龄
 * @param strBirthday
 * @returns
 */
function jsGetAge(strBirthday) {
	var returnAge;
	var strBirthdayArr = strBirthday.split("-");
	var birthYear = strBirthdayArr[0];
	var birthMonth = strBirthdayArr[1];
	var birthDay = strBirthdayArr[2];
	var d = new Date();
	var nowYear = d.getFullYear();
	var nowMonth = d.getMonth() + 1;
	var nowDay = d.getDate();
	if (nowYear == birthYear) {
		returnAge = 0;// 同年 则为0岁
	} else {
		var ageDiff = nowYear - birthYear; // 年之差
		if (ageDiff > 0) {
			if (nowMonth == birthMonth) {
				var dayDiff = nowDay - birthDay;// 日之差
				if (dayDiff < 0) {
					returnAge = ageDiff - 1;
				} else {
					returnAge = ageDiff;
				}
			} else {
				var monthDiff = nowMonth - birthMonth;// 月之差
				if (monthDiff < 0) {
					returnAge = ageDiff - 1;
				} else {
					returnAge = ageDiff;
				}
			}
		} else {
			returnAge = -1;// 返回-1 表示出生日期输入错误 晚于今天
		}
	}
	return returnAge;// 返回周岁年龄
}

/**
 * 拼接用户输入的地址信息
 */
function getAdress() {
	var provinceName = $("select[name='provinceName']").val(), // 省
	cityName = $("select[name='cityName']").val(), // 市
	districtName = $("select[name='districtName']").val(), // 区
	detailedAdress = $("input[name='detailedAdress']").val();// 详细地址
	return provinceName + cityName + districtName + detailedAdress;
}

/**
 * 将用户输入的日期格式为yyyy-mm-dd格式
 */
function getNowFormatDate(year, month, strDate) {
	var seperator1 = "-";
	if (month >= 1 && month <= 9) {
		month = "0" + month;
	}
	if (strDate >= 0 && strDate <= 9) {
		strDate = "0" + strDate;
	}
	var currentdate = year + seperator1 + month + seperator1 + strDate;
	return currentdate;

}
