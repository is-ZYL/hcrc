var pathName=window.document.location.pathname;
	/*通过字符串截取 获取到项目名*/
	var projectName = pathName.substring(0,pathName.substr(1).indexOf('/')+1); 

	 


function validate() {
        var password=$("#PASSWORD").val();
        var v_password=$("#V_PASSWORD").val();
        if(password != v_password ){
        $("#V_PASSWORD+span").html("密码不一致")
        }
    }
    
    
    /*调用验证码的方法*/
    $(function(){
		changeImg();
		$(".img").click(function(){
			changeImg();
		})

		$("#TEL").blur(function () {
			  $.ajax({
				  url:$("#PageContext").val()+"/user_po/user_checkUPhone",
				  type:"post",
				  data:{u_phone:$("#TEL").val()},
			      success:function(data){
				  if (data == 0) {
					  $("#TEL").after("<span class='span'>已经被使用啦</span>")
					  $(".span").css('color',"red")
					  $(".span").css('float',"right")
					  $(".span").css('position',"absolute")
				}
			  }
			  })
		}) 
    
    })
	
	
	/*验证码*/
  function changeImg(){
		$.ajax({
			url:$("#PageContext").val()+"/user_po/img",
			type:"post",
			success:function(){
				$(".img").attr("src",$("#PageContext").val()+"/user_po/img")
			}
		})
	}

 


$("#TEL").blur(function () {
	  $.ajax({
		  url:$("#PageContext").val()+"/user_po/user_checkUPhone",
		  type:"post",
		  data:{u_phone:$("#TEL").val()},
	      success:function(data){
		  if (data == 0) {
			  $("#TEL").after("<span>该用户名已经被使用</span>")
			  $("#TEL >span").css('color',"red",'float',"right")
		}else{
			 $("#TEL").after("<span></span>")
			  $("#TEL >span").css('color',"white",'float',"right")
		
		}
	  }
	  })
}) 