<% @Language=VBScript %>
<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sql = "Select * from haber_banka_bilgileri where id="&id
yeniasp.Open sql,baglanti,1,3

islem=Request.QueryString("islem")
if islem="duzenle" then
call duzenle
end if
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>Oto İlan Yönetim Paneli</title>
</head>

<body background="../images/mrh-bg.jpg">

			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="91%" bordercolor="#C0C0C0" id="table11" height="295">
					<tr>
						<td width="218" valign="top">
						<div align="center">
							<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#666666" id="table12" height="136" bgcolor="#CC3300">
								<tr>
									<td bgcolor="#F2F2F2">&nbsp;<!--#include file="menu.html"--></td>
								</tr>
							</table>
						</div>
						</td>
						<td valign="top">
						<div align="center">
							<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" bordercolor="#666666" id="table13" height="293">
								<tr>
									<td bgcolor="#DADADA" valign="top">

	<div align="center">
<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table17" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">HABER 
			ve BANKA KREDİ ORANLARI BİLGİLERİ 
			EKLE</font></td>
		</tr>
	</table></div>
<br>

	<div align="center">

	
	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table18" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Başlık &nbsp;
			</font></td>
			<form action="haber-banka-duzenle.asp?id=<%=yeniasp("id")%>&islem=duzenle" method="post">
			<input type="hidden" name="id" value="<%=yeniasp("id")%>">
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="baslik" size="56" style="font-family: Tahoma; font-size: 10pt; color: #666666" value="<%=yeniasp("baslik")%>"></td>
		</tr>
	</table>
	
</div>

	
	<div align="center">

	<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table19" height="30">
		<tr>
			<td valign="top">
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Açıklama &nbsp; </font></td>
			<td width="31" valign="top">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;<textarea name="icerik" rows="9" cols="57" style="font-family: Tahoma; font-size: 10pt; color: #666666"><%=yeniasp("icerik")%></textarea></font></td>
		</tr>
	</table>
	
</div>
<p align="center">  
<input type="submit" value="GÜNCELLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
	</form>
	<%
sub duzenle
id=Request.Form("id")
baslik = Request.Form("baslik")
icerik = Request.Form("icerik")


if baslik=""  or id="" or icerik=""  then
Response.Write "Hata! Eksik bilgi"

else
Set duz = Server.CreateObject("ADODB.RecordSet")
sql = "select * from haber_banka_bilgileri where id="&id
duz.open sql,baglanti,1,3

duz("baslik")=baslik
duz("icerik")=icerik

duz.Update

%>
<script>
	alert('GÜNCELLEME İŞLEMİ TAMAMLANDI...!!');
	window.parent.location.href=('yonetim.asp?s_otoilan=haber-yayinda');window.refresh;</script>
<%
Response.End
end if
end sub
%>
								</td>				
								</tr>
							</table>
							<div align="center">
								<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table14">
									<tr>
										<td>
			<p align="right"><font size="2" face="Tahoma" color="#009999">
			<a title="emrahbozkurt.com internet hizmetleri" href="http://www.emrahbozkurt.com" style="font-family: Tahoma; font-size: 12px; color: #666666">
			<span style="text-decoration: none"><font color="#009999">Design bY:
			</font></span></a></font>
			<a href="http://www.emrahbozkurt.com" style="font-family: Tahoma; font-size: 12px; color: #666666">
			<span style="text-decoration: none">
			<font size="2" face="Tahoma" color="#AA2B00">.m</font><font size="2" face="Tahoma" color="#009999">RH</font></span></a></td>
									</tr>
								</table>
							</div>
						</div>
						</td>
					</tr>
				</table>
			</div>
			
</body>

</html>