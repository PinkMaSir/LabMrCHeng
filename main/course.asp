<!--#include file = "main.asp"-->
<%
Dim AnnID,A_Title,A_Content,A_AddTime,FoundErr,ErrMsg
AnnID=Trim(Request("AnnID"))
If IsNumeric(AnnID) = False Then
	GoError "参数错误，请不要试图破坏此系统。"
End If
sSql="Select A_Title,A_Content,A_AddTime From Course Where A_ID="&AnnID
oRs.Open sSql,oConn,1,1
If Not oRs.Eof Then
A_Title=oRs("A_Title")
A_Content=oRs("A_Content")
A_AddTime=oRs("A_AddTime")
Else
	FoundErr=True
	ErrMsg=ErrMsg & "<br><li>无此信息或已被删除！</li>"
End If
oRs.Close
if FoundErr=True then
	WriteErrMsg()
	Response.End
End If
WebTitle=A_Title
%>

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
			<img src="../images/index_02.gif" alt="" width="326" height="83" border="0" usemap="#Map"></td>
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
		<td colspan="6" rowspan="6"><table width="100%" height="412" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
          <tr>
            <td width="248" height="412" valign="top" bgcolor="#f8f4ea"><table width="240" height="434" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="240">&nbsp;</td>
              </tr>
              <tr>
                <td align="center" valign="middle"><table width="158" height="34" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td align="center" background="../images/button.jpg"><table width="100%" height="34" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="27%">&nbsp;</td>
                          <td width="73%"><span class="STYLE2"><%=A_Title%></span></td>
                        </tr>
                      </table></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td height="26" align="center" valign="middle">&nbsp;</td>
              </tr>
              <tr>
                <td height="34" align="center" valign="middle"><table width="158" height="34" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td align="center" background="../images/button3.jpg" class="STYLE2">课程资源</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="353" valign="top"><table width="100%" height="286" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="31%" height="26" align="right" valign="middle"><a href="Book.asp?AnnId=1"><img src="../images/an.jpg" width="15" height="15" border="0"></a></td>
                    <td width="69%" height="26"><a href="course.asp?AnnId=1"><span class="STYLE7">教学大纲</span></a><a href="Teacher.asp?AnnId=1"></a></td>
                  </tr>
                  <tr>
                    <td height="26" align="right" valign="middle"><a href="Book.asp?AnnId=1"><img src="../images/an.jpg" width="15" height="15" border="0"></a></td>
                    <td height="26"><a href="course.asp?AnnId=2"><span class="STYLE7">电子教材</span></a><a href="Teacher.asp?AnnId=2"></a></td>
                  </tr>
                  <tr>
                    <td height="26" align="right" valign="middle"><a href="Book.asp?AnnId=1"><img src="../images/an.jpg" width="15" height="15" border="0"></a></td>
                    <td height="26"><a href="course.asp?AnnId=3"><span class="STYLE7">授课教案</span></a><a href="Teacher.asp?AnnId=3"></a></td>
                  </tr>
                  <tr>
                    <td height="26" align="right" valign="middle"><a href="Book.asp?AnnId=1"><img src="../images/an.jpg" width="15" height="15" border="0"></a></td>
                    <td height="26"><a href="course.asp?AnnId=4"><span class="STYLE7">教学录像</span></a><a href="Teacher.asp?AnnId=4"></a></td>
                  </tr>
                  <tr>
                    <td height="26" align="right" valign="middle"><a href="Book.asp?AnnId=1"><img src="../images/an.jpg" width="15" height="15" border="0"></a></td>
                    <td height="26"><a href="course.asp?AnnId=14"><span class="STYLE7">多媒体课件</span></a><a href="Teacher.asp?AnnId=5"></a></td>
                  </tr>
                  <tr>
                    <td height="26" align="right" valign="middle"><a href="Book.asp?AnnId=1"><img src="../images/an.jpg" width="15" height="15" border="0"></a></td>
                    <td height="26"><a href="course.asp?AnnId=10"><span class="STYLE7">参考文献</span></a></td>
                  </tr>
                  <tr>
                    <td height="26" align="right" valign="middle"><a href="Book.asp?AnnId=1"><img src="../images/an.jpg" width="15" height="15" border="0"></a></td>
                    <td height="26"><a href="Tutor.asp?AnnId=1"><span class="STYLE7">实验教学</span></a></td>
                  </tr>
                  <tr>
                    <td height="26" align="right" valign="middle"><a href="Book.asp?AnnId=1"><img src="../images/an.jpg" width="15" height="15" border="0"></a></td>
                    <td height="26"><a href="course.asp?AnnId=12"><span class="STYLE7">课程学习指导</span></a></td>
                  </tr>
                  <tr>
                    <td height="26" align="right" valign="middle"><a href="Book.asp?AnnId=1"><img src="../images/an.jpg" width="15" height="15" border="0"></a></td>
                    <td height="26"><a href="Book.asp?AnnId=1"><span class="STYLE7">思考题</span></a></td>
                  </tr>
                  <tr>
                    <td height="26" align="right" valign="middle"><a href="Book.asp?AnnId=1"><img src="../images/an.jpg" width="15" height="15" border="0"></a></td>
                    <td height="26"><a href="course.asp?AnnId=15"><span class="STYLE7">试卷及参考答案</span></a></td>
                  </tr>
                  <tr>
                    <td height="26">&nbsp;</td>
                    <td height="26">&nbsp;</td>
                  </tr>
                </table>
                <table width="100%" height="112" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><img src="../images/shuji3.jpg" width="241" height="113"></td>
                    </tr>
                  </table>
                <p>&nbsp;</p></td>
              </tr>
            </table></td>
            <td width="76%" valign="top"><table  width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="12" colspan="2" class="link3">&nbsp;</td>
                <td width="5%" rowspan="2">&nbsp;</td>
              </tr>
              <tr>
                <td height="13" colspan="2" class="link3">您现在的位置：<a href="default.asp">首页</a> -&gt;&gt;<span class="STYLE6"><%=A_Title%></span></td>
              </tr>
              <tr>
                <td width="5%">&nbsp;</td>
                <td width="90%"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="2%" height="43" valign="top">&nbsp;</td>
                      <td width="98%" height="30" align="center" valign="middle" class="link4 STYLE5"><%=A_Title%></td>
                    </tr>
                    <tr>
                      <td height="2" colspan="2" bgcolor="#EFEFEF"></td>
                    </tr>
                </table></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="380">&nbsp;</td>
                <td height="380" colspan="2" valign="top" class="link3"><%=A_Content%></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
		<td>
			<img src="../images/Spacer.gif" width="1" height="9" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="../images/Spacer.gif" width="1" height="194" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="../images/Spacer.gif" width="1" height="11" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="../images/Spacer.gif" width="1" height="38" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="../images/Spacer.gif" width="1" height="57" alt=""></td>
	</tr>
	<tr>
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

<map name="Map"><area shape="rect" coords="18,14,224,78" href="http://www.xsyu.edu.cn" target="_blank">
</map></body>
</html>