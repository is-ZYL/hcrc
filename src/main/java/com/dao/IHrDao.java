package com.dao;

import org.springframework.stereotype.Repository;

import com.entity.Enterprise;
@Repository
public interface IHrDao {
	//企业注册
	public Long hrInsertRegDo(Enterprise enterprise); 
	//企业登录
	public Enterprise selectLogin(Enterprise enterprise); 
	
	//查询  ？？
	
	//改密码
	public long updateHrPassword(Enterprise enterprise);
}
