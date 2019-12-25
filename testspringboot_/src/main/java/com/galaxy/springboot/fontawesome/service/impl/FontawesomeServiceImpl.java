package com.galaxy.springboot.fontawesome.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.fontawesome.service.FontawesomeService;
import com.galaxy.springboot.mapper.TbUserMapper;
@Service
public class FontawesomeServiceImpl implements FontawesomeService {

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

}
