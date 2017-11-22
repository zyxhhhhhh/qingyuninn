package com.group.service;

import com.group.dao.KzOrderItemMapper;
import com.group.dao.KzOrderMapper;
import com.group.pojo.KzOrder;
import com.group.pojo.KzOrderItem;
import com.group.pojo.KzOrderItemExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InnOrderItemServiceImpl implements InnOrderItemService {
    @Autowired
    private KzOrderItemMapper kzOrderItemMapper;
    @Autowired
    private KzOrderMapper kzOrderMapper;


    @Override
    public int insertSelective(KzOrder record) {
        return kzOrderMapper.insertSelective(record);
    }
    @Override
    public int updateByPrimaryKey(KzOrder record) {
        return kzOrderMapper.updateByPrimaryKey(record);
    }

    @Override
    public int insert(KzOrderItem record) {
        return kzOrderItemMapper.insert(record);
    }

    @Override
    public List<KzOrderItem> selectByExample(KzOrderItemExample example) {
        return kzOrderItemMapper.selectByExample(example);
    }
}
