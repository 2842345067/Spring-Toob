package com.galaxy.springboot.mapper;

import com.galaxy.springboot.entity.ClassifyErTbl;
import com.galaxy.springboot.entity.ClassifyErTblExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface ClassifyErTblMapper {
    int countByExample(ClassifyErTblExample example);

    int deleteByExample(ClassifyErTblExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ClassifyErTbl record);

    int insertSelective(ClassifyErTbl record);

    List<ClassifyErTbl> selectByExample(ClassifyErTblExample example);

    ClassifyErTbl selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ClassifyErTbl record, @Param("example") ClassifyErTblExample example);

    int updateByExample(@Param("record") ClassifyErTbl record, @Param("example") ClassifyErTblExample example);

    int updateByPrimaryKeySelective(ClassifyErTbl record);

    int updateByPrimaryKey(ClassifyErTbl record);
}