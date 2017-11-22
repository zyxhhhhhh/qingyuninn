package com.group.controller;

import com.group.pojo.KzOrder;
import com.group.pojo.KzOrderItem;
import com.group.pojo.KzRoomCategory;
import com.group.service.InnOrderItemService;
import com.group.service.InnRoomCategoryService;
import com.group.utils.PaymentUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * 房间订单项
 */
@Controller
public class InnOrderItemController {
    @Autowired
    private InnRoomCategoryService innRoomCategoryService;
    @Autowired
    private InnOrderItemService innOrderItemService;
    //房间订单
    @RequestMapping("/order/{categoryId}")
    public String createOrder(Model model, @PathVariable Integer categoryId, String[] rooms, Long userId, String title, String pa_truename, String  startdate, String  enddate) throws Exception{
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startTime = sdf.parse(startdate);
        Date endTime = sdf.parse(enddate);
        String orderId = UUID.randomUUID().toString();
        KzRoomCategory kzRoomCategory = innRoomCategoryService.selectByPrimaryKey(categoryId);
        Long payment = kzRoomCategory.getPrice()*rooms.length;
        //生成订单
        KzOrder kzOrder = new KzOrder();
        kzOrder.setOrderId(orderId);
        kzOrder.setUserId(userId);
        kzOrder.setPayment(payment);
        kzOrder.setStartTime(startTime);
        kzOrder.setEndTime(endTime);
        innOrderItemService.insertSelective(kzOrder);
        //生成订单项
        for (String room : rooms) {
            KzOrderItem kzOrderItem = new KzOrderItem();
            kzOrderItem.setOrderId(orderId);
            kzOrderItem.setRoomId(Integer.valueOf(room));
            kzOrderItem.setPrice(kzRoomCategory.getPrice());
            kzOrderItem.setStartTime(startTime);
            kzOrderItem.setEndTime(endTime);
            kzOrderItem.setCategoryId(categoryId);
            innOrderItemService.insert(kzOrderItem);
        }
        model.addAttribute("orderId",orderId);
        model.addAttribute("money",payment);
        return "pay";
    }

    @RequestMapping("/order/payOnline")
    public String payOnline(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String orderId = request.getParameter("orderId");
        String money = request.getParameter("money");
        String yh = request.getParameter("yh");

        String p0_Cmd = "Buy";
        String p1_MerId = "10001126856";
        String p2_Order = orderId;
        String p3_Amt = money;
        String p4_Cur = "CNY";
        String p5_Pid = "unknow";
        String p6_Pcat = "eat";
        String p7_Pdesc = "good";
        String p8_Url = "/order/callBack";
        String p9_SAF = "1";
        String pa_MP = "i do not konw";
        String pd_FrpId = yh;// 选择的银行
        String pr_NeedResponse = "1";
        String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc,
                p8_Url, p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse,
                "69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl");

        // https://www.yeepay.com/app-merchant-proxy/node?p0_Cmd="Buy"&
        request.setAttribute("p0_Cmd", p0_Cmd);
        request.setAttribute("p1_MerId", p1_MerId);
        request.setAttribute("p2_Order", p2_Order);
        request.setAttribute("p3_Amt", p3_Amt);
        request.setAttribute("p4_Cur", p4_Cur);
        request.setAttribute("p5_Pid", p5_Pid);
        request.setAttribute("p6_Pcat", p6_Pcat);
        request.setAttribute("p7_Pdesc", p7_Pdesc);
        request.setAttribute("p8_Url", p8_Url);
        request.setAttribute("p9_SAF", p9_SAF);
        request.setAttribute("pa_MP", pa_MP);
        request.setAttribute("pd_FrpId", pd_FrpId);
        request.setAttribute("hmac", hmac);
        request.setAttribute("pr_NeedResponse", pr_NeedResponse);
        return "confirm";
    }

    /**
     * 支付返回校验
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping("/order/callBack")
    public String callBack(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
        String p1_MerId = request.getParameter("p1_MerId");
        String r0_Cmd = request.getParameter("r0_Cmd");
        String r1_Code = request.getParameter("r1_Code");
        String r2_TrxId = request.getParameter("r2_TrxId");
        String r3_Amt = request.getParameter("r3_Amt");
        String r4_Cur = request.getParameter("r4_Cur");
        String r5_Pid = request.getParameter("r5_Pid");
        String r6_Order = request.getParameter("r6_Order");
        String r7_Uid = request.getParameter("r7_Uid");
        String r8_MP = request.getParameter("r8_MP");
        String r9_BType = request.getParameter("r9_BType");
        String hmac = request.getParameter("hmac");
        // 验证方法
        boolean result = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd, r1_Code, r2_TrxId, r3_Amt, r4_Cur, r5_Pid,
                r6_Order, r7_Uid, r8_MP, r9_BType, "69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl");
        if (!result) {
            return "信息可能被恶意修改了，注意安全";
        } else {
            if ("1".equals(r1_Code)) {
                if ("2".equals(r9_BType)) {
                    try {
                        KzOrder kzOrder = new KzOrder();
                        kzOrder.setOrderId(r6_Order);
                        kzOrder.setStatus(1);
                        innOrderItemService.updateByPrimaryKey(kzOrder);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                   return "paysucccess";
                }
            }
        }
        return "支付失败";
    }

    @RequestMapping("/order/paysuccess")
    public String succ(){
        return "paysuccess";
    }
}

