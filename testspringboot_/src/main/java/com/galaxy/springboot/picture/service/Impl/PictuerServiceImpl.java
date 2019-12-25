package com.galaxy.springboot.picture.service.Impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.mapper.TbUserMapper;
import com.galaxy.springboot.picture.service.PictuerService;
@Service
public class PictuerServiceImpl implements PictuerService {

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
	
	

}
