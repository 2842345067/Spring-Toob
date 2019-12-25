package com.galaxy.springboot.baocuo.service;

import java.util.List;

import com.galaxy.springboot.entity.TbUser;

public interface BaocuoService {
	
	List<TbUser> list(int uid);

	List<TbUser> select(int uid);

}
