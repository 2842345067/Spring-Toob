package com.galaxy.springboot.mapper;


import com.galaxy.springboot.entity.ClassifyruTbl;
import com.galaxy.springboot.entity.ClassifyruTblExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface ClassifyruTblMapper {
    int countByExample(ClassifyruTblExample example);

    int deleteByExample(ClassifyruTblExample example);

    int deleteByPrimaryKey(Integer rid);

    int insert(ClassifyruTbl record);

    int insertSelective(ClassifyruTbl record);

    List<ClassifyruTbl> selectByExample(ClassifyruTblExample example);

    ClassifyruTbl selectByPrimaryKey(Integer rid);

    int updateByExampleSelective(@Param("record") ClassifyruTbl record, @Param("example") ClassifyruTblExample example);

    int updateByExample(@Param("record") ClassifyruTbl record, @Param("example") ClassifyruTblExample example);

    int updateByPrimaryKeySelective(ClassifyruTbl record);

    int updateByPrimaryKey(ClassifyruTbl record);
    
    //查詢所有
    List<ClassifyruTbl> selcttblru();
    //查询二级类别
    List<ClassifyruTbl> selcttblerru(int cid);
}