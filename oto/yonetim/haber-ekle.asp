<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->

<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>HABER EKLE</title>
</head>

<body>

	<div align="center">
<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">HABER 
			EKLE</font></td>
		</tr>
	</table></div>


	<div align="center">

	<form action="mrh-modul.asp?process=haber-banka" method="post">
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table2" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Başlık &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="baslik" size="56" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
</div>

	
	<div align="center">

	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table3" height="30">
		<tr>
			<td valign="top">
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Açıklama &nbsp; </font></td>
			<td width="31" valign="top">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;<textarea name="icerik" rows="9" cols="57" style="font-family: Tahoma; font-size: 10pt; color: #666666"></textarea></font></td>
		</tr>
	</table>
	
</div>
<p align="center">  
<input type="submit" value="EKLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
</form>
</body>

</html>