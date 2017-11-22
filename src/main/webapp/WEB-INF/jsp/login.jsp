<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PageAdmin企业网站管理系统-Powered by PageAdmin CMS</title>
    <meta name="Author" content="PageAdmin CMS" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <link href="/css/style.css" type="text/css" rel="stylesheet" />
    <link href="/css/member.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript">var submenu_style=1;</script>
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
                <li class="menu_style_homepage menu_current" id="MenuItem61" name="MenuItem"><a href="/index.html" class="menu2">网站首页</a></li>
                <li class="menu_style" id="MenuItem62" name="MenuItem"><a href="/roomlist" class="menu2">酒店预订</a></li>
                <li class="menu_style" id="MenuItem89" name="MenuItem"><a href="/index.aspx?lanmuid=89" class="menu2">酒店相册</a></li>
                <li class="menu_style" id="MenuItem63" name="MenuItem"><a href="travel.jsp" class="menu2">旅游信息</a></li>
                <li class="menu_style" id="MenuItem88" name="MenuItem"><a href="/index.aspx?lanmuid=88" class="menu2">酒店地图</a></li>
                <li class="menu_style" id="MenuItem81" name="MenuItem"><a href="/index.aspx?lanmuid=81" class="menu2">关于我们</a></li>
            </ul></div>
        </div>
    </div>
    <script type="text/javascript">var IsPageHome="0";var Lanmu_Id="61";var Sublanmu_Id="0";ShowSubMenu(Lanmu_Id);</script>

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
                    <ul><li class="current_location_1">当前位置：会员中心 &gt; 会员登陆</li>
                        <li class="current_location_2">会员登陆</li></ul>
                </div>
                <div class="sublanmu_box">
                    <div class="sublanmu_content" style="background-color: #ffffff">
                        <div class="login_box" style="margin-left: 30% " >
                            <form method="post" name="pa_member" >
                                <ul>
                                    <li class="login_item_1">用户名： </li>
                                    <li class="login_item_2">&nbsp;<input type="text" maxlength="16" class="m_tb m_tb_width" name="username" id="username"/>
                                    </li>

                                    <li class="login_item_jiange"></li>

                                    <li class="login_item_1">密 码： </li>
                                    <li class="login_item_2">&nbsp;<input type="password" maxlength="16" class="m_tb m_tb_width" name="password" id="password" /> <a href="index.aspx?s=1&type=findpass">忘记密码?</a>
                                    </li>
                                    <li class="login_item_jiange"></li>
                                    <li class="login_item_jiange"><input type="hidden" name="login"  value="yes"><input type="hidden" name="To_Url" value=""></li>
                                    <li class="login_submit_box">&nbsp;<input type="submit"  value="登 录"  onclick="return login_check()" class="m_bt"></li>
                                    <li class="login_reg_box"><input type="button" onclick="location.href='register.jsp'" align="absmiddle" class="m_bt" value="注 册"></li>
                                    <li class="clear"></li>
                                </ul>
                            </form>
                        </div>
                    </div>
                </div></div>
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
    </div></div><div align=center>Powered by <a href='http://www.pageadmin.net' style='font-size:11px' target='_blank'><b>PageAdmin CMS</b></a></div></div></body></html>