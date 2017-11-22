package com.group.dao;

import com.group.pojo.KzOrderItem;
import com.group.pojo.KzOrderItemExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface KzOrderItemMapper {
    int countByExample(KzOrderItemExample example);

    int deleteByExample(KzOrderItemExample example);

    int deleteByPrimaryKey(String id);

    int insert(KzOrderItem record);

    int insertSelective(KzOrderItem record);

    List<KzOrderItem> selectByExample(KzOrderItemExample example);

    KzOrderItem selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") KzOrderItem record, @Param("example") KzOrderItemExample example);

    int updateByExample(@Param("record") KzOrderItem record, @Param("example") KzOrderItemExample example);

    int updateByPrimaryKeySelective(KzOrderItem record);

    int updateByPrimaryKey(KzOrderItem record);
}