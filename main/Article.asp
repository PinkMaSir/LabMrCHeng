<!--#include file = "main.asp"-->
<%
Dim ArtClassID,FoundErr,ErrMsg
ArtClassID=Trim(Request("ArtClassID"))
If ArtClassID="" Then
	ArtClassID=0
End If
If IsNumeric(ArtClassID) = False Then
	GoError "分类ID参数错误，请不要试图破坏此系统。"
End If
If ArtClassID<>0 Then
	Set oRs=oConn.Execute("Select ClassID From NewsClass Where ClassID="&ArtClassID)
	If oRs.Eof Then
		GoError "无此栏目，请添加后再来！"
	End If
	oRs.Close
End If
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
.STYLE4 {	font-size: 12px;
	font-family: Arial, Helvetica, sans-serif;
}
.STYLE7 {color: #FF0000}
-->
</style></head>
<body background="../images/bg2.jpg">
<!--#include file = "top.html"-->
<table width="972" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="1" valign="top"  bgcolor="#DDEEF6"><!--#include file = "left.html"--><td width="1"></td>
    <td width="11"></td>
    <td width="782" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="5%">&nbsp;</td>
        <td width="90%" height="30" class="link3">您现在的位置：<a href="default.asp">首页</a>
            <%Call HoriNavi()%></td>
        <td width="5%">&nbsp;</td>
      </tr>
	  <tr>
              <td width="2%" height="43" valign="top">&nbsp;</td>
              <td width="98%" height="30" align="center" valign="middle" class="link4 STYLE7">演 示 课 件</td>
        </tr>
	  <tr>
        <td>&nbsp;</td>
        <td height="30" align="right" bgcolor="#8DB4ED" class="link3 STYLE4">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <%
If ArtClassID <>0 Then
	Dim ChildID
	sSql="Select ClassID,ClassName,ParentPath,Child From NewsClass Where ClassID="&ArtClassID
	oRs.Open sSql,oConn,1,1
	If Not oRs.Eof Then
		if oRs("ClassID")>0 then
			if oRs("Child")>0 then
				ChildID=""
				set tClass=oConn.execute("select ClassID from NewsClass where ParentID=" & oRs("ClassID") & " or ParentPath like '" & oRs("ParentPath") & "," & oRs("ClassID") & ",%'")
				do while not tClass.eof
					if ChildID="" then
						ChildID=tClass(0)
					else
						ChildID=ChildID & "," & tClass(0)
					end if
					tClass.movenext
				loop
			else
				ChildID=ArtClassID
			end if
		end if
	End If
	oRs.Close
	
	sSql="Select D_ID,D_ClassID,D_Title,D_Count,D_Time From NewsData Where d_classid in ("&ChildID&") and d_recycle=false ORDER BY d_id DESC"
Else
	sSql="Select D_ID,D_ClassID,D_Title,D_Count,D_Time From NewsData Where d_recycle=false ORDER BY d_id DESC"
End If
oRs.Open sSql,oConn,1,1

dim MaxPerPage
dim totalPut
dim CurrentPage
dim TotalPages
dim i
W_ArtRecoNum=20
MaxPerPage=W_ArtRecoNum


if not ors.eof then
	ors.MoveFirst
end if
ors.pagesize=MaxPerPage
	If trim(Request("Page"))<>"" then
		If IsNumeric(trim(Request("Page"))) = False Then
			GoError "分页参数错误，请不要试图破坏此系统。"
		End If
		CurrentPage= CLng(request("Page")) 
		If CurrentPage> ors.PageCount then
			CurrentPage = ors.PageCount 
		End If 
Else 
	CurrentPage= 1 
End If 

totalPut=ors.recordcount
if CurrentPage<>1 then
	if (currentPage-1)*MaxPerPage<totalPut then
		ors.move(currentPage-1)*MaxPerPage
		dim bookmark
		bookmark=ors.bookmark
	end if 
end if

dim n,k
if (totalPut mod MaxPerPage)=0 then
	n= totalPut \ MaxPerPage
else  
	n= totalPut \ MaxPerPage + 1  
end if


	If Not oRs.Eof Then
		Do While Not oRs.Eof and i<maxperpage
%>
              <td width="30"><div align="center"><img src="../images/zw010.gif" width="4" height="4" /></div></td>
              <td width="510" class="link3"><a href="ArticleShow.asp?ArtID=<%=oRs("D_ID")%>" title="标题：<%=oRs("D_Title")&vbcrlf%>点击次数：<%=oRs("D_Count")%>次"><%=oRs("D_Title")%></a>　<font color="#FF0000">[
                <% = formatdatetime(oRs("D_Time"),vblongdate)%>
                ]</font></td>
            </tr>
            <tr>
              <td height="3" colspan="2" background="../images/zw016.gif"></td>
            </tr>
            <%
		oRs.MoveNext
		i=i+1
		Loop
%>
            <tr>
              <td colspan="2" class="link3"><div align="center">
                  <%
	Response.Write "共<font color='#FF0000'>"&totalPut&"</font>条信息" 
          k=currentPage
		if k<>1 then
			response.write "[<b>"+"<a href='Article.asp?ArtClassID="&ArtClassID&"&page=1'>首页</a></b>] "
			response.write "[<b>"+"<a href='Article.asp?ArtClassID="&ArtClassID&"&page="&cstr(k-1)&"'>上一页</a></b>] "
		else
			Response.Write "[首页] [上一页]"
		end if
		if k<>n then
			response.write "[<b>"+"<a href='Article.asp?ArtClassID="&ArtClassID&"&page="&cstr(k+1)&"'>下一页</a></b>] "
			response.write "[<b>"+"<a href='Article.asp?ArtClassID="&ArtClassID&"&page="&cstr(n)&"'>尾页</a></b>] "
		else
			Response.Write "[下一页] [尾页]"
		end if	
		Response.Write " 页次：<font color='#ff0000'>"&currentpage&"</font>/"&n&"页 "&W_ArtRecoNum&"条信息/页"
		%>
                转到：
                <select name="select" onChange="javascript:window.location='Article.asp?ArtClassID=<%=ArtClassID%>&amp;page='+this.options[this.selectedIndex].value;">
                  <option>跳转</option>
                  <%
Dim z
For z=1 To n%>
                  <option value="<%=z%>">第<%=z%>页</option>
                  <%
Next
%>
                </select>
              </div></td>
            </tr>
            <%
	Else
%>
            <tr>
              <td width="30"><div align="center"><img src="../images/zw010.gif" width="4" height="4" /></div></td>
              <td width="510" class="link3">暂无信息！</td>
            </tr>
            <tr>
              <td height="3" colspan="2" background="../images/zw016.gif"></td>
            </tr>
            <%
	End If
oRs.Close
%>
        </table></td>
      </tr>
    </table></td>
    <td width="12">&nbsp;</td>
  </tr>
</table>
<!--#include file = "bottom.html"-->
</body>
</html>
