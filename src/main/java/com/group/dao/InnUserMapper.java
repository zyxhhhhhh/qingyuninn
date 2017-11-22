package com.group.dao;

import com.group.pojo.InnUser;
import com.group.pojo.InnUserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InnUserMapper {
    int countByExample(InnUserExample example);

    int deleteByExample(InnUserExample example);

    int deleteByPrimaryKey(Long id);

    int insert(InnUser record);

    int insertSelective(InnUser record);

    List<InnUser> selectByExample(InnUserExample example);

    List<InnUser> selectAll();

    InnUser selectByUserName(String username);

    InnUser selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") InnUser record, @Param("example") InnUserExample example);

    int updateByExample(@Param("record") InnUser record, @Param("example") InnUserExample example);

    int updateByPrimaryKeySelective(InnUser record);

    int updateByPrimaryKey(InnUser record);
}