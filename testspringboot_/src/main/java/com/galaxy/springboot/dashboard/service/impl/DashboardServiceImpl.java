 package com.galaxy.springboot.dashboard.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.galaxy.springboot.dashboard.service.DashboardService;
import com.galaxy.springboot.entity.Takenotes;
import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.mapper.TakenotesMapper;
import com.galaxy.springboot.mapper.TbUserMapper;
@Service
public class DashboardServiceImpl implements DashboardService {

	@Resource
	private TbUserMapper tbUserMapper;
	//查询数据库所有数据
	@Override
	public List<TbUser> list(int uid) {
	
		return tbUserMapper.selectLeftjoin(uid);
	}
	
	//根据用户id查询所有数据
	@Override
	public List<TbUser> select(int uid) {
		List<TbUser> userli = new ArrayList<TbUser>();
		userli.add(tbUserMapper.selectByPrimaryKey(uid));
		return userli;
	}
	
	//查询总条数
	@Override
	public int selectoverall(int uid) {
		// TODO Auto-generated method stub
		return tbUserMapper.selectoverall(uid);
	}
	
	
	//金额支入
	@Override
	public Integer Expenditureint(int uid) {
		// TODO Auto-generated method stub
		return tbUserMapper.selectLeExpenditureint(uid);
	}
	//金额支出
	@Override
	public Integer Payint(int uid) {
		// TODO Auto-generated method stub
		return tbUserMapper.selectLePayint(uid);
	}

	@Override
	public int delete(int uid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(TbUser tbUser) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(TbUser tbUser) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public TbUser login(TbUser tbUser) {
		// TODO Auto-generated method stub
		return null;
	}

}
