package com.galaxy.springboot.sheet.service;

import java.util.List;

import com.galaxy.springboot.entity.ClassifyTbl;
import com.galaxy.springboot.entity.ClassifyruTbl;
import com.galaxy.springboot.entity.Takenotes;
import com.galaxy.springboot.entity.TbUser;

public interface SheetService {

	List<TbUser> selectLe(int uid);

	List<TbUser> select(int uid);

	int selectoverall(int uid);

	int insert(Takenotes takenotes);

	int update(Takenotes takenotes);

	int delete(String id);

	TbUser login(int uid);

	Takenotes selectid(int id);

	List<TbUser> list(String like,int uid);

	List<ClassifyTbl> selcttbl();

	List<ClassifyTbl> selcttbler(int cid);

	List<ClassifyruTbl> selctrutbl();
	
	List<ClassifyruTbl> selctrutbler(int rid);

	ClassifyruTbl selectClassFyByName(String trim);


}
