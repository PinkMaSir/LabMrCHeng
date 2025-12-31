<!--#include file="../admin/Startup.asp"-->
<%
action=request.QueryString("action")
title = request.Form("title")
content = request.Form("content")

if title="" then
	response.Write("<script type='text/javascript'>alert('标题不能为空!');history.back();</script>")
	response.End()
end if
if content="" then
	response.Write("<script type='text/javascript'>alert('内容不能为空!');history.back();</script>")
	response.End()
end if

if action="dayi" then
	sSql="Select * from topic"
	Set oRs=Server.CreateObject("ADODB.RecordSet")
	oRs.open sSql,oConn,1,3
	oRs.addnew
		oRs("Title")=title
		oRs("content")=content
		oRs("addTime")=now()
	oRs.update
	oRs.close
	Set oRs=nothing

end if
oConn.close
Set oConn=nothing
response.Write "<script language=javascript> window.alert('留言成功！请等待回复！');location.href='Online.asp'</script>"

%>
