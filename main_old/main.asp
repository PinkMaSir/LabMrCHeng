<!--#include file = "../admin/Check_SI.asp"-->
<!--#include file = "../admin/Startup.asp"-->
<!-- #include file="../admin/Function.asp" -->
<%
' ==============================================================
'文章横向导航提示
' ==============================================================
Sub HoriNavi()
'Response.Write " -&gt;&gt; <a href='Article.asp'>"&W_ArtCataName&"</a>"
If ArtClassID<>0 Then
	dim zClassID,zClassName,zParentPath,ParentPath1
	sSql="Select ClassID,ClassName,ParentPath From NewsClass Where ClassID="&ArtClassID
	oRs.Open sSql,oConn,1,1
	If Not oRs.Eof Then
		zClassID=oRs("ClassID")
		zParentPath=oRs("ParentPath")
		zClassName=oRs("ClassName")
	End If
	oRs.Close
	If zParentPath<>0 Then
		zParentPath=Replace(zParentPath,"0,","")
		sSql="Select ClassID,ClassName,ParentPath From NewsClass Where ClassID in ("&zParentPath&")"
		oRs.Open sSql,oConn,1,1
		Do While Not oRs.Eof
			Response.Write " -&gt;&gt; <a href='Article.asp?ArtClassID="&oRs("ClassID")&"'>"&oRs("ClassName")&"</a>"
			oRs.MoveNext
		Loop
		oRs.Close
	End If
	Response.Write " -&gt;&gt; <a href='Article.asp?ArtClassID="&zClassID&"'>"&zClassName&"</a>"
End If

End Sub
%>
<%
' ==============================================================
'成果展示
' ==============================================================
Sub Pro()
Dim zRs,zSql
Set zRs=Server.CreateObject("ADODB.Recordset")
zSql="Select A_ID,A_Title From Production "
zRs.Open zSql,oConn,1,1
%>			  
			  
			  <table width="100%"  border="0" align="left" cellpadding="0" cellspacing="0">
<%
If Not zRs.Eof Then
	Do While Not zRs.Eof
%>
				<td height="30" align="center" valign="center"bgColor=#8DB4ED  onmouseover="this.bgColor='#FFFFFF';"onmouseout="this.bgColor='#8DB4ED';"><a href="Pro.asp?AnnID=<%=zRs("A_ID")%>"><%=gotTopic(zRs("A_Title"),21)%></a></td>
<%
	zRs.MoveNext
	Loop
End If
zRs.Close
%>
</table>
<%
End Sub
%>

<%
' ==============================================================
' 教学文件
' ==============================================================
Sub File()
Dim zRs,zSql
Set zRs=Server.CreateObject("ADODB.Recordset")
zSql="Select A_ID,A_Title From File "
zRs.Open zSql,oConn,1,1
%>			  
			  
			  <table width="100%"  border="0" align="left" cellpadding="0" cellspacing="0">
<%
If Not zRs.Eof Then
	Do While Not zRs.Eof
%>
				<td height="30" align="center" valign="center"bgColor=#8DB4ED  onmouseover="this.bgColor='#FFFFFF';"onmouseout="this.bgColor='#8DB4ED';"><a href="File.asp?AnnID=<%=zRs("A_ID")%>"><%=gotTopic(zRs("A_Title"),21)%></a></td>
<%
	zRs.MoveNext
	Loop
End If
zRs.Close
%>
</table>
<%
End Sub
%>
<%
' ==============================================================
' 教材教参
' ==============================================================
Sub Book()
Dim zRs,zSql
Set zRs=Server.CreateObject("ADODB.Recordset")
zSql="Select A_ID,A_Title From Book "
zRs.Open zSql,oConn,1,1
%>			  
			  
			  <table width="100%"  border="0" align="left" cellpadding="0" cellspacing="0">
<%
If Not zRs.Eof Then
	Do While Not zRs.Eof
%>
				<td height="30" align="center" valign="center"bgColor=#FFFFFF  onmouseover="this.bgColor='#8DB4ED';"onmouseout="this.bgColor='#FFFFFF';"><a href="Book.asp?AnnID=<%=zRs("A_ID")%>"><%=gotTopic(zRs("A_Title"),21)%></a></td>
<%
	zRs.MoveNext
	Loop
End If
zRs.Close
%>
</table>
<%
End Sub
%>

<%
' ==============================================================
' 教学队伍
' ==============================================================
Sub Teacher()
Dim zRs,zSql
Set zRs=Server.CreateObject("ADODB.Recordset")
zSql="Select A_ID,A_Title From Teacher "
zRs.Open zSql,oConn,1,1
%>			  
			  
			  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
<%
If Not zRs.Eof Then
	Do While Not zRs.Eof
%>
				<td height="30" align="center" valign="center"bgColor=#8DB4ED  onmouseover="this.bgColor='#FFFFFF';"onmouseout="this.bgColor='#8DB4ED';"><a href="Teacher.asp?AnnID=<%=zRs("A_ID")%>"><%=gotTopic(zRs("A_Title"),21)%></a></td>
<%
	zRs.MoveNext
	Loop
End If
zRs.Close
%>
</table>
<%
End Sub
%>

<%
' ==============================================================
' 教学录像
' ==============================================================
Sub Video()
Dim zRs,zSql
Set zRs=Server.CreateObject("ADODB.Recordset")
zSql="Select A_ID,A_Title From Video "
zRs.Open zSql,oConn,1,1
%>			  
			  
			  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
<%
If Not zRs.Eof Then
	Do While Not zRs.Eof
%>
				<td height="30" align="center" valign="center"bgColor=#8DB4ED  onmouseover="this.bgColor='#FFFFFF';"onmouseout="this.bgColor='#8DB4ED';"><a href="Video.asp?AnnID=<%=zRs("A_ID")%>"><%=gotTopic(zRs("A_Title"),21)%></a></td>
<%
	zRs.MoveNext
	Loop
End If
zRs.Close
%>
</table>
<%
End Sub
%>

<%
' ==============================================================
' 实践指导
' ==============================================================
Sub Tutor()
Dim zRs,zSql
Set zRs=Server.CreateObject("ADODB.Recordset")
zSql="Select A_ID,A_Title From Tutor "
zRs.Open zSql,oConn,1,1
%>			  
			  
			  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
<%
If Not zRs.Eof Then
	Do While Not zRs.Eof
%>
				<td height="30" align="center" valign="center"bgColor=#8DB4ED  onmouseover="this.bgColor='#FFFFFF';"onmouseout="this.bgColor='#8DB4ED';"><a href="Tutor.asp?AnnID=<%=zRs("A_ID")%>"><%=gotTopic(zRs("A_Title"),21)%></a></td>
<%
	zRs.MoveNext
	Loop
End If
zRs.Close
%>
</table>
<%
End Sub
%>

<%
' ==============================================================
' 负责人介绍
' ==============================================================
Sub Principal()
Dim zRs,zSql
Set zRs=Server.CreateObject("ADODB.Recordset")
zSql="Select A_ID,A_Title From Principal "
zRs.Open zSql,oConn,1,1
%>			  
			  
			  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
<%
If Not zRs.Eof Then
	Do While Not zRs.Eof
%>
				<td height="30" align="center" valign="center"bgColor=#8DB4ED  onmouseover="this.bgColor='#FFFFFF';"onmouseout="this.bgColor='#8DB4ED';"><a href="Principal.asp?AnnID=<%=zRs("A_ID")%>"><%=gotTopic(zRs("A_Title"),21)%></a></td>
<%
	zRs.MoveNext
	Loop
End If
zRs.Close
%>
</table>
<%
End Sub
%>

<%
' ==============================================================
' 教学条件
' ==============================================================
Sub Condition()
Dim zRs,zSql
Set zRs=Server.CreateObject("ADODB.Recordset")
zSql="Select A_ID,A_Title From Condition "
zRs.Open zSql,oConn,1,1
%>			  
			  
			  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
<%
If Not zRs.Eof Then
	Do While Not zRs.Eof
%>
				<td height="30" align="center" valign="center"bgColor=#8DB4ED  onmouseover="this.bgColor='#FFFFFF';"onmouseout="this.bgColor='#8DB4ED';"><a href="Condition.asp?AnnID=<%=zRs("A_ID")%>"><%=gotTopic(zRs("A_Title"),21)%></a></td>
<%
	zRs.MoveNext
	Loop
End If
zRs.Close
%>
</table>
<%
End Sub
%>
<%
' ==============================================================
' 在线答疑
' ==============================================================
Sub Answer()
Dim zRs,zSql
Set zRs=Server.CreateObject("ADODB.Recordset")
zSql="Select top 5 * From topic where sh=1 order by addTime desc "
zRs.Open zSql,oConn,1,1
%>			  
			  
			  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
<%
If Not zRs.Eof Then
	Do While Not zRs.Eof
%>
				<tr>
				<td width="9%" height="20" align="center" valign="center"><img src="../images/friend_point.jpg" width="3" height="3" /></td>
				<td width="61%" height="20" align="left" valign="center"><a href="Online_co.asp?id=<%=zRs("id")%>"><%=gotTopic(zRs("title"),80)%></a></td>
				<td width="30%" height="20" class="link3"><% = formatdatetime(zRs("addTime"),vblongdate)%></td></tr>
<%
	zRs.MoveNext
	Loop
End If
zRs.Close
%>
			<tr>
              <td colspan="3" align="right"><a href="Online.asp" class="a2">&gt;&gt;&nbsp;更多&nbsp;&nbsp;</a></td>
            </tr>		
</table>
<%
End Sub
%>


<%
' ==============================================================
'首页内容形式
' ==============================================================
Sub Content(AnnID,Strlen)
sSql="Select A_Title,A_Content,A_AddTime From Course Where A_ID="&AnnID
oRs.Open sSql,oConn,1,1
If Not oRs.Eof Then
A_Title=oRs("A_Title")
A_Content=Left(oRs("A_Content"),Strlen)
A_AddTime=oRs("A_AddTime")
Else
	FoundErr=True
	ErrMsg=ErrMsg & "<br><li>无此栏目信息或已被删除！</li>"
End If
oRs.Close
if FoundErr=True then
	WriteErrMsg()
	Response.End
End If
WebTitle=A_Title

%>
<table width="100%" height="145" border="0" cellspacing="0" cellpadding="0" >
	<tr>
	<td width="98%" colspan="2"  valign="top"  class="link3"><br/>
	  <%=A_Content%>...</td>
	</tr>			
	<tr>
	<td height="13" align="right"  valign="top" ><font id="zoom"><a href="Course.asp?AnnID=<%=AnnID%>">详细内容&gt;&gt;</a> </font>&nbsp;&nbsp;</td>
	</tr>
</table>
<%
oRs.Close
End Sub
%>
<%
' ==============================================================
' 最新公告
' ==============================================================
Sub Announce()
Dim zRs,zSql
Set zRs=Server.CreateObject("ADODB.Recordset")
zSql="Select top 5 * From Announce order by A_AddTime desc "
zRs.Open zSql,oConn,1,1
%>			  
			  
			  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0"><tr>
<%
If Not zRs.Eof Then
	Do While Not zRs.Eof
%>
				<td height="20" align="left" valign="center"><a href="Announce.asp?AnnID=<%=zRs("A_ID")%>"><%=gotTopic(zRs("A_Title"),24)%></a></td>
<%
	zRs.MoveNext
	Loop
End If
zRs.Close
%>
</tr></table>
<%
End Sub
%>