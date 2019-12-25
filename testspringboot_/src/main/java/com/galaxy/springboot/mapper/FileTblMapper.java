package com.galaxy.springboot.mapper;

import com.galaxy.springboot.entity.FileTbl;
import com.galaxy.springboot.entity.FileTblExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface FileTblMapper {
    int countByExample(FileTblExample example);

    int deleteByExample(FileTblExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(FileTbl record);

    int insertSelective(FileTbl record);

    List<FileTbl> selectByExample(FileTblExample example);

    FileTbl selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") FileTbl record, @Param("example") FileTblExample example);

    int updateByExample(@Param("record") FileTbl record, @Param("example") FileTblExample example);

    int updateByPrimaryKeySelective(FileTbl record);

    int updateByPrimaryKey(FileTbl record);
}