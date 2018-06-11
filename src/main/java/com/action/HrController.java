package com.action;

import java.io.IOException;
import java.security.MessageDigest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Enterprise;
import com.gerneral.util.Val;
import com.service.IHrService;

@Controller
@RequestMapping("hr")
public class HrController {
	@Autowired
	private IHrService iHrService;
	
	//显示主页
		@RequestMapping("{uri}_hrmain")
		public String hrmain(@PathVariable("uri") String uri) {
			return uri+"/hrmain";
		}
	//执行注册
	@RequestMapping("{uri}_hrInsertRegDo")
	public String hrInsertReg(@PathVariable("uri") String uri,Enterprise enterprise) {
		System.out.println("sdfsadfasdfsadfsafdsadf");
			iHrService.hrInsertRegDo(enterprise);
			System.out.println(enterprise);
				return "redirect:"+uri+"_hrmain";
	}
	
	//验证码
	@RequestMapping("{uri}_val")
	public void val(HttpServletRequest request,HttpServletResponse response) {
		Val v = new Val();
		try {
			v.val(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//执行登录
		@RequestMapping("selectLogin")
		@ResponseBody
		public Enterprise selectLogin(Enterprise enterprise,HttpSession session ) {
			Enterprise enter = iHrService.selectLogin(enterprise);
			
			session.setAttribute("HR_LOG", enter);
			return enter;
		}
		//执行退出
		@RequestMapping("hrExit")
		@ResponseBody
		public String hrExit(HttpSession session) {
				session.removeAttribute("HR_LOG");
				Object o  = session.getAttribute("HR_LOG");
			System.out.println(o);
			return "main";
		}
		//显示显示企业简历页
		@RequestMapping("{uri}_enterprise")
		public String enterprise(@PathVariable("uri") String uri) {
			return uri+"/enterprise";
		}
		//显示职业详情页
		@RequestMapping("{uri}_details")
		public String details(@PathVariable("uri") String uri) {
			return uri+"/details";
		}
		//显示编辑职业详情页
		@RequestMapping("{uri}_editors")
		public String editors(@PathVariable("uri") String uri) {
				return uri+"/editors";
		}
		//显示修改密码页
		@RequestMapping("{uri}_updatepassword")
		public String updatepassword(@PathVariable("uri") String uri) {
				return uri+"/updatepassword";
		}
		//执行修改密码方法
		@RequestMapping("updatepw")
		@ResponseBody
		public boolean  updatepw(String e_password_old ,String e_password_new, HttpSession session) {
			Enterprise ob =  (Enterprise) session.getAttribute("HR_LOG");
			
			    
				String password = ob.getE_password();
				System.out.println("ye"+MD5(e_password_old));
				
				System.out.println("ku"+password);
				System.out.println("测试1");
				if(MD5(e_password_old).equals(password)) {
					System.out.println("进入");
					System.out.println("测试2");
					ob.setE_password(e_password_new);
					System.out.println("测试3");
					
					iHrService.updateHrPassword(ob);
					System.out.println("测试4");
				    return  true;
				}
				System.out.println("测试5");
			return false ;
		}
		
		private static String MD5(String s) {
		    try {
		        MessageDigest md = MessageDigest.getInstance("MD5");
		        byte[] bytes = md.digest(s.getBytes("utf-8"));
		        return toHex(bytes);
		    }
		    catch (Exception e) {
		        throw new RuntimeException(e);
		    }
		}

		private static String toHex(byte[] bytes) {

		    final char[] HEX_DIGITS = "0123456789abcdefg".toCharArray();
		    StringBuilder ret = new StringBuilder(bytes.length * 2);
		    for (int i=0; i<bytes.length; i++) {
		        ret.append(HEX_DIGITS[(bytes[i] >> 4) & 0x0f]);
		        ret.append(HEX_DIGITS[bytes[i] & 0x0f]);
		    }
		    return ret.toString();
		}
		
}
