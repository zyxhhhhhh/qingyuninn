package com.group.dao;

import com.group.pojo.KzRoomCategory;
import com.group.pojo.KzRoomCategoryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface KzRoomCategoryMapper {
    int countByExample(KzRoomCategoryExample example);

    int deleteByExample(KzRoomCategoryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(KzRoomCategory record);

    int insertSelective(KzRoomCategory record);

    List<KzRoomCategory> selectByExample(KzRoomCategoryExample example);

    KzRoomCategory selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") KzRoomCategory record, @Param("example") KzRoomCategoryExample example);

    int updateByExample(@Param("record") KzRoomCategory record, @Param("example") KzRoomCategoryExample example);

    int updateByPrimaryKeySelective(KzRoomCategory record);

    int updateByPrimaryKey(KzRoomCategory record);
}