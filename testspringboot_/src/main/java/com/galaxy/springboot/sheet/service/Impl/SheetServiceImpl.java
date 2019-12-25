package com.galaxy.springboot.sheet.service.Impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.galaxy.springboot.entity.ClassifyErTblExample;
import com.galaxy.springboot.entity.ClassifyTbl;
import com.galaxy.springboot.entity.ClassifyTblExample;
import com.galaxy.springboot.entity.ClassifyTblExample.Criteria;
import com.galaxy.springboot.entity.ClassifyruTbl;
import com.galaxy.springboot.entity.ClassifyruTblExample;
import com.galaxy.springboot.entity.Takenotes;
import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.mapper.ClassifyErTblMapper;
import com.galaxy.springboot.mapper.ClassifyTblMapper;
import com.galaxy.springboot.mapper.ClassifyruErTblMapper;
import com.galaxy.springboot.mapper.ClassifyruTblMapper;
import com.galaxy.springboot.mapper.TakenotesMapper;
import com.galaxy.springboot.mapper.TbUserMapper;
import com.galaxy.springboot.sheet.service.SheetService;

import ch.qos.logback.core.util.SystemInfo;

@Service
public class SheetServiceImpl implements SheetService {

		@Resource
		private TbUserMapper tbUserMapper;
		@Resource
		private TakenotesMapper takenotesMapper;
		@Resource
		private ClassifyTblMapper classifyTblMapper;
		@Resource
		private ClassifyErTblMapper classifyErTblMapper;
		@Resource
		private ClassifyruTblMapper classifyruTblMapper;
		@Resource
		private ClassifyruErTblMapper classifyruErTblMapper;
		//查询数据库所有数据
		@Override
		public List<TbUser> selectLe(int uid) {
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
		//根据id查询对应数据
		@Override
		public Takenotes selectid(int id) {
			// TODO Auto-generated method stub
			return takenotesMapper.selectByPrimaryKey(id);
		}
		
		//新增
		@Override
		public int insert(Takenotes takenotes) {
			// TODO Auto-generated method stub
			return takenotesMapper.insertSelective(takenotes);
		}
		//修改
		@Override
		public int update(Takenotes takenotes) {
			// TODO Auto-generated method stub
			return takenotesMapper.updateByPrimaryKey(takenotes);
		}
		//删除
		@Override
		public int delete(String id) {
			int num = 0;
			String[] str=id.split(",");
			for(String string:str) {
				System.out.println(string);
				 num += takenotesMapper.deleteByPrimaryKey(Integer.parseInt(string));
			}
			return num;
		}
		@Override
		public TbUser login(int uid) {
			// TODO Auto-generated method stub
			return tbUserMapper.selectByPrimaryKey(uid);
		}
		//查询
		@Override
		public List<TbUser> list(String like,int uid) {
			// TODO Auto-generated method stub
			return tbUserMapper.selectLelike(like,uid);
		}
		
		//全部查詢 一級二級分类
		@Override
		public List<ClassifyTbl> selcttbl() {
			// TODO Auto-generated method stub
			return classifyTblMapper.selcttbl();
		}
		
		//查詢二級分类
		@Override
		public List<ClassifyTbl> selcttbler(int cid) {
			// TODO Auto-generated method stub
			return classifyTblMapper.selcttbler(cid);
		}
		
		//全部查詢支入 一級二級分类
		@Override
		public List<ClassifyruTbl> selctrutbl() {
			// TODO Auto-generated method stub
			return classifyruTblMapper.selcttblru();
		}
		//查詢支入二級分类
		@Override
		public List<ClassifyruTbl> selctrutbler(int rid) {
			// TODO Auto-generated method stub
			return classifyruTblMapper.selcttblerru(rid);
		}
		@Override
		public ClassifyruTbl selectClassFyByName(String trim) {
			// TODO Auto-generated method stub
			ClassifyruTblExample example = new ClassifyruTblExample();
			com.galaxy.springboot.entity.ClassifyruTblExample.Criteria criteria = example.createCriteria();
			criteria.andClassifyruEqualTo(trim);
			System.out.println(trim);
			List<ClassifyruTbl> list = classifyruTblMapper.selectByExample(example);
			System.out.println("size="+list.size());
			if(list.size()>0){
				return list.get(0);
			}else
			return null;
		}



}
