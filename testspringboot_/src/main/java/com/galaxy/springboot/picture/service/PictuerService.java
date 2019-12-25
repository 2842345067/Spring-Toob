package com.galaxy.springboot.picture.service;

import java.util.List;

import com.galaxy.springboot.entity.TbUser;

public interface PictuerService {
	
	List<TbUser> list(int uid);

	List<TbUser> select(int uid);

}
