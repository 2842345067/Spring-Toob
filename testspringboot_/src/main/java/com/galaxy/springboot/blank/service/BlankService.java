package com.galaxy.springboot.blank.service;

import java.util.List;

import com.galaxy.springboot.entity.TbUser;

public interface BlankService {
	List<TbUser> list(int uid);
	
	int  delete(int uid);
	
	int insert(TbUser tbUser);
	
	int update(TbUser tbUser);
	
	TbUser login(TbUser tbUser);

	List<TbUser> select(int uid);
	//支入
	 List<TbUser> selectLeExpenditurejilu(int uid);
	//支出
	 List<TbUser> selectLePayjilu(int uid);

	 Integer Expenditureint(int uid);

	 Integer Payint(int uid);
}
