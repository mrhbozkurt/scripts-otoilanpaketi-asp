<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
Set ali = Server.CreateObject("ADODB.Recordset")
sql = "Select * from haber_banka_bilgileri order by id desc"
ali.Open sql,baglanti,1,3
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body>

<div align="center">

<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">YAYINDA OLAN HABERLER</font></td>
		</tr>
	</table></div>
<p align="center"><font size="2" face="Tahoma" color="#CC3300"><%
if ali.eof or ali.bof then
response.write " Haber Bulunamadı .. "
else
%></font>
<%
i=1
do while i < 10000000000 and not ali.eof
%>
</p>
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table2" height="24">
		<tr>
			<td width="20"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=i%></font></td>
			<td width="705"><font size="2" face="Tahoma" color="#666666">&nbsp;<%=ali("baslik")%></font></td>
			<td>
			<p align="center">
			<font size="2" face="Tahoma" color="#CC3300"><a href="haber-banka-duzenle.asp?process=haber_banka_bilgileri&id=<%=ali("id")%>" style="text-decoration: none"><font color="#CC3300"><img alt="Düzenle" border="0" src="images/edit.gif" width="16" height="16"></font></a></font></td>
			<td width="105">
			<p align="center">
			<font size="2" face="Tahoma" color="#CC3300"><a href="mrh-modul.asp?process=haber-banka-sil&id=<%=ali("id")%>"><span style="text-decoration: none"><font color="#CC3300"><img alt="Sil" border="0" src="images/sil.gif" width="16" height="16"></font></span></a></font></td><%
ali.movenext
i=i+1
Loop
END IF
%>
		</tr>
	</table>
</div>

</body>

</html>