<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
Set emrahbozkurt = baglanti.Execute("select * from oto_talep where id="&Request.QueryString("ototalep")&" Order by id asc" ) 
Session("adsoyad")
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>Oto Talep Form Bilgileri</title>
</head>

<body>

													<table border="1" cellpadding="0" style="border-collapse: collapse" width="97%" height="24" bordercolor="#E7E7E7" id="table2">
														<tr>
															<td style="font-family: arial,sans-serif; color: #000">&nbsp;<font size="2" face="Tahoma" color="#CC3300">Kişisel 
															Bilgileriniz</font></td>
														</tr>
													</table>
													<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" height="89" bordercolor="#F7F7F7" id="table1">
														<tr>
															<td>
															<font size="2" face="Tahoma" color="#666666">&nbsp;Ad 
															Soyad</font></td>
															<td width="24">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("adsoyad")%></font></td>
		</tr>
		<tr>
			<td>&nbsp;<font size="2" face="Tahoma" color="#666666">E-mail</font></td>
		<td width="24">
		<p align="center">:</td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("email")%></font></td>
	</tr>
	<tr>
		<td>&nbsp;<font size="2" face="Tahoma" color="#666666">Telefon</font></td>
		<td width="24">
		<p align="center">:</td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("tel")%></font></td>
	</tr>
	<tr>
		<td>&nbsp;<font size="2" face="Tahoma" color="#666666">Gsm</font></td>
		<td width="24">
		<p align="center">:</td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("gsm")%></font></td>
	</tr>
</table><br>
													<table border="1" cellpadding="0" style="border-collapse: collapse" width="97%" height="24" bordercolor="#E7E7E7" id="table3">
														<tr>
															<td style="font-family: arial,sans-serif; color: #000">&nbsp;<font face="Tahoma" size="2" color="#CC3300">Otomobil 
															Özellikleri</font></td>
														</tr>
													</table>
													
													<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" height="247" bordercolor="#F7F7F7" id="table4">
														<tr>
															<td>
															<font size="2" face="Tahoma" color="#666666">&nbsp;Marka</font></td>
															<td width="25" align="center">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("marka")%></font></td>
		</tr>
		<tr>
			<td><font size="2" face="Tahoma" color="#666666">&nbsp;Model</font></td>
		<td width="25" align="center">
		<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("model")%></font></td>
	</tr>
	<tr>
		<td><font size="2" face="Tahoma" color="#666666">&nbsp;Model Yılı</font></td>
		<td width="25" align="center">
		<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("modelyili")%></font></td>
	</tr>
	<tr>
		<td><font size="2" face="Tahoma" color="#666666">&nbsp;Kullanım</font></td>
		<td width="25" align="center">
		<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("kullanim")%></font></td>
	</tr>
	<tr>
		<td><font size="2" face="Tahoma" color="#666666">&nbsp;Yakıt</font></td>
		<td width="25" align="center">
		<font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("yakit")%></font></td>
	</tr>
	<tr>
		<td><font size="2" face="Tahoma" color="#666666">&nbsp;Vites</font></td>
		<td width="25" align="center">
		<font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("vites")%></font></td>
	</tr>
	<tr>
		<td><font size="2" face="Tahoma" color="#666666">&nbsp;Renk</font></td>
		<td width="25" align="center">
		<font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("renk")%></font></td>
	</tr>
	<tr>
		<td><font size="2" face="Tahoma" color="#666666">&nbsp;Kapı Sayısı</font></td>
		<td width="25" align="center">
		<font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("kapisayisi")%></font></td>
	</tr>
	<tr>
		<td><font size="2" face="Tahoma" color="#666666">&nbsp;Hasar Durumu</font></td>
		<td width="25" align="center">
		<font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("hasardurumu")%></font></td>
	</tr>
	<tr>
		<td><font size="2" face="Tahoma" color="#666666">&nbsp;Motor Gücü</font></td>
		<td width="25" align="center">
		<font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("motorgucu")%></font></td>
	</tr>
	<tr>
		<td><font size="2" face="Tahoma" color="#666666">&nbsp;Fiyat Aralığı</font></td>
		<td width="25" align="center">
		<font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("fiyat1")%>&nbsp; -&nbsp; <%=emrahbozkurt("fiyat2")%>&nbsp; <%=emrahbozkurt("kur")%></font></td>
	</tr>
	<tr>
		<td valign="top"><font size="2" face="Tahoma" color="#666666">&nbsp;Diğer Özellikler</font></td>
		<td width="25" align="center" valign="top">
		<font size="2" face="Tahoma" color="#666666">:</font></td>
		<td width="662" valign="top">
		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=emrahbozkurt("digerozellikler")%></font></td>
	</tr>
</table>
													
													<p>
<input class="noPrint" type="button" value="Yazdır" onclick="window.print()" style="border: 1px solid #C0C0C0; background-color: #F7F7F7; font-family:Verdana; font-size:10pt; color:#CC3300"></p>
													
</body>

</html>