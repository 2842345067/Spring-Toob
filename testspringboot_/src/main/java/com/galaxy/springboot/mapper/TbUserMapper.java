package com.galaxy.springboot.mapper;


import com.galaxy.springboot.entity.TbUser;
import com.galaxy.springboot.entity.TbUserExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface TbUserMapper {
    int countByExample(TbUserExample example);

    int deleteByExample(TbUserExample example);

    int deleteByPrimaryKey(Integer uid);

    int insert(TbUser record);

    int insertSelective(TbUser record);

    List<TbUser> selectByExample(TbUserExample example);

    TbUser selectByPrimaryKey(Integer uid);

    int updateByExampleSelective(@Param("record") TbUser record, @Param("example") TbUserExample example);

    int updateByExample(@Param("record") TbUser record, @Param("example") TbUserExample example);

    int updateByPrimaryKeySelective(TbUser record);

    int updateByPrimaryKey(TbUser record);
    
    List<TbUser> selectLeftjoin(int uid);
    
    int selectoverall(int uid);
    
    int selectLeExpenditure(int uid);
    
    int selectLePay(int uid);
    
    List<TbUser> selectLeExpenditurejilu(int uid);
    
    List<TbUser> selectLePayjilu(int uid);
    
    //模糊查询
    List<TbUser> selectLelike(@Param("like") String like,@Param("uid")int uid);
    
    
    Integer selectLeExpenditureint(int uid);
    
    Integer selectLePayint(int uid);
}