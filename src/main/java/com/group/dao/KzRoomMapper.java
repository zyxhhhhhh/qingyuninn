package com.group.dao;

import com.group.pojo.KzRoom;
import com.group.pojo.KzRoomExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface KzRoomMapper {
    int countByExample(KzRoomExample example);

    int deleteByExample(KzRoomExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(KzRoom record);

    int insertSelective(KzRoom record);

    List<KzRoom> selectByExample(KzRoomExample example);

    KzRoom selectByPrimaryKey(Integer id);
    //根据房型id查询出对应的所有房间
    List<KzRoom> selectRoomsByCategoryId(Integer cid);
    int updateByExampleSelective(@Param("record") KzRoom record, @Param("example") KzRoomExample example);

    int updateByExample(@Param("record") KzRoom record, @Param("example") KzRoomExample example);

    int updateByPrimaryKeySelective(KzRoom record);

    int updateByPrimaryKey(KzRoom record);
}