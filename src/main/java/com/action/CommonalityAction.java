package com.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.IMainService;

@Controller
public class CommonalityAction {
	@Autowired
	private IMainService service;

	/**
	 * 注册界面
	 * 
	 * @param uri
	 * @return
	 */
	@RequestMapping("{uri}_reg")
	private String reg(@PathVariable("uri") String uri) {
		return uri + "/reg";
	}

	@RequestMapping("main")
	private void main(ModelMap map) { 
		// 人才简历数量
		Long CountResume = service.selectCountResume();
		map.addAttribute("CountResume", CountResume);
		// 猎头总数量
		Long CountHeadhunting = service.selectCountHeadhunting();
		map.addAttribute("CountHeadhunting", CountHeadhunting);
	}
}
