<!--#include file = "main.asp"-->
<%
Dim ArtID,ArtClassID,D_Title,D_Content,D_Time,D_Count,FoundErr,ErrMsg,D_Source,D_Author
ArtID=Trim(Request("ArtID"))
If IsNumeric(ArtID) = False Then
	GoError "文章ID参数错误，请不要试图破坏此系统。"
End If

'文章阅读记数
sSql="Select D_Count From NewsData Where D_ID="&ArtID
oRs.Open sSql,oConn,1,1
If Not oRs.Eof Then
oConn.execute "update NewsData set D_Count=D_Count+1 where D_ID="&ArtID
End If
oRs.Close

sSql="Select D_Title,D_Author,D_Source,D_Content,D_Time,D_Count,D_ClassID From NewsData Where D_ID="&ArtID
oRs.Open sSql,oConn,1,1
If Not oRs.Eof Then
D_Title=oRs("D_Title")
D_Author=oRs("D_Author")
D_Source=oRs("D_Source")
D_Content=oRs("D_Content")
D_Time=oRs("D_Time")
D_Count=oRs("D_Count")
ArtClassID=oRs("D_ClassID")
Else
	FoundErr=True
	ErrMsg=ErrMsg & "<br><li>无此文章信息或已被删除！</li>"
End If
oRs.Close
if FoundErr=True then
	WriteErrMsg()
	Response.End
End If
WebTitle=D_Title
%>		
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../Css.css" rel="stylesheet" type="text/css">
<title>渗流力学精品课程网站</title>
<style type="text/css">
<!--
body {
	margin-top: 0px;
	background-image:url(../images/bg2.jpg)
}
.STYLE3 {font-size: 14px}
.STYLE4 {	font-size: 12px;
	font-family: Arial, Helvetica, sans-serif;
}
.STYLE5 {color: #3B9FC1}
-->
</style>
<script type="text/JavaScript">
<!--
function MM_callJS(jsStr) { //v2.0
  return eval(jsStr)
}
//-->
</script>
</head>
<body background="../images/bg2.jpg">
<!--#include file = "top.html"-->
<table width="972" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="1" valign="top"  bgcolor="#DDEEF6"><!--#include file = "left.html"--><td width="1"></td>
    <td width="11"></td>
    <td width="782" valign="top"><table width="90%"  border="0" align="center" cellpadding="3" cellspacing="0" style="table-layout:fixed;word-break:break-all;">
      <tr>
        <td><img src="../images/zw000.gif" width="1" height="5" /></td>
      </tr>
      <tr>
        <td class="link3">您现在的位置：<a href="default.asp">首页</a>
          <%
Call HoriNavi()
%></td>
      </tr>
      <tr>
        <td><img src="../images/zw000.gif" width="1" height="8" /></td>
      </tr>
      <tr>
        <td class="link4" style="font-size:12pt;color=#FF0000;" color="#FF0000"><div align="center"><%=D_Title%></div></td>
      </tr>
      <tr>
        <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
        </table></td>
      </tr>
     <tr>
        <td height="30" align="right" bgcolor="#8DB4ED" class="link3 STYLE4">&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td class="link3">&nbsp;</td>
              <td class="link3"><div align="right">文字 〖 <a href="javascript:doZoom(16)" class="tt1">大</a> <a href="javascript:doZoom(14)" class="tt1">中</a> <a href="javascript:doZoom(12)" class="tt1">小</a> 〗
                <input type="checkbox" name="auto" value="on" onClick="MM_callJS('scroller() ; ')" />
                自动滚屏（右键暂停）</div></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td height="20" class="link3">&nbsp;</td>
      </tr>
      <tr>
        <td class="link3"><font id="zoom"><%=D_Content%></font></td>
      </tr>
      <tr>
        <td height="20" class="link3">&nbsp;</td>
      </tr>
      <tr>
        <td><hr width="100%" size="1" noshade="noshade" color="#CCCCCC" /></td>
      </tr>
      <tr>
        <td class="link3"><li>上一个：
            <%
	  sSql="Select Top 1 d_id,d_classid,d_Title From NewsData Where D_Recycle=False and D_ID>" & ArtID &"and d_classid="&ArtClassID&" ORDER BY D_ID"
	  oRs.open sSql,oConn,1,1
	  if oRs.Eof then
	  	response.write "没有了"
	  else
	  	response.write "<a href='ArticleShow.asp?ArtID="&oRs("D_ID")&"'>"&oRs("D_Title") & "</a>"
	  end if
	  oRs.close
	  %>
        </li></td>
      </tr>
      <tr>
        <td><li class="link3"> 下一个：
            <%
	  sSql="Select Top 1 d_id,d_classid,d_Title From NewsData Where D_Recycle=False and D_ID<" & ArtID &"and d_classid="&ArtClassID&" ORDER BY D_ID DESC"
	  oRs.open sSql,oConn,1,1
	  if oRs.Eof then
	  	response.write "没有了"
	  else
	  	response.write "<a href='ArticleShow.asp?ArtID="&oRs("D_ID")&"'>"&oRs("D_Title") & "</a>"
	  end if
	  oRs.close
	  %>
        </li></td>
      </tr>
      <tr>
        <td><hr width="100%" size="1" noshade="noshade" color="#cccccc" /></td>
      </tr>
    </table></td>
    <td width="12">&nbsp;</td>
  </tr>
</table>
<!--#include file = "bottom.html"-->
</body>
</html>
