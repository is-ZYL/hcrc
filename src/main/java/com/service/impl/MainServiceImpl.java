package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IMainDao;
import com.service.IMainService;
@Service
public class MainServiceImpl implements IMainService {
	@Autowired
	private IMainDao mainDao;
	/**
	 * 简历总数
	 */
	@Override
	@Transactional
	public Long selectCountResume() {
		// TODO Auto-generated method stub
		return mainDao.selectCountResume();
	}
	/**
	 * 猎头总数
	 */
	@Override
	public Long selectCountHeadhunting() {
		// TODO Auto-generated method stub
		return mainDao.selectCountHeadhunting();
	}
	

}
