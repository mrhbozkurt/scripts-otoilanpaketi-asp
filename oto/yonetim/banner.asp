<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
Set ali = Server.CreateObject("ADODB.Recordset")
sql = "Select * from banner id order by id asc"
ali.Open sql,baglanti,1,3
%>

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
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">BANNER 
			EKLE</font></td>
		</tr>
	</table></div>


	<div align="center">

	<form action="mrh-modul.asp?process=banner" method="post" name="bannerlar">
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table2" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Banner Başlığı &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="banner_baslik" size="56" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table8" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Banner 
			Linki &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="banner_linki" size="56" style="font-family: Tahoma; font-size: 10pt; color: #666666" value="http://www."></td>
		</tr>
	</table>
	
</div>

	
	<div align="center">

	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table3" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Boyut &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><font size="2" face="Tahoma" color="#CC3300">Width 
			(Genişlik)&nbsp;&nbsp;&nbsp; :</font><font color="#666666"> </font>
			<input name="genislik" size="11" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<font size="2" face="Tahoma" color="#666666">Pixels</font></td>
		</tr>
	</table>
	
	
	<div align="center">

	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table4" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Boyut &nbsp; 
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666"&nbsp;</font><font size="2" face="Tahoma" color="#CC3300">&nbsp;Heigth 
			(Yükseklik) :</font><font color="#666666"> </font>
			<input name="yukseklik" size="11" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<font size="2" face="Tahoma" color="#666666">Pixels</font></td>
		</tr>
	</table>
	
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" height="29" bordercolor="#F7F7F7" id="table5">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Banner&nbsp;&nbsp;&nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="513">&nbsp;<input type="text" name="banner" size="30"><a ONCLICK="window.open('banner-yukle.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
			<font color="#CC3300" size="2" face="Verdana">&nbsp;Gözat</font></a></td>
		</tr>
	</table>
</div>

</div>
	
</div>
<p align="center">  
<input type="submit" value="EKLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"><br>
&nbsp;</p>
</form>

	<div align="center">
<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table6" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">
			YAYINDA OLAN BANNERLAR</font></td>
		</tr>
	</table></div><br>
	<div align="center">
	<%
if ali.eof or ali.bof then
response.write " Banner Bulunamadı .. "
else
%>
<%
i=1
do while i < 10000000000 and not ali.eof
%>
		<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" height="17" bordercolor="#F7F7F7" id="table7">
			<tr>
				<td><font size="2" face="Tahoma" color="#CC3300">
				<a href="<%=ali("banner")%>"target="_blank" style="text-decoration: none">
				<font color="#CC3300">&nbsp;<%=ali("banner_baslik")%></font></a></font></td>
				<td width="113"><font size="2" face="Tahoma" color="#CC3300">
		<a href="mrh-modul.asp?process=banner-sil&id=<%=ali("id")%>" style="text-decoration: none"><img alt="Sil" border="0" src="images/sil.gif" width="16" height="16"></a></font></td>
			</tr>
		</table><%
ali.movenext
i=i+1
Loop
END IF
%>
<br><br>
</div>
</body>

</html>