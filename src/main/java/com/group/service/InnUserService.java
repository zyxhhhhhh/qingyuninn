package com.group.service;

import com.group.pojo.InnUser;

import java.util.List;

public interface InnUserService {

    //注册用户
    int insertSelective(InnUser record);

    //用于注册验证用户是否存在
    InnUser selectByUserName(String username);

    //通过用户id查找
    InnUser selectByPrimaryKey(Long id);

    //通过id进行更新
    int updateByPrimaryKeySelective(InnUser record);

    //通过用户id进行删除
    int deleteByPrimaryKey(Long id);

    //查找所有
    List<InnUser> selectAll();

}
