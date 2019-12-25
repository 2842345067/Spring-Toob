package com.galaxy.springboot.user.service;

import java.util.List;

import com.galaxy.springboot.entity.TbUser;

public interface TbUserService {

	List<TbUser> list();
	
	int  delete(int uid);
	
	int insert(TbUser tbUser);
	
	int update(TbUser tbUser);
	
	TbUser login(TbUser tbUser);
	

	

}
