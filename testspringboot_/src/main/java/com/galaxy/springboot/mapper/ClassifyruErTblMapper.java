package com.galaxy.springboot.mapper;

import com.galaxy.springboot.entity.ClassifyruErTbl;
import com.galaxy.springboot.entity.ClassifyruErTblExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface ClassifyruErTblMapper {
    int countByExample(ClassifyruErTblExample example);

    int deleteByExample(ClassifyruErTblExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ClassifyruErTbl record);

    int insertSelective(ClassifyruErTbl record);

    List<ClassifyruErTbl> selectByExample(ClassifyruErTblExample example);

    ClassifyruErTbl selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ClassifyruErTbl record, @Param("example") ClassifyruErTblExample example);

    int updateByExample(@Param("record") ClassifyruErTbl record, @Param("example") ClassifyruErTblExample example);

    int updateByPrimaryKeySelective(ClassifyruErTbl record);

    int updateByPrimaryKey(ClassifyruErTbl record);
}