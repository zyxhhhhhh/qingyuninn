package com.group.service;

import com.group.dao.InnTravelsMapper;
import com.group.pojo.InnTravels;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class InnTravelsServiceImpl implements InnTravelsService {

    @Autowired
    private InnTravelsMapper innTravelsMapper;

    @Override
    public List<InnTravels> selectAll() {
        return innTravelsMapper.selectAll();
    }

    @Override
    public int insertSelective(InnTravels record) {
        return innTravelsMapper.insertSelective(record);
    }

    @Override
    public List<InnTravels> selectByUserId(Long id) {
        return innTravelsMapper.selectByUserId(id);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return innTravelsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(InnTravels record) {
        return innTravelsMapper.updateByPrimaryKeySelective(record);
    }
}
