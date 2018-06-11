package com.service;

import java.util.List;

import com.entity.Headhunting;
import com.entity.Pager;
import com.entity.Users;

public interface IHeadhuntingService {

	public Long insertHeadhunter(Headhunting headhunting);

	public Headhunting selectHeadhunter(Headhunting headhunting);

	public boolean selectHeadhunterByUsername(String h_username);

	public Pager<Users> selectUserByDim(Pager<Users> pager,String keyCode);

	public Pager<Users> selectUserAll(Pager<Users> pager);

	public Pager<Users> selecttopTalents(Pager<Users> topTalents);



}
