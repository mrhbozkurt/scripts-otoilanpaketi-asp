<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
Set ali = Server.CreateObject("ADODB.Recordset")
sql = "Select * from oto_talep id order by id desc"
ali.Open sql,baglanti,1,3
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
function popUp(URL) {
day = new Date();
id = day.getTime();
eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,width=900,height=500,left = 0,top = 0');");
}
// End -->
</script>
</head>

<body>

<div align="center">

<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">
			OTO TALEP FORMUNDAN GELEN BİLGİLER</font></td>
		</tr>
	</table><%
if ali.eof or ali.bof then
response.write " Gelen Mesaj Bulunamadı .. "
else
%>
<%
i=1
do while i < 10000000000 and not ali.eof
%><hr color="#CCCCCC" width="97%" size="1">
<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#F4F4F4" id="table2">
	<tr>
		<td width="39"><font size="2" face="Verdana" color="#999966">&nbsp;<%=i%></font></td>
		<td width="82"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Gönderen</font></td>
		<td width="9">
		<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
		<td width="624"><font size="2" face="Tahoma" color="#333333">&nbsp;</font><font size="2" face="Tahoma" color="#808080"><A HREF="javascript:popUp('ototalep-gelen-ayrinti.asp?ototalep=<%=ali("id")%>')" style="text-decoration: none"><font color="#333333"><%=ali("adsoyad")%></font></A></font></td>
		<td>
		<p align="left"><font size="2" face="Tahoma" color="#CC3300">
		<a href="mrh-modul.asp?process=ototalep-sil&id=<%=ali("id")%>" style="text-decoration: none"><img alt="Sil" border="0" src="images/sil.gif" width="16" height="16"></a></font></td>
	</tr>
</table>

<hr color="#CCCCCC" width="97%" size="1"><%
ali.movenext
i=i+1
Loop
END IF
%>

</body>

</html>