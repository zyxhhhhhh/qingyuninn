package com.group.dao;

import com.group.pojo.KzUser;
import com.group.pojo.KzUserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface KzUserMapper {
    int countByExample(KzUserExample example);

    int deleteByExample(KzUserExample example);

    int deleteByPrimaryKey(Long id);

    int insert(KzUser record);

    int insertSelective(KzUser record);

    List<KzUser> selectByExample(KzUserExample example);

    KzUser selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") KzUser record, @Param("example") KzUserExample example);

    int updateByExample(@Param("record") KzUser record, @Param("example") KzUserExample example);

    int updateByPrimaryKeySelective(KzUser record);

    int updateByPrimaryKey(KzUser record);
}