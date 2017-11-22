<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PageAdmin企业网站管理系统-Powered by PageAdmin CMS</title>
    <meta name="Author" content="PageAdmin CMS" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <link href="/css/style.css" type="text/css" rel="stylesheet" />
    </script><script type="text/javascript">var submenu_style=1;</script>
    <link href="/css/animate.min.css" type="text/css" rel="stylesheet"/>
    <link href="/css/lightbox.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div class="page_style memberpage">
    <div class="top_box">
        <div class="top_box_inner">
            <div class="topcontent"><a href="/login.html">登录</a><span>|</span><a href="/register.html">注册</a></div><div class="clear"></div>
            <div class="logo"><a href="/"><img src="/images/logo.png" border="0"></a></div>
            <div class="menu_box" id="Menu"><ul>
                <li class="menu_style_homepage menu_current" id="MenuItem61" name="MenuItem"><a href="/index.aspx" class="menu2">网站首页</a></li>
                <li class="menu_style" id="MenuItem62" name="MenuItem"><a href="/index.aspx?lanmuid=62&sublanmuid=746" class="menu2">酒店预订</a></li>
                <li class="menu_style" id="MenuItem89" name="MenuItem"><a href="/index.aspx?lanmuid=89" class="menu2">酒店相册</a></li>
                <li class="menu_style" id="MenuItem63" name="MenuItem"><a href="/travel.jsp" class="menu2">旅游信息</a></li>
                <li class="menu_style" id="MenuItem88" name="MenuItem"><a href="/index.aspx?lanmuid=88" class="menu2">酒店地图</a></li>
                <li class="menu_style" id="MenuItem81" name="MenuItem"><a href="/index.aspx?lanmuid=81" class="menu2">关于我们</a></li>
            </ul></div>
        </div>
    </div>

    <div class="main_box main_box_style1">
        <div class="main_box_inner">
            <div class="main_box_inner_left">
                <div class="nav_box nav_box_sublanmu nav_box_membermenu">
                    <div class="nav_title"><span class="nav_sign">会员中心</span></div>
                    <div class="nav_menu">
                        <ul id="root_nav_menu">
                            <li><a href="register.jsp" id="nav_reg">会员注册</a></li>
                            <li><a href="login.jsp" id="nav_login">会员登陆</a></li>
                        </ul>
                    </div>
                </div>
                </div>
            <div class="main_box_inner_right">
                <div class="current_location">
                    <ul>
                        <li class="current_location_1">当前位置：会员中心 &gt; 会员注册</li>
                        <li class="current_location_2">会员注册</li>
                    </ul>
                </div>
                <div class="sublanmu_box">
                    <div class="sublanmu_content">

                        <div class="reg_box" style="background-color: #ffffff;" >
                            <form method="post" name="pa_member">
                                <table border="0" cellpadding="4" cellspacing=0  align=center width="50%">
                                    <tr>
                                        <td align=right class="tdhead" ><b>温馨提示：</b></td><td>为了更好的为您服务，请您详细填写以下注册信息。</td>
                                    </tr>
                                </table>
                                <br/>
                                <br/>
                                <table  border="0" cellpadding=0 cellspacing=0  align=center width="50%" style="margin-left: 30%; height: 60%"  >

                                    <tr id="tr_member_username">
                                        <td class="tdhead">用户名<span style="color:#ff0000">*</span></td>
                                        <td><input type="text" maxlength="16" name="username" id="username" class="m_tb" style="width:180px" > <span id="username_tip">由中英字符、数字、下划线组成(4-16位)</span></td>
                                    </tr>

                                    <tr id="tr_member_password">
                                        <td class="tdhead">密 码<span style="color:#ff0000">*</span></td>
                                        <td><input type="password"  maxlength="16" name="password" id="password" class="m_tb" style="width:180px"/> <span id="password_tip">由字母、数字、下划线组成(4-16位)</span> </td>
                                    </tr>

                                    <tr id="tr_member_password1">
                                        <td class="tdhead">密码确认<span style="color:#ff0000">*</span></td>
                                        <td><input type="password"  maxlength="16" name="password1" id="password1" class="m_tb" style="width:180px" /> <span id="password1_tip">密码再次确认</span> </td>
                                    </tr>

                                    <tr id='tr_member_email'><td class='tdhead'>邮箱<span style='color:#ff0000'>*</span></td><td><input type=text name='email' id='email' value="" style='height:18px;border:1px solid #cccccc;text-align:left;width:180px'/> <td></td></tr>
                                    <tr id='tr_member_mobile'><td class='tdhead'>手机号码<span style='color:#ff0000'>*</span></td><td><input type=text name='phone' id='mobile' value="" style='height:18px;border:1px solid #cccccc;text-align:left;width:180px'/></td></tr>
                                    <tr id='tr_member_truename'><td class='tdhead'>昵称<span style='color:#ff0000'>*</span></td><td><input type=text name='nickname' id='truename' value="" style='height:18px;border:1px solid #cccccc;text-align:left;width:180px'   maxlength='100' ></td></tr>
                                    <tr><td colspan="2" align="center"><input id="bt_post" type="submit"  value=" 提交注册 "  class="m_bt"><td></tr>
                                    <tr><td colspan="2" align="center"><TextArea style="width:500px;height:100px">                   《会员注册协议条款》

    用户同意此《会员注册协议条款》，就意味着用户认可本站提供的产品、服务和信誉。 同意此《会员注册协议条款》的效力如同用户亲自签字、盖章的书面条款一样，对用户具有法律约束力。 </textArea><td></tr>
                                </table>

                                <span id="reservearea"></span>
                            </form>
                        </div>

                    </div>
        </div><div class="clear"></div>
    </div><div class="bottom_box"><ul class="db_dzbox">
    <li class="dzbox_li1">
        某某街道XX号 某某, 山西, XXXXXX, 中国
    </li>
    <li class="dzbox_li2">
        +86-3540000000/+86-13000000000
    </li>
    <li class="dzbox_li3">
        13000000000@139.com
    </li>
</ul>
    <div class="db_ba_box">
        <dl class="db_ba">
            <dd class="db_left">
                咨询热线：400-000-000000<br />
                公司地址：广东省中山市XXX区XXX路12号MOUMOU大厦<br />
                CopyRight &copy; 2008-2014 PageAdmin版权 粤ICP备07048220号
            </dd>
            <dd class="db_right">
                <img src="/images/1156193259.jpg" alt="" /> <span>扫一扫，官方微信</span>
            </dd>
        </dl>
    </div></div><div align=center>Powered by <a href='#' style='font-size:11px' target='_blank'><b>PageAdmin CMS</b></a></div></div></div></div></body></html>