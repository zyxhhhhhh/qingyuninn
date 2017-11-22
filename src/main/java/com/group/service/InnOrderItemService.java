package com.group.service;

import com.group.pojo.KzOrder;
import com.group.pojo.KzOrderItem;
import com.group.pojo.KzOrderItemExample;

import java.util.List;

public interface InnOrderItemService {
    //根据时间范围查找订单项
    List<KzOrderItem> selectByExample(KzOrderItemExample example);
    //生成订单
    int insertSelective(KzOrder record);
    //生成订单项
    int insert(KzOrderItem record);
    //更新订单支付状态
    int updateByPrimaryKey(KzOrder record);
}
