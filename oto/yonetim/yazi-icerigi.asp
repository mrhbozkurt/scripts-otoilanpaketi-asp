<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%Set emrahbozkurt=Conn.Execute("SELECT * FROM site_ayarlari WHERE id=1")%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">

</head>

<body topmargin="9">

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font size="2" face="Tahoma" color="#FFFFFF">SİTE 
			YAZI İÇERİĞİ</font></td>
		</tr>
	</table>
</div>
<div align="center">
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F7F7F7" id="table2" height="31">
		<tr><form action="mrh-modul.asp?process=yazi_icerigi" method="post">
			<td>
			<p align="right"><font size="2" face="Tahoma">&nbsp;Site Adresi&nbsp;&nbsp;
			</font></td>
			<td width="20">
			<p align="center"><font size="2" face="Tahoma">:</font></td>
			<td width="523">&nbsp;<input type="text" name="siteadresi" size="31" value="<%=emrahbozkurt("siteadresi")%>" style="font-family: Tahoma; font-size: 10pt; color: #993333">&nbsp;
			<font size="2" face="Tahoma"><font color="#993333">Örnek :</font>
			<font color="#666666">www.emrahbozkurt.com</font></font></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F7F7F7" id="table3" height="31">
		<tr><form action="mrh-modul?process=yazi_icerigi" method="post">
			<td>
			<p align="right"><font size="2" face="Tahoma">&nbsp;&nbsp;Site Başlığı&nbsp;&nbsp;
			</font></td>
			<td width="20">
			<p align="center"><font size="2" face="Tahoma">:</font></td>
			<td width="523">&nbsp;<input type="text" name="sitebasligi" size="31" value="<%=emrahbozkurt("sitebasligi")%>" style="font-family: Tahoma; font-size: 10pt; color: #993333">&nbsp;
			<font size="2" face="Tahoma"><font color="#993333">Örnek :</font>
			</font><font face="Tahoma" size="2" color="#666666">emrahbozkurt.com 
			İnternet Hizmetleri</font></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F7F7F7" id="table4" height="31">
		<tr><form action="mrh-modul?process=yazi_icerigi" method="post">
			<td valign="top">
			<p align="right"><font size="2" face="Tahoma">&nbsp;&nbsp;Site Arama 
			Kelimeleri&nbsp;&nbsp;
			</font></td>
			<td width="20" valign="top">
			<p align="center"><font size="2" face="Tahoma">:</font></td>
			<td width="523">&nbsp;<textarea name="aranacak" rows="7" cols="41" style="font-family: Tahoma; font-size: 10pt; color: #993333"><%=emrahbozkurt("aranacak")%></textarea>&nbsp; </td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F7F7F7" id="table5" height="31">
		<tr><form action="mrh-modul?process=yazi_icerigi" method="post">
			<td valign="top">
			<p align="right"><font size="2" face="Tahoma">&nbsp;&nbsp;Site Açıklaması&nbsp;&nbsp;
			</font></td>
			<td width="20" valign="top">
			<p align="center"><font size="2" face="Tahoma">:</font></td>
			<td width="523">&nbsp;<textarea name="aciklama" rows="7" cols="41" style="font-family: Tahoma; font-size: 10pt; color: #993333"><%=emrahbozkurt("aciklama")%></textarea>&nbsp; </td>
		</tr>
	</table>
</div>
<p align="center">&nbsp;<input type="submit" value="GÜNCELLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
</form>
</body>

</html>