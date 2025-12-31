<!--#include file = "main.asp"-->
<html>
<head>
<title>渗流力学精品课程</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../Css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript1.2" src="../js/stmenu.js"></script>
</head>
<body background="../images/bg2.jpg" bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!-- ImageReady Slices (首页1.PSD) -->
<table width="1001" height="605" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01">
	<tr>
		<td colspan="2">
			<img src="../images/s_01.gif" width="3" height="83" alt=""></td>
		<td>
			<img src="../images/index_02.gif" width="326" height="83" alt=""></td>
		<td>
			<img src="../images/index_03.gif" width="370" height="83" alt=""></td>
		<td colspan="3">
			<img src="../images/index_04.gif" width="301" height="83" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="1" height="83" alt=""></td>
	</tr>
	<tr>
		<td rowspan="8">
			<img src="../images/s_05.gif" width="1" height="521" alt=""></td>
		<td colspan="6" background="../images/index_05.gif"><table width="100%" height="29" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="99">&nbsp;</td>
            <td width="851"><script type="text/javascript" language="JavaScript1.2" src="../js/menu.js"></script></td>
            <td width="49">&nbsp;</td>
          </tr>
        </table></td>
		<td>
			<img src="../images/Spacer.gif" width="1" height="37" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="3" align="left" valign="top">
		<div id="js_F"></div>
<script type="text/javascript">
<!--///*--><![CDATA[/*><!--*/
var js_F = document.getElementById("js_F");
var imgList = ["../images/08.gif","../images/qtqw.jpg","../images/qtqq.jpg" ];
var imgTemp = new Array();
for (i=0; i<imgList.length; i++){
 imgTemp[i] = new Image();
 imgTemp[i].src = imgList[i];
}
var imgs = new Array();
var imgID = 0, nextImgID, proveImgID;
var tf = true; //图片移动方向标志
var speed1 = 10; speed2 = 3000; //速度
function imgInit(){
 var content = '';
 for (i=0; i<imgList.length; i++){
  content += '<img src="' + imgList[i] + '" style="left:0;" />\n';
 }
 js_F.innerHTML = content;
 imgs = js_F.getElementsByTagName('img');
 imgs[0].style.zIndex = 20;
 imgs[1].style.zIndex = 15;
}
function imgChange(){
 if ((imgID+1)<imgList.length){
  nextImgID = imgID + 1;
 } else if (imgID<imgList.length) {
  nextImgID = 0;
 } else {
  imgID = 0;
  nextImgID = imgID + 1;
 }
 imgs[imgID].style.zIndex = 20;
 imgs[nextImgID].style.zIndex = 15;
 setTimeout('imgShow()',speed2);
}
function imgShow(){
 if (tf){ //imgID向左边移动2/3，nextImgID向右边1/3
  if (parseInt(imgs[imgID].style.left)>-180){
   imgs[imgID].style.left = (parseInt(imgs[imgID].style.left)-10) + 'px';
   imgs[nextImgID].style.left = (parseInt(imgs[nextImgID].style.left)+5) + 'px';
   setTimeout('imgShow()',speed1);
  } else {
   tf = !tf;
   imgs[imgID].style.zIndex = 15;
   imgs[nextImgID].style.zIndex = 20;
   setTimeout('imgShow()',speed1);
  }
 } else {
  if (parseInt(imgs[imgID].style.left)<0){
   imgs[imgID].style.left = (parseInt(imgs[imgID].style.left)+10) + 'px';
   imgs[nextImgID].style.left = (parseInt(imgs[nextImgID].style.left)-5) + 'px';
   setTimeout('imgShow()',speed1);
  } else {
   imgs[imgID].style.zIndex = 10;
   tf = !tf;
   imgID++;
   imgChange();
  }
 }
}
imgInit();
imgChange();
/*]]>*///-->
</script>
		</td>
		<td rowspan="3">
			<img src="../images/index_07.gif" alt="" width="370" height="214" border="0" usemap="#Map"></td>
		<td colspan="3"><img src="../images/index_08.gif" width="301" height="9"></td>
		<td>
			<img src="../images/Spacer.gif" width="1" height="9" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="../images/index_09.gif" width="11" height="205" alt=""></td>
		<td bgcolor="#9B1818">
		<div id=oTransContainer 
            style="FILTER: progid:DXImageTransform.Microsoft.Wipe(GradientSize=1.0,wipeStyle=0, motion='forward'); WIDTH: 280px; HEIGHT: 192px">
		  <script>var NowFrame = 1;var MaxFrame = 5;var bStart = 0;function fnToggle(){var next = NowFrame + 1;if(next == MaxFrame+1) {NowFrame = MaxFrame;next = 1;}if(bStart == 0){bStart = 1;setTimeout('fnToggle()', 2000);return;}else{oTransContainer.filters[0].Apply();document.images['oDIV'+next].style.display = "";document.images['oDIV'+NowFrame].style.display = "none";oTransContainer.filters[0].Play(duration=2);if(NowFrame == MaxFrame){NowFrame = 1;}else{NowFrame++;}}	setTimeout('fnToggle()', 6000);}fnToggle();</script>
 <img class=pic id=oDIV2 
            style="BORDER-RIGHT: red RGB(155, 24, 24) 1px solid; BORDER-TOP: red RGB(155, 24, 24) 1px solid; DISPLAY: none; BORDER-LEFT: red RGB(155, 24, 24) 1px solid; BORDER-BOTTOM: red RGB(155, 24, 24) 1px solid" 
            height=192 src="../images/02.jpg" 
            width=280 border=0><img class=pic id=oDIV3 
            style="BORDER-RIGHT: red RGB(155, 24, 24) 1px solid; BORDER-TOP: red RGB(155, 24, 24) 1px solid; DISPLAY: none; BORDER-LEFT: red RGB(155, 24, 24) 1px solid; BORDER-BOTTOM: red RGB(155, 24, 24) 1px solid" 
            height=192 src="../images/03.jpg" 
            width=280 border=0><img class=pic id=oDIV4 
            style="BORDER-RIGHT: red RGB(155, 24, 24) 1px solid; BORDER-TOP: red RGB(155, 24, 24) 1px solid; DISPLAY: none; BORDER-LEFT: red RGB(155, 24, 24) 1px solid; BORDER-BOTTOM: red RGB(155, 24, 24) 1px solid" 
            height=192 src="../images/04.jpg" 
            width=280 border=0><img class=pic id=oDIV5 
            style="BORDER-RIGHT: red RGB(155, 24, 24) 1px solid; BORDER-TOP: red RGB(155, 24, 24) 1px solid; DISPLAY: none; BORDER-LEFT: red RGB(155, 24, 24) 1px solid; BORDER-BOTTOM: red RGB(155, 24, 24) 1px solid" 
            height=192 src="../images/05.jpg" 
            width=280 border=0><img src="../images/01.jpg" name="oDIV1" width=280 height=188 border=0 class=pic id=oDIV1 
            style="BORDER-RIGHT: red RGB(155, 24, 24) 1px solid; BORDER-TOP: red RGB(155, 24, 24) 1px solid; BORDER-LEFT: red RGB(155, 24, 24) 1px solid; BORDER-BOTTOM: red RGB(155, 24, 24) 1px solid"></div>
		</td>
		<td rowspan="2">
			<img src="../images/index_11.gif" width="8" height="205" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="1" height="194" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="../images/index_12.gif" width="282" height="11" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="1" height="11" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="../images/s_14.gif" width="328" height="38" alt=""></td>
		<td background="../images/s_15.gif"><table width="100%" height="36" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="22%" height="30">&nbsp;</td>
            <td width="78%">
			<marquee onmouseover=JavaScript:this.stop(); onmouseout=JavaScript:this.start(); scrollAmount=10 scrollDelay=150><%call Announce()%>
			</marquee></td>
          </tr>
        </table></td>
		<td colspan="3" rowspan="2">
			<img src="../images/s_16.gif" alt="" width="301" height="95" border="0" usemap="#Map2"></td>
		<td>
			<img src="../images/Spacer.gif" width="1" height="38" alt=""></td>
	</tr>
	<tr>
		<td colspan="3" rowspan="2"><%call Answer()%></td>
		<td>
			<img src="../images/Spacer.gif" width="1" height="57" alt=""></td>
	</tr>
	<tr>
		<td colspan="3">
			<img src="../images/s_18.gif" alt="" width="301" height="103" border="0" usemap="#Map3"></td>
		<td>
			<img src="../images/Spacer.gif" width="1" height="103" alt=""></td>
	</tr>
	<tr>
		<td colspan="6" background="../images/s_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="26%">&nbsp;</td>
            <td width="47%">&nbsp;</td>
            <td width="27%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td class="STYLE1">Copyright 2005-2010 All   Rights Reserved. 西安石油大学石油工程学院 版权所有</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td class="STYLE1"><div align="center">信息中心设计制作</div></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
		<td>
			<img src="../images/Spacer.gif" width="1" height="72" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="../images/Spacer.gif" width="1" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="2" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="326" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="370" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="11" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="282" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="8" height="1" alt=""></td>
		<td></td>
	</tr>
</table>
<!-- End ImageReady Slices -->

<map name="Map"><area shape="rect" coords="294,186,362,206" href="Course.asp?AnnID=11">
</map>
<map name="Map2"><area shape="rect" coords="154,16,287,101" href="Course.asp?AnnID=13">
<area shape="rect" coords="18,17,145,93" href="Course.asp?AnnID=9">
</map>
<map name="Map3"><area shape="rect" coords="17,8,145,84" href="Tutor.asp?AnnID=2">
<area shape="rect" coords="154,8,288,85" href="course.asp?AnnId=12">
</map></body>
</html>