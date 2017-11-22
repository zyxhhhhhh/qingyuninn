package com.group.controller;

import com.group.pojo.*;
import com.group.service.InnOrderItemService;
import com.group.service.InnRoomCategoryService;
import com.group.service.InnRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * 房间类型
 * 所有房间
 */
@Controller
public class InnRoomController {
    @Autowired
    private InnRoomCategoryService innRoomCategoryService;
    @Autowired
    private InnRoomService innRoomService;
    @Autowired
    private InnOrderItemService innOrderItemService;
    @RequestMapping("/roomlist")
    public String room(Model model){
        KzRoomCategoryExample kzRoomCategoryExample =  null;
        List<KzRoomCategory> kzRoomCategories = innRoomCategoryService.selectByExample(kzRoomCategoryExample);
        model.addAttribute("kzRoomCategories",kzRoomCategories);
        return "roomlist";
    }
//    根据房型id查询对应的所有房间
    @RequestMapping("/booknow/{rcId}")
    public String gobook(@PathVariable Integer rcId, Model model){
//        KzRoomCategory kzRoomCategory = innRoomCategoryService.selectByPrimaryKey(rcId);
        List<KzRoom> kzRooms = innRoomService.selectRoomsByCategoryId(rcId);
        model.addAttribute("kzRooms",kzRooms);
        model.addAttribute("rcId",rcId);
        return "booknow";
    }
    @RequestMapping("/categoryinfo")
    public String category(Model model, Integer id){
        KzRoomCategory kzRoomCategory = innRoomCategoryService.selectByPrimaryKey(id);
        model.addAttribute("kzRoomCategory",kzRoomCategory);
        model.addAttribute("rcId",id);
        return "categoryinfo";
    }


    //当用户根据时间订房的时候，请求这个方法，返回日期为选中范围，该房型的订单项
    @RequestMapping("/findItemByDate")
    @ResponseBody
    public Map<Integer,Integer> findItemByDate(Integer rcid, String  startdate, String  enddate)throws Exception{
        //转换日期
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date start = sdf.parse(startdate);
        Date end = sdf.parse(enddate);

        //条件为：房间类型为rcid房间订单中结束时间在前台传入日期之间
        KzOrderItemExample kzOrderItemExample = new KzOrderItemExample();
        KzOrderItemExample.Criteria criteria1 = kzOrderItemExample.createCriteria();
        criteria1.andCategoryIdEqualTo(rcid).andEndTimeBetween(start,end);
        //或者房间类型为rcid,开始时间在前台传入日期之间
        KzOrderItemExample.Criteria criteria2 = kzOrderItemExample.createCriteria();
        criteria2.andCategoryIdEqualTo(rcid).andStartTimeBetween(start,end);
        kzOrderItemExample.or(criteria2);

        List<KzOrderItem> kzOrderItems = null;
        kzOrderItems = innOrderItemService.selectByExample(kzOrderItemExample);
        Map<Integer,Integer> maps = new HashMap<Integer,Integer>();
        for (KzOrderItem orderItem : kzOrderItems) {
            maps.put(orderItem.getRoomId(),orderItem.getRoomId());
        }
        return maps;
    }
}
