<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
Set emrahbozkurt = baglanti.Execute("select * from iletisim_formu where id="&Request.QueryString("iletisim")&" Order by id asc" ) 
Session("adsoyad")
%>
<html>

<head>
<title>İletişim Gelen Kutusu</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body>

<div align="center">
	<div align="left">
	<table border="0" width="96%" id="table1" cellpadding="0" style="border-collapse: collapse" bordercolor="#F7F7F7" height="24">
		<tr>
			<td nowrap><font size="2" face="Verdana" color="#666666">&nbsp;Adsoyad</font></td>
			<td width="13" nowrap>
			<p align="center"><font size="2" face="Verdana" color="#666666">:</font></td>
			<td width="851" nowrap><font size="2" face="Tahoma" color="#333333">&nbsp;<%=emrahbozkurt("adsoyad")%></font></td>
		</tr>
	</table>
	</div>
	<hr color="#CCCCCC" width="96%" size="1" align="left">
</div>

<div align="left">
	<table border="0" width="96%" id="table2" cellpadding="0" style="border-collapse: collapse" bordercolor="#F7F7F7" height="24">
		<tr>
			<td nowrap><font size="2" face="Verdana" color="#666666">&nbsp;E-mail</font></td>
			<td width="14" nowrap>
			<p align="center"><font size="2" face="Verdana" color="#666666">:</font></td>
			<td width="850" nowrap><font size="2" face="Tahoma" color="#333333">&nbsp;<%=emrahbozkurt("email")%></font></td>
		</tr>
	</table>
</div>

<hr color="#CCCCCC" width="96%" size="1" align="left">

<div align="left">
	<table border="0" width="96%" id="table3" cellpadding="0" style="border-collapse: collapse" bordercolor="#F7F7F7" height="24">
		<tr>
			<td nowrap><font size="2" face="Verdana" color="#666666">&nbsp;Telefon</font></td>
			<td width="13" nowrap>
			<p align="center"><font size="2" face="Verdana" color="#666666">:</font></td>
			<td width="850" nowrap><font size="2" face="Tahoma" color="#333333">&nbsp;<%=emrahbozkurt("tel")%></font></td>
		</tr>
	</table>
</div>

<hr color="#CCCCCC" width="96%" size="1" align="left">

<div align="center">
	<div align="left">
	<table border="0" width="96%" id="table4" cellpadding="0" style="border-collapse: collapse" bordercolor="#F7F7F7" height="24">
		<tr>
			<td nowrap><font size="2" face="Verdana" color="#666666">&nbsp;Fax</font></td>
			<td width="12" nowrap>
			<p align="center"><font size="2" face="Verdana" color="#666666">:</font></td>
			<td width="851" nowrap><font size="2" face="Tahoma" color="#333333">&nbsp;<%=emrahbozkurt("fax")%></font></td>
		</tr>
	</table>

	</div>

<hr color="#CCCCCC" width="96%" size="1" align="left">

<div align="left">
	<table border="0" width="96%" id="table6" cellpadding="0" style="border-collapse: collapse" bordercolor="#F7F7F7" height="24">
		<tr>
			<td nowrap><font size="2" face="Verdana" color="#666666">&nbsp;Gsm</font></td>
			<td width="12" nowrap>
			<p align="center"><font size="2" face="Verdana" color="#666666">:</font></td>
			<td width="851" nowrap><font size="2" face="Tahoma" color="#333333">&nbsp;<%=emrahbozkurt("gsm")%></font></td>
		</tr>
	</table>
</div>

</div>

<hr color="#CCCCCC" width="96%" size="1" align="left">

<div align="left">
	<table border="0" width="96%" id="table5" cellpadding="0" style="border-collapse: collapse" bordercolor="#F7F7F7" height="24">
		<tr>
			<td nowrap><font size="2" face="Verdana" color="#666666">&nbsp;Mesaj</font></td>
			<td width="13" nowrap>
			<p align="center"><font size="2" face="Verdana" color="#666666">:</font></td>
			<td width="851" nowrap><font size="2" face="Tahoma" color="#333333">&nbsp;<%=emrahbozkurt("mesaj")%></font></td>
		</tr>
	</table>
</div>

<hr color="#CCCCCC" width="96%" size="1" align="left">

<div align="left">
	<table border="0" width="96%" id="table7" cellpadding="0" style="border-collapse: collapse" bordercolor="#F7F7F7" height="24">
		<tr>
			<td nowrap><font size="2" face="Verdana" color="#666666">&nbsp;Gönderilen 
			Tarih</font></td>
			<td width="13" nowrap>
			<p align="center"><font size="2" face="Verdana" color="#666666">:</font></td>
			<td width="851" nowrap><font size="2" face="Tahoma" color="#333333">&nbsp;<%=emrahbozkurt("tarih")%></font></td>
		</tr>
	</table>
</div>

<p align="center">
<input class="noPrint" type="button" value="Yazdır" onclick="window.print()" style="border: 1px solid #C0C0C0; background-color: #F7F7F7; font-family:Verdana; font-size:10pt; color:#CC3300"></p>

</body>

</html>