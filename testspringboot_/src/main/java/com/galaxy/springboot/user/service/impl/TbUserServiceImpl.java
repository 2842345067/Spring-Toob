package com.galaxy.springboot.user.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.entity.TbUserExample;
import com.galaxy.springboot.entity.TbUserExample.Criteria;
import com.galaxy.springboot.mapper.TbUserMapper;
import com.galaxy.springboot.user.service.TbUserService;

import ch.qos.logback.core.net.SyslogOutputStream;
@Service
public class TbUserServiceImpl implements TbUserService {

	@Resource
	private TbUserMapper tbUserMapper;

	@Override
	public List<TbUser> list() {
		
		return tbUserMapper.selectByExample(null);
	}

	@Override
	public int delete(int uid) {
		
		return tbUserMapper.deleteByPrimaryKey(uid);
	}
	//注册逻辑
	@Override
	public int insert(TbUser tbUser) {
		// TODO Auto-generated method stub
		TbUserExample example=new TbUserExample();
		Criteria criteria=example.createCriteria();
		criteria.andUsernameEqualTo(tbUser.getUsername());
		List<TbUser> list=tbUserMapper.selectByExample(example);
		if(list.size()>0) {
			return 0;
			
		}else{
		return tbUserMapper.insert(tbUser);}
	}


	
	
	//登录判断
	@Override
	public TbUser login(TbUser tbUser) {
		
		TbUserExample example=new TbUserExample();
		Criteria criteria=example.createCriteria();
		criteria.andUsernameEqualTo(tbUser.getUsername());
		criteria.andPasswordEqualTo(tbUser.getPassword());
		List<TbUser> list=tbUserMapper.selectByExample(example);        
		if(list.size()>0) {
			System.out.println(list.size());
			return list.get(0);
			
		}
		return null;
	}

	@Override
	public int update(TbUser tbUser) {
		// TODO Auto-generated method stub
		return 0;
	}

	



}
