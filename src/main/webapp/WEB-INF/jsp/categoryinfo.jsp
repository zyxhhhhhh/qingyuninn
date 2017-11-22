<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>房型详情</title>
    <meta name="Author" content="PageAdmin CMS" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <link href="/css/style.css" type="text/css" rel="stylesheet" />
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/comm.js" type="text/javascript"></script>
    <script src="/js/lang.js" type="text/javascript"></script>
    <script type="text/javascript">var submenu_style=1;</script>
    <script src="/js/script.js" type="text/javascript"></script>
    <script src="/js/wow.min.js" type="text/javascript"></script>
    <script src="/js/lightbox-2.6.min.js" type="text/javascript"></script>
    <link href="/css/animate.min.css" type="text/css" rel="stylesheet"/>
    <link href="/js/lightbox.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div class="page_style detailpage page_l62_sl746">
    <div class="top_box">
        <div class="top_box_inner">
            <div class="topcontent"><a href="/index.aspx?s=1&type=login">登录</a><span>|</span><a href="/index.aspx?type=reg&s=1">注册</a></div><div class="clear"></div>
            <div class="logo"><a href="/"><img src="/img/logo.png" border="0"></a></div>
            <div class="menu_box" id="Menu"><ul>
                <li class="menu_style_homepage" id="MenuItem61" name="MenuItem"><a href="/index.aspx" class="menu2">网站首页</a></li>
                <li class="menu_style menu_current" id="MenuItem62" name="MenuItem"><a href="/index.aspx?lanmuid=62&sublanmuid=746" class="menu2">酒店预订</a></li>
                <li class="menu_style" id="MenuItem89" name="MenuItem"><a href="/index.aspx?lanmuid=89" class="menu2">酒店相册</a></li>
                <li class="menu_style" id="MenuItem63" name="MenuItem"><a href="/index.aspx?lanmuid=63" class="menu2">旅游信息</a></li>
                <li class="menu_style" id="MenuItem88" name="MenuItem"><a href="/index.aspx?lanmuid=88" class="menu2">酒店地图</a></li>
                <li class="menu_style" id="MenuItem81" name="MenuItem"><a href="/index.aspx?lanmuid=81" class="menu2">关于我们</a></li>
            </ul></div>
        </div>
    </div>
    <script type="text/javascript">var IsPageHome="";var Lanmu_Id="62";var Sublanmu_Id="746";ShowSubMenu(Lanmu_Id);</script>

    <div class="main_box main_box_style1">
        <div class="main_box_inner">
            <div class="main_box_inner_left">
                <div id="nav_128"  class="nav_box nav_box_menu">

                    <div  class="nav_title"><span  class="nav_sign">客房</span><span  class="nav_more"></span></div>
                    <div id="nav_menu_128"  class="nav_menu">
                        <ul id="rootul_128"><li id="sl747"><a href="/booknow/${rcId}" class="sla747">立即预订</a></li>
                        </ul>
                    </div></div>
                <script type="text/javascript">Initialization_Nav("rootul_128","sl746","0");</script>
            </div>
            <div class="main_box_inner_right"><div class="current_location current_location_746"><ul>
                <li class="current_location_1">当前位置：<a href=/>首页</a> ><a href="/index.aspx?lanmuid=62&sublanmuid=746">客房</a></li>
                <li class="current_location_2">客房</li>
            </ul></div>
                <div class="sublanmu_box sublanmu_box_746" id="sublanmu_box">
                    <div class="sublanmu_content" id="sublanmu_content">
                        <script type="text/javascript" src="/js/zoom.js"></script>
                        <link href="/css/zoom.css" type="text/css" rel="stylesheet"/>

                        <div class="product_pic_infor">
                            <ul>
                                <li class="left">
                                    <div class="view" id="view" style="position:relative;vertical-align: middle;display: table-cell;text-align: center;">
                                        <img class="zoom" src="${kzRoomCategory.image}" big="${kzRoomCategory.image}" border="0" id="picture" name="picture" style="">
                                    </div>
                                    <div class="clear"></div>
                                    <!--缩略图区域--->

                                    <!--缩略图区域--->
                                </li>
                                <li class="right">
                                    <span class="title">${kzRoomCategory.category}</span>
                                    <span style="display:block;font-size:16px;line-height:40px;">价格：￥&nbsp;${kzRoomCategory.price}</span>${kzRoomCategory.description}
                                    <div style="margin:10px 0px;" class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
                                    <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"24"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
                                    <!--
                                    <div class="lj-box"><input type="hidden" id="currentimage"><a class="pro-ckdt" href=javascript:ShowImage()>查看大图</a><a class="pro-xsyd" target="_blank" href="/index.aspx?lanmuid=67&sublanmuid=696&prod=%e5%8f%8c%e5%8d%a7%e5%ae%b6%e5%ba%ad%e6%88%bf">线上预定</a></div>
                                    -->
                                </li>
                                <li class="clear"></li>
                            </ul>
                        </div>
                        <div class="prodinfotab">
                            <div class="tabheaderes">详情</div>
                            <div class="tabcontentes">${kzRoomCategory.description}</div>
                        </div>
                        <script type="text/javascript">
                            tabs("tab_t","tab_c","onclick")
                            window.onload=function(){zoom({width:300,height:300});}
                        </script>

                        <script type="text/javascript">Get_Info("product","74")</script>
                    </div></div></div>
        </div>
        <div class="clear main_box_inner_bottom"></div>
    </div>


    <div class="bottom_box"><ul class="db_dzbox">
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
                    <img src="" alt="" /> <span>扫一扫，官方微信</span>
                </dd>
            </dl>
        </div></div><div align=center style='padding:5px'>Powered by <a href='http://www.pageadmin.net'><b>PageAdmin CMS</b></a></div></div></body><script type="text/javascript">TongJi(1)</script></html>