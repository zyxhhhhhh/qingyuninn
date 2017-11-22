package com.group.service;

import com.group.pojo.InnTravels;

import java.util.List;

public interface InnTravelsService {

    List<InnTravels> selectAll();

    int insertSelective(InnTravels record);

    List<InnTravels> selectByUserId(Long id);

    int deleteByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(InnTravels record);
}
