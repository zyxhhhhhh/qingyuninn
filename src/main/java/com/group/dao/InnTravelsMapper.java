package com.group.dao;

import com.group.pojo.InnTravels;
import com.group.pojo.InnTravelsExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InnTravelsMapper {
    int countByExample(InnTravelsExample example);

    int deleteByExample(InnTravelsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(InnTravels record);

    int insertSelective(InnTravels record);

    List<InnTravels> selectByExample(InnTravelsExample example);

    //通过用户id查找出该用户的所有游记，然后进行删除或者更新操作
    List<InnTravels> selectByUserId(Long id);

    InnTravels selectByPrimaryKey(Long id);

    //列出所有的游记
    List<InnTravels> selectAll();

    int updateByExampleSelective(@Param("record") InnTravels record, @Param("example") InnTravelsExample example);

    int updateByExample(@Param("record") InnTravels record, @Param("example") InnTravelsExample example);

    int updateByPrimaryKeySelective(InnTravels record);

    int updateByPrimaryKey(InnTravels record);
}