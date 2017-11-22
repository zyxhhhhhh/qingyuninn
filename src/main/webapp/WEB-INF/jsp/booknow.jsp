<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>立即预订</title>
    <meta name="Author" content="PageAdmin CMS" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <link href="/css/style.css" type="text/css" rel="stylesheet" />
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/comm.js" type="text/javascript"></script>
    <script src="/js/lang.js" type="text/javascript"></script><script type="text/javascript">var submenu_style=1;</script>
    <script src="/js/script.js" type="text/javascript"></script>
    <script src="/js/wow.js" type="text/javascript"></script>
    <script src="/js/lightbox-2.6.min.js" type="text/javascript"></script>
    <link href="/css/animate.min.css" type="text/css" rel="stylesheet"/>
    <link href="/css/lightbox.css" type="text/css" rel="stylesheet"/>
    <!--引入EasyUI的样式文件 -->
    <link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.5/themes/bootstrap/easyui.css"/>
    <!-- 图标样式 -->
    <link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.5/themes/icon.css"/>
    <!-- 引入easyui的脚本文件 -->
    <script type="application/javascript" src="/js/jquery-easyui-1.5/jquery.min.js"></script>
    <script type="application/javascript" src="/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
    <!-- 语言脚本 -->
    <script type="application/javascript" src="/js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
</head>



<body>
<div class="page_style sublanmupage page_l62_sl747">
    <div class="top_box">
        <div class="top_box_inner">
            <div class="topcontent"><a href="/login.html">登录</a><span>|</span><a href="/register.html">注册</a></div><div class="clear"></div>
            <div class="logo"><a href="/"><img src="/img/logo.png" border="0"></a></div>
            <div class="menu_box" id="Menu"><ul>
                <li class="menu_style_homepage" id="MenuItem61" name="MenuItem"><a href="/index.html" class="menu2">网站首页</a></li>
                <li class="menu_style menu_current" id="MenuItem62" name="MenuItem"><a href="/roomlist" class="menu2">酒店预订</a></li>
                <li class="menu_style" id="MenuItem89" name="MenuItem"><a href="/index.aspx?lanmuid=89" class="menu2">酒店相册</a></li>
                <li class="menu_style" id="MenuItem63" name="MenuItem"><a href="/index.aspx?lanmuid=63" class="menu2">旅游信息</a></li>
                <li class="menu_style" id="MenuItem88" name="MenuItem"><a href="/index.aspx?lanmuid=88" class="menu2">酒店地图</a></li>
                <li class="menu_style" id="MenuItem81" name="MenuItem"><a href="/index.aspx?lanmuid=81" class="menu2">关于我们</a></li>
            </ul></div>
        </div>
    </div>
    <script type="text/javascript">
        var IsPageHome="";
        var Lanmu_Id="62";
        var Sublanmu_Id="747";
        ShowSubMenu(Lanmu_Id);
        function selectrooms() {
            var data = 'rcid='+ ${rcId}+'&startdate='+$('#startdate').datebox('getValue')+"&enddate="+$('#enddate').datebox('getValue');
            $.ajax({
                url:"/findItemByDate",
                data: data,
                type:"post",
                success:function (res) {
                    $('#rooms').empty();
                        <c:forEach items="${kzRooms}" var="room">
                            var $in = $("<input type='checkbox'>");
                            $in.attr("name","rooms");
                            $in.val(${room.id});
                            $.each(res,function (){
                               if(this==$in.val()){
//                                   $in.click(
//                                       function(){
//                                           this.checked = !this.checked;
//                                       })
                                   $in.attr("disabled","disabled");
                               }
                            });
                            $('#rooms').append($in);
                            $('#rooms').append($("<span>${room.id}号</span>"));
                        </c:forEach>
                }
            })
        }
    </script>

    <div class="main_box main_box_style1">
        <div class="main_box_inner">
            <div class="main_box_inner_left">
                <div id="nav_128"  class="nav_box nav_box_menu">
                    <div  class="nav_title"><span  class="nav_sign">客房</span><span  class="nav_more"></span></div>
                    <div id="nav_menu_128"  class="nav_menu">
                        <ul id="rootul_128"><li id="sl747"><a href="/booknow/${rcId}" class="sla747">立即预订</a></li>
                        </ul>
                    </div></div>
                <script type="text/javascript">Initialization_Nav("rootul_128","sl747","0");</script>
            </div>
            <div class="main_box_inner_right"><div class="current_location current_location_747"><ul>
                <li class="current_location_1">当前位置：<a href=/>首页</a> ><a href="/">立即预订</a></li>
                <li class="current_location_2">立即预订</li>
            </ul></div>
                <div class="sublanmu_box sublanmu_box_747">
                    <div class="sublanmu_content sublanmu_content_introduct">
                        <script type="text/javascript" src="/js/zdyform.js"></script>
                        <script src="/js/laydate.js" type="text/javascript"></script>
                        <link href="/css/laydate.css" type="text/css" rel="stylesheet"/>
                        <link href="/css/dahong/laydate.css" type="text/css" rel="stylesheet"/>
                        <form name="feedback" method="post" action="/order/${rcId}">
                            <ul class="ljyd_box">
                                <%--<li style="display:none;"><select name="sort" id="sort"><option value="636">立即预订</option></select></li>--%>
                                <li><input class="ljyd_s" type="text" name="title" placeholder="您的姓名" id="title" maxlength="200"></li>
                                <li><input class="ljyd_s" type="text" name="pa_truename" placeholder="您的电话" id="pa_truename" maxlength="200"></li>
                                <li>
                                    入住日期： <input  id="startdate"  name="startdate" type= "text" class= "easyui-datebox" required ="required"> </input>
                                    离开日期：<input  id="enddate"  name="enddate" type= "text" class= "easyui-datebox" required ="required"> </input>
                                    <input type="button" value="搜索" onclick="selectrooms()">(注：不可选中说明已被预订)
                                </li>
                                <li id="rooms">
                                </li>
                                <%--<li><textarea placeholder="其它备注" name="content" id="content" ></textarea></li>--%>
                                <li>
                                    <input type="hidden" name="checked" value="0">
                                    <input type="hidden" name="showcode" value="0">
                                    <input type="hidden" name="to" value="">
                                    <input type="hidden" name="mailto" value="">
                                    <input type="hidden" name="mailreply" value="">
                                    <input type="hidden" name="mailsubject" value="">
                                    <input type="hidden" name="mailbody" value="">
                                    <input type="hidden" name="insertdatabase" value="1">
                                    <input type="hidden" name="siteid" value="1">
                                    <input type="hidden" name="formtable" value="feedback">
                                    <input type="hidden" name="mustname" value="您的姓名,您的电话,入住日期,离开日期,选择客房,其它备注,">
                                    <input type="hidden" name="mustfield" value="title,pa_truename,pa_rzrq,thedate,pa_xzkf,content,">
                                    <input type="hidden" name="musttype" value="text,text,text,text,select,textarea,">
                                    <%--<input type="button" class="bt" value="立即预订" onclick="return set_feedback()">--%>
                                    <input type="button" class="bt" value="立即预订" onclick="return set_feedback()">
                                </li>
                            </ul>
                        </form>
                        <script type="text/javascript">
                            function set_feedback()
                            {
                                document.forms["feedback"].mailto.value="";
                                document.forms["feedback"].mailreply.value="";
                                document.forms["feedback"].mailsubject.value="";
                                document.forms["feedback"].mailbody.value="";
                                return Check_ZdyForm("feedback");
                            }

                            function feedback_zdycheck(){
                                return true;
                            }
                        </script>
                    </div>
                </div></div>
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
                    <img src="/img/1156193259.jpg" alt="" /> <span>扫一扫，官方微信</span>
                </dd>
            </dl>
        </div></div><div align=center style='padding:5px'>Powered by <a href='http://www.pageadmin.net'><b>PageAdmin CMS</b></a></div></div></body><script type="text/javascript">TongJi(1)</script></html>
