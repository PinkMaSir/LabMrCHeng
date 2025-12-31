<!--#include file = "main.asp"-->
<html>
<head>
<title>渗流力学精品课程网站</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../Css.css" rel="stylesheet" type="text/css">
<link href="../style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-image: url(../images/index_bg.GIF);
}
.STYLE2 {color: #FF0000}
-->
</style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!-- ImageReady Slices (index-2.psd) -->
<table width="1200" height="696" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01">
	<tr>
		<td rowspan="18">&nbsp;</td>
		<td colspan="14">
			<img src="../images/index-1_02.gif" width="850" height="18" alt=""></td>
		<td rowspan="18">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="4" rowspan="3">
			<img src="../images/index-1_04.gif" width="174" height="49" alt=""></td>
		<td colspan="10">
			<img src="../images/index-1_05.gif" width="676" height="17" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="../images/index-1_06.gif" width="42" height="32" alt=""></td>
		<td>
			<a href="default.asp"><img src="../images/index-1_07.gif" alt="" width="38" height="22" border="0"></a></td>
		<td>
			<a href="course.asp?AnnId=5"><img src="../images/index-1_08.gif" alt="" width="65" height="22" border="0"></a></td>
		<td>
			<a href="course-b.asp?AnnId=6"><img src="../images/index-1_09.gif" alt="" width="71" height="22" border="0"></a></td>
		<td>
			<img src="../images/index-1_10.gif" width="75" height="22" alt=""></td>
		<td>
			<a href="course-b.asp?AnnId=7"><img src="../images/index-1_11.gif" alt="" width="67" height="22" border="0"></a></td>
		<td>
			<img src="../images/index-1_12.gif" width="69" height="22" alt=""></td>
		<td>
			<img src="../images/index-1_13.gif" width="68" height="22" alt=""></td>
		<td>
			<a href="course-b.asp?AnnId=8"><img src="../images/index-1_14.gif" alt="" width="111" height="22" border="0"></a></td>
		<td>
			<img src="../images/index-1_15.gif" width="70" height="22" alt=""></td>
	</tr>
	<tr>
		<td colspan="9">
			<img src="../images/index-1_16.gif" width="634" height="10" alt=""></td>
	</tr>
	<tr>
		<td colspan="14">
			<img src="../images/index-1_17.gif" width="850" height="15" alt=""></td>
	</tr>
	<tr>
		<td colspan="14">
			<img src="../images/index-1_18.gif" width="850" height="64" alt=""></td>
	</tr>
	<tr>
		<td colspan="4">
			<img src="../images/index-1_19.gif" width="174" height="27" alt=""></td>
		<td colspan="10" background="../images/index-1_20.gif">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="4">
			<img src="../images/index-1_21.gif" width="174" height="44" alt=""></td>
		<td colspan="10" rowspan="11" valign="top" background="../images/index_bg2.gif"><table width="94%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="748" align="center" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="583" style=" padding-top:15px;"><%
						page=clng(request("page"))
						set rs = server.CreateObject("adodb.recordset")
						sql = "select * from topic where sh=1 order by addTime desc"
						rs.open sql,conn,1,3
						if not rs.eof then
							rs.PageSize=5
							if page=0 then page=1 
							pages=rs.pagecount
							if page > pages then page=pages
							rs.AbsolutePage=page  
							for j=1 to rs.PageSize
						
					%>
                      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                        <tr>
                          <td width="11%" align="right" bgcolor="#FFFFFF" class="link3">标 题：</td>
                          <td width="62%" align="left" bgcolor="#FFFFFF" class="link3">&nbsp;<span class="link3"><%=rs("title")%></span></td>
                          <td width="10%" align="right" bgcolor="#FFFFFF" class="link3">添加时间：</td>
                          <td width="17%" align="left" bgcolor="#FFFFFF" class="link3"><%=rs("addTime")%></td>
                        </tr>
                        <tr>
                          <td align="right" bgcolor="#FFFFFF" class="link3">内 容：</td>
                          <td colspan="3" align="left" bgcolor="#FFFFFF" class="link3">&nbsp;<span class="link3"><%=rs("content")%></span></td>
                        </tr>
                        <tr>
                          <td height="25" align="right" bgcolor="#FFFFFF" class="link3"><span class="STYLE2">回复内容：</span></td>
                          <td colspan="3" align="left" bgcolor="#FFFFFF" class="link3">&nbsp;<span class="link3"><%=rs("rcontent")%></span></td>
                        </tr>
                    </table>
                    <table width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
                        <tr>
                          <td height="16"></td>
                        </tr>
                    </table>
                    <%
				rs.movenext
				if rs.eof then exit for
				next
			%>
                      <form id="form2" name="form2" method="post" action="Online.asp">
                        <table width="89%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="40" align="right"><%if Page<2 then      
								response.write "首页 上一页&nbsp;"
							  else
								response.write "<a href=?page=1>首页</a>&nbsp;"
								response.write "<a href=?page=" & Page-1 & ">上一页</a>&nbsp;"
							  end if
							  if rs.pagecount-page<1 then
								response.write "下一页 尾页"
							  else
								response.write "<a href=?page=" & (page+1) & ">"
								response.write "下一页</a> <a href=?page="&rs.pagecount&">尾页</a>"
							  end if
							   response.write "&nbsp;页次：<strong><font color=red>"&Page&"</font>/"&rs.pagecount&"</strong>页 "
								response.write "&nbsp;共<b><font color='#FF0000'>"&rs.recordcount&"</font></b>条记录 <b>"&rs.pagesize&"</b>条记录/页"
							   response.write " 转到：<input type='text' name='page' size=4 maxlength=10 class=input value="&page&">"
							   response.write " <input class=button type='submit'  value=' Goto '  name='cndok'></span></p>"     
							%></td>
                          </tr>
                        </table>
                      </form>
                    <%
						else
							response.Write("暂时无相关信息!")
						end if
						rs.close
						set rs = nothing
					%>
                      <form id="form1" name="form1" method="post" action="ajaxcode/dayi_save.asp?action=dayi">
                        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                          <tr>
                            <td width="24%" align="center" bgcolor="#FFFFFF">提问标题：</td>
                            <td width="76%" height="30" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;
                                <input name="title" type="text" id="title"  style="width:260px; height:18px; border:1px solid #999999;"/>
                            </td>
                          </tr>
                          <tr>
                            <td align="center" valign="top" bgcolor="#FFFFFF">提问内容：</td>
                            <td height="239" align="left" bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;
                                <textarea name="content" rows="15" id="content" style=" width:500px; border:1px solid #999999;"></textarea></td>
                          </tr>
                          <tr>
                            <td height="40" align="center" bgcolor="#FFFFFF">&nbsp;</td>
                            <td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="image" name="imageField" src="../images/but1_07.jpg" />
                              &nbsp;
                              <script type="text/javascript">
	　function resetBtn(fm){
   　　 fm.reset();
    　　return false;
　　}
   </script>
                              <input type="image"  name="imageField2" src="../images/but2_07.jpg" onClick="return resetBtn(this.form);" />
                            </td>
                          </tr>
                        </table>
                      </form></td>
                </tr>
            </table></td>
        </table></td>
	</tr>
	<tr>
		<td rowspan="9">
			<img src="../images/index-1_23.gif" width="51" height="193" alt=""></td>
		<td>
			<a href="course-b.asp?AnnId=1"><img src="../images/index-1_24.gif" alt="" width="69" height="25" border="0"></a></td>
		<td colspan="2" rowspan="7">
			<img src="../images/index-1_25.gif" width="54" height="154" alt=""></td>
	</tr>
	<tr>
		<td>
			<a href="course.asp?AnnId=2"><img src="../images/index-1_26.gif" alt="" width="69" height="21" border="0"></a></td>
	</tr>
	<tr>
		<td>
			<a href="course.asp?AnnId=3"><img src="../images/index-1_27.gif" alt="" width="69" height="22" border="0"></a></td>
	</tr>
	<tr>
		<td>
			<a href="course.asp?AnnId=4"><img src="../images/index-1_28.gif" alt="" width="69" height="23" border="0"></a></td>
	</tr>
	<tr>
		<td>
			<img src="../images/index-1_29.gif" width="69" height="21" alt=""></td>
	</tr>
	<tr>
		<td>
			<a href="course-b.asp?AnnId=10"><img src="../images/index-1_30.gif" alt="" width="69" height="20" border="0"></a></td>
	</tr>
	<tr>
		<td>
			<img src="../images/index-1_31.gif" width="69" height="22" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="course.asp?AnnId=12"><img src="../images/index-1_32.gif" alt="" width="89" height="22" border="0"></a></td>
		<td rowspan="2">
			<img src="../images/index-1_33.gif" width="34" height="39" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="../images/index-1_34.gif" width="89" height="17" alt=""></td>
	</tr>
	<tr>
		<td height="228" colspan="4" bgcolor="#DEDEDE">&nbsp;</td>
	</tr>
	<tr>
		<td height="57" colspan="16"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="28%">&nbsp;</td>
            <td width="44%">&nbsp;</td>
            <td width="28%">&nbsp;</td>
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
	</tr>
	<tr>
		<td>
			<img src="../images/Spacer.gif" width="174" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="51" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="69" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="20" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="34" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="42" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="38" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="65" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="71" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="75" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="67" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="69" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="68" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="111" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="70" height="1" alt=""></td>
		<td>
			<img src="../images/Spacer.gif" width="176" height="1" alt=""></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
</body>
</html>