package com.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IHeadhuntingDao;
import com.entity.Headhunting;
import com.entity.Pager;
import com.entity.Users;
import com.service.IHeadhuntingService;

@Service
public class HeadhuntingServiceImpl implements IHeadhuntingService {
	@Autowired
	private IHeadhuntingDao headhuntingDao;
	/**
	 * 猎头注册账号
	 */
	@Override
	@Transactional
	public Long insertHeadhunter(Headhunting headhunting) {
		// TODO Auto-generated method stub
		return headhuntingDao.insertHeadhunter(headhunting);
	}
	/**
	 * 猎头登录账号
	 */
	@Override
	@Transactional
	public Headhunting selectHeadhunter(Headhunting headhunting) {
		// TODO Auto-generated method stub
		return headhuntingDao.selectHeadhunter(headhunting);
	}
	/**
	 * 查询手机号是否被注册
	 */
	@Override
	@Transactional
	public boolean selectHeadhunterByUsername(String h_username) {
		// TODO Auto-generated method stub
		Headhunting h = headhuntingDao.selectHeadhunterByUsername(h_username);
		if(h == null) {
			return false;
		}
			
		return  true ;
	}
	/**
	 * 模糊查找人才
	 * 分页查询
	 */
	@Override
	@Transactional
	public Pager<Users> selectUserByDim(Pager<Users> pager,String keyCode) {
		// TODO Auto-generated method stub
		pager.setTotalCount(headhuntingDao.selectUserCountByDim(keyCode));
		pager.setPageCount((pager.getTotalCount()-1)/pager.getPageSize()+1);
		Map<String,Object> map = new HashMap<>();
		map.put("from", (pager.getPageNow()-1)*pager.getPageSize());
		map.put("to", pager.getPageSize());
		map.put("keyCode", keyCode);
		pager.setList(headhuntingDao.selectUserByDim(map));
		return pager;
	}
	/**
	 * 推荐联系人
	 * 分页查询 
	 */
	@Override
	@Transactional
	public Pager<Users> selectUserAll(Pager<Users> pager) {
		// TODO Auto-generated method stub
		pager.setTotalCount(headhuntingDao.selectUserCountAll());
		pager.setPageCount((pager.getTotalCount()-1)/pager.getPageSize()+1);
		Map<String,Object> map = new HashMap<>();
		map.put("from", (pager.getPageNow()-1)*pager.getPageSize());
		map.put("to", pager.getPageSize());
		pager.setList(headhuntingDao.selectUserAll(map));
		return pager;
	}
	/**
	 * 高端人才 
	 * 分页查询
	 */
	@Override
	@Transactional
	public Pager<Users> selecttopTalents(Pager<Users> topTalents) {
		// TODO Auto-generated method stub
		topTalents.setTotalCount(headhuntingDao.selecttopTalentsCount());
		topTalents.setPageCount((topTalents.getTotalCount()-1)/topTalents.getPageSize()+1);
		Map<String,Integer> map = new HashMap<>();
		map.put("from", (topTalents.getPageNow()-1)*topTalents.getPageSize());
		map.put("to", topTalents.getPageSize());
		topTalents.setList(headhuntingDao.selecttopTalents(map));
		return topTalents;
	}



}
