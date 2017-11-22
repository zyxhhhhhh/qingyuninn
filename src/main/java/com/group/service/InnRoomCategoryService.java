package com.group.service;

import com.group.pojo.KzRoomCategory;
import com.group.pojo.KzRoomCategoryExample;

import java.util.List;

/**
 * 房间种类服务层接口
 */
public interface InnRoomCategoryService {

    //查询所有房间种类
    List<KzRoomCategory> selectByExample(KzRoomCategoryExample example);
    //根据id查询房间种类
    KzRoomCategory selectByPrimaryKey(Integer id);


}
