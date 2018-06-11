package com.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.entity.Headhunting;
import com.entity.Users;

@Repository
public interface IHeadhuntingDao {

	/**
	 * 猎头注册账号
	 * @param headhunting
	 * @return
	 */
	public Long insertHeadhunter(Headhunting headhunting);
	/**
	 *猎头登录账号
	 * @param headhunting
	 * @return
	 */
	public Headhunting selectHeadhunter(Headhunting headhunting);
	/**
	 * 查询手机号是否被注册
	 * @param h_username
	 * @return
	 */
	public Headhunting selectHeadhunterByUsername(String h_username);
	/**
	 * 模糊查找人才
	 * 分页查询
	 * 查询模糊搜索结果总人数
	 * @param keyCode
	 * @return
	 */
	public int selectUserCountByDim(String keyCode);
	/**
	 * 模糊查找人才
	 * 分页查询
	 * 查询模糊搜索结果分页数据
	 * @param map
	 * @return
	 */
	public List<Users> selectUserByDim(Map<String,Object> map);
	/**
	 * 推荐联系人 
	 * 分页查询
	 * 总人数
	 * @return
	 */
	public int selectUserCountAll();
	/**
	 * 推荐联系人
	 * 分页查询
	 * 查询每页数据
	 * @param map
	 * @return
	 */
	public List<Users> selectUserAll(Map<String, Object> map);
	/**
	 * 高端人才 
	 * 分页查询
	 * 总人数
	 * @return
	 */
	public int selecttopTalentsCount();
	/**
	 * 高端人才
	 * 分页查询
	 * 查询每页数据
	 * @param map
	 * @return
	 */
	public List<Users> selecttopTalents(Map<String, Integer> map);


}
