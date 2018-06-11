package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.IHrDao;
import com.entity.Enterprise;
import com.service.IHrService;
@Service
public class IHrServiceImpl implements IHrService{
	@Autowired
	private IHrDao iHrDao;
	
	//执行注册
	@Override
	@Transactional
	public boolean hrInsertRegDo(Enterprise enterprise) {
		
		return iHrDao.hrInsertRegDo(enterprise) > 0;
		
	}
	//执行登录
	@Override
	@Transactional
	public Enterprise selectLogin(Enterprise enterprise) {
		Enterprise e = 	iHrDao.selectLogin(enterprise);
		return e;
	}

	//执行修改密码
	@Override
	@Transactional
	public boolean updateHrPassword(Enterprise enterprise) {
		
		return iHrDao.updateHrPassword(enterprise) > 0;
	}

}
