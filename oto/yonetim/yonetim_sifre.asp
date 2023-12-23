<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%Set mrh=Conn.Execute("SELECT * FROM yonetim WHERE id=1")%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body>

	<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">
			YÖNETİM ŞİFRE BİLGİLERİ</font></td>
		</tr>
	</table><br>
	<form action="mrh-modul.asp?process=yonetim-sifreleri" method="post">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table2" height="30">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">Kullanıcı Adınız &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="kullaniciadi" size="38" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table3" height="30">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">Parolanız &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="password" size="38" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
<p align="center"> <input type="submit" value="GÜNCELLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
</form>	
</body>

</html>