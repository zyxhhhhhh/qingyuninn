﻿var Show_Style=3;
var Image_12=new Array();
var Pics="/img/1.jpg|/img/2.jpg|/img/3.jpg|/img/4.jpg";
var Links="";
var Titles="";
var Alts="";
var Apic12=Pics.split('|');
var ALink12=Links.split('|');
var ATitle12=Titles.split('|');
var AAlts12=Alts.split('|');
var Show_Text=0;
for(i=0;i<Apic12.length;i++)
  {
   Image_12.src = Apic12[i]; 
  }



  var FHTML='<div id="js_slide_focus_12" class="slide_focus focus_style3" ><a class="prev"></a><a class="next"></a>';
  
  FHTML+="<div class=\"slide_focus_zdycontent\"><ul class=\"bt_box\">  <li class=\"bt1\"></li>  <li class=\"bt2\">让您离开喧闹的都市<br/>拖着疲惫的翅膀<br/>守望一个心灵的地方</li></ul></div>";
  
  FHTML+='<ul class="inner">';
  for(var i=0;i<Apic12.length;i++)
   {
     if(ALink12.length<(i+1) || ALink12[i]=="")
      {
       ALink12[i]="javascript:void(0)";
      }
     if(AAlts12.length<(i+1))
      {
       AAlts12[i]="";
      }
     if(ATitle12.length<(i+1))
      {
       ATitle12[i]="";
      }
    FHTML+='<li><a href="'+ALink12[i]+'" target="_self" title="'+AAlts12[i]+'"><img src="'+Apic12[i]+'">';
    FHTML+='<em>'+ATitle12[i]+'</em>';
    FHTML+='</a></li>';
   }
 FHTML+='</ul>';
 FHTML+='</div>';
 document.write(FHTML);
$(window).load(function(){Slide_Focus("js_slide_focus_12",1,5,0,0,true);});
