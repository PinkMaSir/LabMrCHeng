<!--#include file = "main.asp"-->
<html>
<head>
<title>渗流力学精品课程</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
* {margin:0;padding:0;}
img {margin:0;border:0;padding:0;}
#jsF {position:relative;margin:0;width:328px;height:214px;overflow:hidden;}
#jsF ul {position:absolute;top:0;left:0;list-style-type:none;z-index:1;}
#jsF li {display:block;position:absolute;top:0;margin:0;padding:0;overflow:hidden;}
</style>

<link href="../Css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript1.2" src="../js/stmenu.js"></script>
</head>
<body background="../images/bg2.jpg" bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!-- ImageReady Slices (首页1.PSD) -->
<table width="1001" height="605" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" id="Table_01">
	<tr>
		<td colspan="2">
			<img src="../images/s_01.gif" width="3" height="83" alt=""></td>
		<td>
			<img src="../images/index_02.gif" alt="" width="326" height="83" border="0" usemap="#Map4"></td>
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
		<div id="jsF"></div>
<div id="debug"></div>
<script>

var jsF = document.getElementById('jsF');
var speed1 = 50, speed2 = 2000;
var iA = 0, iB = 0, iC = 0;
var bD = [];
var aImg = ['../images/08.gif','../images/qtqw.jpg','../images/07l.jpg','../images/08l.jpg'];
var iImgWidth = 328, iImgHeight = 214;
var iDivWidth = iImgWidth/10;
jsF.style.width = iImgWidth + 'px';
jsF.style.height = iImgHeight + 'px';
var oImg = [];
oImg[0] = new Image();
oImg[0].src = aImg[0];
oImg[1] = new Image();
oImg[1].src = aImg[1];
window.onload = function() {
 jsF_create();
}

function jsF_create() {
 if (aImg[iA+2] && !bD[iA+2]){
  oImg[iA+2] = new Image();
  oImg[iA+2].src = aImg[iA+2];
 }
 if (!bD[iA]) {
  var oUl = document.createElement('ul');
  /*oUl.style.position = 'absolute';
  oUl.style.top = '0';
  oUl.style.left = '0';*/
  oUl.style.width = iImgWidth + 'px';
  oUl.style.height = iImgHeight + 'px';
  var oUlLi = document.createElement('li');
  oUlLi.style.right = '0';
  oUlLi.style.width = iDivWidth +'px';
  oUlLi.style.height = iImgHeight + 'px';
  var oLiA = document.createElement('a');
  //oLiA.href = aLink[iA];
  var oLiImg = document.createElement('img');
  oLiImg.src = oImg[iA].src;
  oLiImg.style.marginLeft = -9*iDivWidth + 'px';
  oLiA.appendChild(oLiImg);
  oUlLi.appendChild(oLiA);
  oUl.appendChild(oUlLi);
  for (var i=0; i<10; i++) {
   oUlLi = document.createElement('li');
   oUlLi.style.right = i*iDivWidth + 'px';
   oUlLi.style.width = 1.5*iDivWidth +'px';
   oUlLi.style.height = iImgHeight + 'px';
   //oUlLi.style.background = color[i];
   oLiA = document.createElement('a');
   //oLiA.href = aLink[iA];
   oLiImg = document.createElement('img');
   oLiImg.src = oImg[iA].src;
   oLiImg.style.marginLeft = -9*iDivWidth + 'px';
   oLiA.appendChild(oLiImg);
   oUlLi.appendChild(oLiA);
   //oUlLi.appendChild(document.createTextNode(i));
   oUl.appendChild(oUlLi);
  }
  jsF.appendChild(oUl);
  bD[iA] = !bD[iA];
 }
 jsF_show();
 //document.getElementById('debug').innerText = jsF.innerHTML;
}

function jsF_show(){
 var oUl = jsF.getElementsByTagName('ul');
 var oLi = oUl[iA].getElementsByTagName('li');
 var oImgs = oUl[iA].getElementsByTagName('img');
 oUl[iA].style.zIndex = ++iC;
 for (var i=1; i<11; i++){
  oImgs[i].style.marginLeft = -9*iDivWidth + 'px';
  oImgs[i].style.visibility = 'hidden';
 }
 jsF_move();
}

function jsF_move(){
 var oUl = jsF.getElementsByTagName('ul');
 var oLi = oUl[iA].getElementsByTagName('li');
 var oImgs = oUl[iA].getElementsByTagName('img');
 if (iB++<10)
  oImgs[iB].style.visibility = 'visible';
 for (var i=1; i<oImgs.length; i++) {
  var iBgpx = parseInt(oImgs[i].style.marginLeft);
  if (iBgpx<(i+0.5)*iDivWidth-iImgWidth) {
   var iMovePx = Math.floor((iImgWidth-(i+0.5)*iDivWidth+iBgpx)/15);
   oImgs[i].style.marginLeft = iBgpx - iMovePx + 'px';
  } else {
   oImgs[i].style.marginLeft = ((i+0.5)*iDivWidth-iImgWidth) + 'px';
  }
 }
 //document.getElementById('debug').innerText = jsF.innerHTML;
 if (parseInt(oImgs[10].style.marginLeft)<0.5*iDivWidth) {
  setTimeout('jsF_move()',speed1);
 } else {
  iB = 0;
  //document.getElementById('debug').innerText = oUl[iA].style.display;
  iA = ++iA==aImg.length ? 0 : iA;
  if (bD[iA]) {
   setTimeout('jsF_show()',speed2);
  } else {
   setTimeout('jsF_create()',speed2);
  }
 }
}
//]]>
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
			<img src="../images/01.jpg" name="oDIV1" width=280 height=188 border=0 class=pic id=oDIV1 
            style="BORDER-RIGHT: red RGB(155, 24, 24) 1px solid; BORDER-TOP: red RGB(155, 24, 24) 1px solid; BORDER-LEFT: red RGB(155, 24, 24) 1px solid; BORDER-BOTTOM: red RGB(155, 24, 24) 1px solid">
		  <script>var NowFrame = 1;var MaxFrame = 9;var bStart = 0;function fnToggle(){var next = NowFrame + 1;if(next == MaxFrame+1) {NowFrame = MaxFrame;next = 1;}if(bStart == 0){bStart = 1;setTimeout('fnToggle()', 2000);return;}else{oTransContainer.filters[0].Apply();document.images['oDIV'+next].style.display = "";document.images['oDIV'+NowFrame].style.display = "none";oTransContainer.filters[0].Play(duration=2);if(NowFrame == MaxFrame){NowFrame = 1;}else{NowFrame++;}}	setTimeout('fnToggle()', 2000);}fnToggle();</script>
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
            width=280 border=0><img class=pic id=oDIV6 
            style="BORDER-RIGHT: red RGB(155, 24, 24) 1px solid; BORDER-TOP: red RGB(155, 24, 24) 1px solid; DISPLAY: none; BORDER-LEFT: red RGB(155, 24, 24) 1px solid; BORDER-BOTTOM: red RGB(155, 24, 24) 1px solid" 
            height=192 src="../images/06.jpg" 
            width=280 border=0><img class=pic id=oDIV7
            style="BORDER-RIGHT: red RGB(155, 24, 24) 1px solid; BORDER-TOP: red RGB(155, 24, 24) 1px solid; DISPLAY: none; BORDER-LEFT: red RGB(155, 24, 24) 1px solid; BORDER-BOTTOM: red RGB(155, 24, 24) 1px solid" 
            height=192 src="../images/07.jpg" 
            width=280 border=0><img class=pic id=oDIV8 
            style="BORDER-RIGHT: red RGB(155, 24, 24) 1px solid; BORDER-TOP: red RGB(155, 24, 24) 1px solid; DISPLAY: none; BORDER-LEFT: red RGB(155, 24, 24) 1px solid; BORDER-BOTTOM: red RGB(155, 24, 24) 1px solid" 
            height=192 src="../images/08.jpg" 
            width=280 border=0><img class=pic id=oDIV9 
            style="BORDER-RIGHT: red RGB(155, 24, 24) 1px solid; BORDER-TOP: red RGB(155, 24, 24) 1px solid; DISPLAY: none; BORDER-LEFT: red RGB(155, 24, 24) 1px solid; BORDER-BOTTOM: red RGB(155, 24, 24) 1px solid" 
            height=192 src="../images/09.jpg" 
            width=280 border=0></div>
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
</map>
<map name="Map4"><area shape="rect" coords="20,11,227,79" href="http://www.xsyu.edu.cn" target="_blank">
</map></body>
</html>