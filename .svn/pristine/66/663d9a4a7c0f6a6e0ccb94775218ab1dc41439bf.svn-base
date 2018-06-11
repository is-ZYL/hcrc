package com.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.entity.Headhunting;
import com.entity.Pager;
import com.entity.Users;
import com.service.IHeadhuntingService;


@Controller
@SessionAttributes({"recommend"})
@RequestMapping("headhunter")
public class HeadhunterAction {
	@Autowired
	private IHeadhuntingService headhuntingService;
	
	/**
	 * 访问猎头主界面
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_headhunterMain" )
	private String main(@PathVariable("uri") String uri,String pageNow,ModelMap map,String pageNowTalents) {
		if(pageNow == null || Integer.parseInt(pageNow) < 1) {
			pageNow = "1";
		}
		if( pageNowTalents== null || Integer.parseInt(pageNow) < 1) {
			pageNowTalents = "1";
		}
		// 推荐联系人
		Pager<Users> pager = new Pager<>();
		pager.setPageNow(Integer.parseInt(pageNow));
		pager.setPageSize(9);
		pager = headhuntingService.selectUserAll(pager);
		map.addAttribute("recommend", pager);
		//高端人才
		Pager<Users> topTalents = new Pager<>();
		topTalents.setPageNow(Integer.parseInt(pageNowTalents));
		topTalents.setPageSize(6);
		topTalents=headhuntingService.selecttopTalents(topTalents);
		map.put("topTalents", topTalents);
		return uri+"/headhunterMain";
	}
	/**
	 * 猎头执行注册
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_regDo" )
	private String headhunterRegDo(@PathVariable("uri") String uri,Headhunting Headhunting) {
		headhuntingService.insertHeadhunter(Headhunting);		
		return "redirect:"+uri+"_headhunterMain";
	}
	/**
	 * 猎头执行登录
	 * @param headhunting
	 * @return
	 */
	@RequestMapping("headhunter_logDo")
	@SuppressWarnings("unchecked")
	@ResponseBody
	public Map<String,Object> selectHeadhuntingLog(Headhunting headhunting,HttpSession session,String pageNow) {
		if(pageNow == null || Integer.parseInt(pageNow) < 1) {
			pageNow = "1";
		}
		Headhunting headhunter =headhuntingService.selectHeadhunter(headhunting);
		session.setAttribute("LOG_HEADHUNTING", headhunter);
		Map<String,Object> map = new HashMap<>();
		// 个人资料
		map.put("headhunter", headhunter);
		// 推荐候选人
		Pager<Users> pager =(Pager<Users>) session.getAttribute("recommend");
		map.put("recommend", pager);
		return map;
	}
	/**
	 * 猎头退出账号
	 * @param session
	 * @return
	 */
	@RequestMapping("headhunter_exit")
	public String headhunterExit(HttpSession session) {	
		session.removeAttribute("LOG_HEADHUNTING");
		return "redirect:/main";
	}
	/**
	 * 进入人才库
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_talentPool")
	public String talentPool (@PathVariable("uri") String uri,String pageNow,ModelMap map) {
		if(pageNow == null || Integer.parseInt(pageNow) < 1) {
			pageNow = "1";
		}
		Pager<Users> pager = new Pager<>();
		pager.setPageNow(Integer.parseInt(pageNow));
		pager.setPageSize(9);
		pager = headhuntingService.selectUserAll(pager);
		map.addAttribute("recommend", pager);
		return uri+"/recommend";
	}
	/**
	 * 进入职位管理
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_positionManage")
	public String positionManage (@PathVariable("uri") String uri) {
		return uri+"/management";
	}
	/**
	 * 查看职位
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_jobDetails")
	public String JobDetails (@PathVariable("uri") String uri) {
		return uri+"/checkPosition";
	}
	/**
	 * 编辑职位
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_compileJob")
	public String compileJob (@PathVariable("uri") String uri) {
		return uri+"/compileJob";
	}
	/**
	 * 候选人管理
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_candidate")
	public String candidate (@PathVariable("uri") String uri) {
		return uri+"/candidate";
	}
	/**
	 * 猎头资料
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_headhunterInformation")
	public String headhunterInformation (@PathVariable("uri") String uri) {
		return uri+"/headhunterInformation";
	}
	/**
	 * 猎头账号管理
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_account")
	public String account (@PathVariable("uri") String uri) {
		return uri+"/account";
	}
	/**
	 * 查询电话是否已经被注册
	 * @return
	 */
	@RequestMapping("VerifyUsername")
	@ResponseBody
	public boolean VerifyUsername(String h_username) {
		boolean isReg = headhuntingService.selectHeadhunterByUsername(h_username);
		if(isReg) {			
			return true;			
		}
		return false;
		
	}
	/**
	 * 模糊查找人才
	 * @param keyCode
	 * @return
	 */
	@RequestMapping("SearchUsersByDim")
	@ResponseBody
	public Pager<Users> searchPost(String keyCode,String pageNow){
		if(pageNow == null || Integer.parseInt(pageNow) < 1) {
			pageNow = "1";
		}
		Pager<Users> pager = new Pager<>();
		pager.setPageNow(Integer.parseInt(pageNow));
		pager.setPageSize(9);
		pager = headhuntingService.selectUserByDim(pager,keyCode);
		return pager;
	}
	
}
