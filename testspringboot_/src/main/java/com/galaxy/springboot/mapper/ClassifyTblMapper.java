package com.galaxy.springboot.mapper;

import com.galaxy.springboot.entity.ClassifyTbl;
import com.galaxy.springboot.entity.ClassifyTblExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface ClassifyTblMapper {
    int countByExample(ClassifyTblExample example);

    int deleteByExample(ClassifyTblExample example);

    int deleteByPrimaryKey(Integer cid);

    int insert(ClassifyTbl record);

    int insertSelective(ClassifyTbl record);

    List<ClassifyTbl> selectByExample(ClassifyTblExample example);

    ClassifyTbl selectByPrimaryKey(Integer cid);

    int updateByExampleSelective(@Param("record") ClassifyTbl record, @Param("example") ClassifyTblExample example);

    int updateByExample(@Param("record") ClassifyTbl record, @Param("example") ClassifyTblExample example);

    int updateByPrimaryKeySelective(ClassifyTbl record);

    int updateByPrimaryKey(ClassifyTbl record);
    //查詢所有
    List<ClassifyTbl> selcttbl();
    //查询二级类别
    List<ClassifyTbl> selcttbler(int cid);
    
}