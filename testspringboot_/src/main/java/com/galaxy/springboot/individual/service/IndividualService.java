package com.galaxy.springboot.individual.service;

import java.util.List;

import com.galaxy.springboot.entity.TbUser;

public interface IndividualService {
	//对应用户所有数据
	List<TbUser> selectLeftjoin(int uid);
	
	List<TbUser> select(int uid);
	//总条数
	int selectoverall(int uid);
	//支入
	int selectLeExpenditure(int uid);
	//支出
	int selectLePay(int uid);
	//更新
	int update(TbUser tbuser);
	
	int  delete(int uid);
	
	int insert(TbUser tbUser);
	

	
	TbUser login(TbUser tbUser);



}
