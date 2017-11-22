package com.group.service;

import com.group.dao.InnUserMapper;
import com.group.pojo.InnUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class InnUserServiceImpl implements InnUserService {


    @Autowired
    private InnUserMapper innUserMapper;

    @Override
    public int insertSelective(InnUser record) {
        return innUserMapper.insertSelective(record);
    }

    @Override
    public InnUser selectByUserName(String username) {
        return innUserMapper.selectByUserName(username);
    }

    @Override
    public InnUser selectByPrimaryKey(Long id) {
        return innUserMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(InnUser record) {
        return innUserMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return innUserMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<InnUser> selectAll() {
        return innUserMapper.selectAll();
    }
}
