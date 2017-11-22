package com.group.dao;

import com.group.pojo.KzOrder;
import com.group.pojo.KzOrderExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface KzOrderMapper {
    int countByExample(KzOrderExample example);

    int deleteByExample(KzOrderExample example);

    int deleteByPrimaryKey(String orderId);

    int insert(KzOrder record);

    int insertSelective(KzOrder record);

    List<KzOrder> selectByExample(KzOrderExample example);

    KzOrder selectByPrimaryKey(String orderId);

    int updateByExampleSelective(@Param("record") KzOrder record, @Param("example") KzOrderExample example);

    int updateByExample(@Param("record") KzOrder record, @Param("example") KzOrderExample example);

    int updateByPrimaryKeySelective(KzOrder record);

    int updateByPrimaryKey(KzOrder record);
}