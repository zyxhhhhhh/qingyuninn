package com.group.service;

import com.group.pojo.KzRoom;
import com.group.pojo.KzRoomExample;

import java.util.List;

public interface InnRoomService {
    List<KzRoom> selectByExample(KzRoomExample example);
    //根据房型id查询出对应的所有房间
    List<KzRoom> selectRoomsByCategoryId(Integer cid);
}
