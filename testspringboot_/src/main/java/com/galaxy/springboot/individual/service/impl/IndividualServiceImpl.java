package com.galaxy.springboot.individual.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.individual.service.IndividualService;
import com.galaxy.springboot.mapper.TbUserMapper;
@Service
public class IndividualServiceImpl implements IndividualService {

	@Resource
	private TbUserMapper tbUserMapper;
	//查询对应用户所有数据
	@Override
	public List<TbUser> selectLeftjoin(int uid) {
		
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
	//查询支入
	@Override
	public int selectLeExpenditure(int uid) {
		
		return tbUserMapper.selectLeExpenditure(uid);
	}
	//查询支出
	@Override
	public int selectLePay(int uid) {
		
		return tbUserMapper.selectLePay(uid);
	}
	//更新
	@Override
	public int update(TbUser tuser) {
		// TODO Auto-generated method stub

		return tbUserMapper.updateByPrimaryKeySelective(tuser);
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
	public TbUser login(TbUser tbUser) {
		// TODO Auto-generated method stub
		return null;
	}






}
