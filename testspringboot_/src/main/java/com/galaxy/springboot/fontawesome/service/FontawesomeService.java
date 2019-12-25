package com.galaxy.springboot.fontawesome.service;

import java.util.List;

import com.galaxy.springboot.entity.TbUser;

public interface FontawesomeService {

	List<TbUser> list(int uid);

	List<TbUser> select(int uid);

	Integer Expenditureint(int uid);

	Integer Payint(int uid);

}
