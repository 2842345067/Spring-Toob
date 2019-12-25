package com.galaxy.springboot.dashboard.service;

import java.util.List;

import com.galaxy.springboot.entity.Takenotes;
import com.galaxy.springboot.entity.TbUser;

public interface DashboardService {
	
	List<TbUser> list(int uid);
	
	List<TbUser> select(int uid);
	
	int  delete(int uid);
	
	int insert(TbUser tbUser);
	
	int update(TbUser tbUser);
	
	TbUser login(TbUser tbUser);

	Integer Expenditureint(int uid);

	Integer Payint(int uid);

	int selectoverall(int uid);


}
