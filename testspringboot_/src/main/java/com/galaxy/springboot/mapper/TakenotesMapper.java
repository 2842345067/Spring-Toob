package com.galaxy.springboot.mapper;

import com.galaxy.springboot.entity.Takenotes;
import com.galaxy.springboot.entity.TakenotesExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface TakenotesMapper {
    int countByExample(TakenotesExample example);

    int deleteByExample(TakenotesExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Takenotes record);

    int insertSelective(Takenotes record);

    List<Takenotes> selectByExample(TakenotesExample example);

    Takenotes selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Takenotes record, @Param("example") TakenotesExample example);

    int updateByExample(@Param("record") Takenotes record, @Param("example") TakenotesExample example);

    int updateByPrimaryKeySelective(Takenotes record);

    int updateByPrimaryKey(Takenotes record);
    

}