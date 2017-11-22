package com.group.service;

import com.group.dao.KzRoomCategoryMapper;
import com.group.pojo.KzRoomCategory;
import com.group.pojo.KzRoomCategoryExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InnRoomCategoryServiceImpl implements InnRoomCategoryService {
    @Autowired
    private KzRoomCategoryMapper kzRoomCategoryMapper;
    @Override
    public List<KzRoomCategory> selectByExample(KzRoomCategoryExample example) {
        return kzRoomCategoryMapper.selectByExample(example);
    }

    @Override
    public KzRoomCategory selectByPrimaryKey(Integer id) {
        return kzRoomCategoryMapper.selectByPrimaryKey(id);
    }
}
