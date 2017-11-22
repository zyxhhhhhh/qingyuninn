<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>客房预订</title>
    <meta name="Author" content="PageAdmin CMS">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="/css/style.css" type="text/css" rel="stylesheet">
    <script src="/js/jquery.js" type="text/javascript"></script>
    <script src="/js/comm.js" type="text/javascript"></script>
    <script src="/js/function.js" type="text/javascript"></script>
    <script src="/js/dialog.js" type="text/javascript"></script>
    <script src="/js/popup.js" type="text/javascript"></script>
    <link href="/css/default.css" type="text/css" rel="stylesheet">
    <script src="/js/PIE.js" type="text/javascript"></script>
    <script src="/js/lang.js" type="text/javascript"></script>
    <script type="text/javascript">
        var submenu_style = 1;
    </script>
    <script src="/js/script.js" type="text/javascript"></script>
    <script src="/js/wow.js" type="text/javascript"></script>
    <script src="/js/lightbox-2.js" type="text/javascript"></script>
    <link href="/css/animate.css" type="text/css" rel="stylesheet">
    <link href="/css/lightbox.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class="page_style sublanmupage page_l62_sl746">
    <div class="top_box">
        <div class="top_box_inner">
            <div class="topcontent"><a href="/login.html">登录</a><span>|</span><a href="/register.html">注册</a></div>
            <div class="clear"></div>
            <div class="logo"><a href="http://localhost:60964/">
                <img src="/img/logo.png" border="0"></a>
            </div>
            <div class="menu_box" id="Menu">
                <ul>
                    <li class="menu_style_homepage" id="MenuItem61" name="MenuItem"><a
                            href="/index.html" class="menu2">网站首页</a></li>
                    <li class="menu_style menu_current" id="MenuItem62" name="MenuItem"><a
                            href="/roomlist" class="menu2">酒店预订</a>
                    </li>
                    <li class="menu_style" id="MenuItem89" name="MenuItem"><a
                            href="http://localhost:60964/index.aspx?lanmuid=89" class="menu2">酒店相册</a></li>
                    <li class="menu_style" id="MenuItem63" name="MenuItem"><a
                            href="http://localhost:60964/index.aspx?lanmuid=63" class="menu2">旅游信息</a></li>
                    <li class="menu_style" id="MenuItem88" name="MenuItem"><a
                            href="http://localhost:60964/index.aspx?lanmuid=88" class="menu2">酒店地图</a></li>
                    <li class="menu_style" id="MenuItem81" name="MenuItem"><a
                            href="http://localhost:60964/index.aspx?lanmuid=81" class="menu2">关于我们</a></li>
                </ul>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var IsPageHome = "";
        var Lanmu_Id = "62";
        var Sublanmu_Id = "746";
        ShowSubMenu(Lanmu_Id);
    </script>
    <link rel="stylesheet" type="text/css" href="/css/dropmenu.css">
    <div class="main_box main_box_style1">
        <div class="main_box_inner">
            <div class="main_box_inner_left">
                <div id="nav_128" class="nav_box nav_box_menu animated fadeInDown" data-wow-delay="0.2s"
                     style="visibility: visible; animation-delay: 0.2s;">
                    <div class="nav_title"><span class="nav_sign">客房</span><span class="nav_more"></span></div>
                <div id="nav_menu_128" class="nav_menu">
                    <ul id="rootul_128">
                        <li id="sl747"><a href="http://localhost:60964/index.aspx?lanmuid=62&amp;sublanmuid=747"
                                          class="sla747">立即预订</a></li>
                    </ul>
                </div>
            </div>
            <script type="text/javascript">Initialization_Nav("rootul_128", "sl746", "0");</script>
        </div>
        <div class="main_box_inner_right">
            <div class="wc_main_box_right">
                <div class="current_location current_location_746">
                    <ul>
                        <li class="current_location_1">当前位置：<a href="http://localhost:60964/">首页</a> &gt;
                            <a href="/roomlist">客房</a></li>
                        <li class="current_location_2">客房</li>
                    </ul>
                </div>
                <div class="sublanmu_box sublanmu_box_74<div c6">
                    <div class="sublanmu_content sublanmu_content_product">
                        <ul class="mkmx_xyzp_box">
                            <c:forEach items="${kzRoomCategories}" var="roomCategory" varStatus="vs">
                                <c:choose>
                                    <c:when test="${vs.count%2!=0}">
                                        <li class="xyzp_left xyzp_li">
                                            <a class="xyzp_a1"
                                               href="http://localhost:8080/categoryinfo?id=${roomCategory.id}"
                                               target="_self">
                                                <span class="pic"><img src="${roomCategory.image}" border="0"></span>
                                                <span class="title">${roomCategory.category}</span>
                                            </a>
                                            <span class="xyzp_jg">￥&nbsp;${roomCategory.price}</span>
                                            <a href="/booknow/${roomCategory.id}" class="xyzp_ljyd">立即预订</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="xyzp_li">
                                            <a class="xyzp_a1"
                                               href="http://localhost:8080/categoryinfo?id=${roomCategory.id}"
                                               target="_self">
                                                <span class="pic"><img src="${roomCategory.image}" border="0"></span>
                                                <span class="title">${roomCategory.category}</span>
                                            </a>
                                            <span class="xyzp_jg">￥&nbsp;${roomCategory.price}</span>
                                            <a href="/booknow/${roomCategory.id}" class="xyzp_ljyd">立即预订</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear main_box_inner_bottom"></div>
</div>


<div class="bottom_box">
    <ul class="db_dzbox">
        <li class="dzbox_li1">
            某某街道XX号 某某, XXXXXX, 中国
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
                咨询热线：400-000-000000<br>
                公司地址：广东省中山市XXX区XXX路12号MOUMOU大厦<br>
                CopyRight © 2008-2014 PageAdmin版权 粤ICP备07048220号
            </dd>
            <dd class="db_right">
                <img src="/img/1156193259.jpg"
                     alt=""> <span>扫一扫，官方微信</span>
            </dd>
        </dl>
    </div>
</div>
<div style="padding:5px" align="center">Powered by <a href="http://www.pageadmin.net/"><b>PageAdmin CMS</b></a></div>
</div>
<script type="text/javascript">TongJi(1)</script>
<a class="gotoptop_icon" id="gotoptop_icon" href="#" title="返回顶部" style="display: inline;"></a>
<div id="lightboxOverlay" class="lightboxOverlay" style="display: none;"></div>
<div id="lightbox" class="lightbox" style="display: none;">
    <div class="lb-outerContainer">
        <div class="lb-container"><img class="lb-image" src="">
            <div class="lb-nav"><a class="lb-prev" href=""></a><a class="lb-next" href=""></a></div>
            <div class="lb-loader"><a class="lb-cancel"></a></div>
        </div>
    </div>
    <div class="lb-dataContainer">
        <div class="lb-data">
            <div class="lb-details"><span class="lb-caption"></span><span class="lb-number"></span></div>
            <div class="lb-closeContainer"><a class="lb-close"></a></div>
        </div>
    </div>
</div>
</body>
</html>