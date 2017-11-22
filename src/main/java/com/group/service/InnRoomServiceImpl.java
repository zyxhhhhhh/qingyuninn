package com.group.service;

import com.group.dao.KzRoomMapper;
import com.group.pojo.KzRoom;
import com.group.pojo.KzRoomExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InnRoomServiceImpl implements InnRoomService {
    @Autowired
    private KzRoomMapper kzRoomMapper;
    @Override
    public List<KzRoom> selectByExample(KzRoomExample example) {
        return kzRoomMapper.selectByExample(example);
    }

    @Override
    public List<KzRoom> selectRoomsByCategoryId(Integer cid) {
        return kzRoomMapper.selectRoomsByCategoryId(cid);
    }
}
