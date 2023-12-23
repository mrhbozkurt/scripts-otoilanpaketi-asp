<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%Set mrh=Conn.Execute("SELECT * FROM iletisim_bilgileri WHERE id=1")%>
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
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">
			İLETİŞİM BİLGİLERİ</font></td>
		</tr>
	</table><br>
</div>

<div align="center">

	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" bordercolor="#F7F7F7" id="table16" height="30">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">Firma 
			Adı &nbsp;
			</font></td><form action="mrh-modul.asp?process=iletisim-bilgileri" method="post">
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="firmaadi" size="38" value="<%=mrh("firmaadi")%>" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table2" height="127">
		<tr>
			<td valign="top">
			<p align="right"><font size="2" face="Tahoma" color="#666666">Adres&nbsp;&nbsp;
			</font></td>
			<td width="24" valign="top">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="502" valign="top"><font color="#666666">&nbsp;</font><textarea name="adres" rows="7" cols="41" style="font-family: Tahoma; font-size: 10pt; color: #666666"><%=mrh("adres")%></textarea></td>
		</tr>
	</table>
</div>

	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" bordercolor="#F7F7F7" id="table12" height="30">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">Telefon1 &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="tel1" size="38" value="<%=mrh("tel1")%>" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" bordercolor="#F7F7F7" id="table13" height="30">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">Telefon2 &nbsp; 
			</font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="tel2" size="38" value="<%=mrh("tel2")%>" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" bordercolor="#F7F7F7" id="table14" height="30">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">Fax &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="512"><font color="#666666">&nbsp;</font><input name="fax" size="38" value="<%=mrh("fax")%>" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" bordercolor="#F7F7F7" id="table15" height="30">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">&nbsp;Site E-mail'i&nbsp;&nbsp;
			</font></td>
			<td width="30">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="siteemail" size="38" value="<%=mrh("siteemail")%>" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>

	<p align="center"> <input type="submit" value="GÜNCELLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
</form>
	</body>

</html>