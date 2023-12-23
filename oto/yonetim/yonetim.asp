<!--#include file="engel.asp"-->
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
									<td bgcolor="#DADADA" valign="top"><%s_otoilan = request.QueryString ("s_otoilan")%><p align="center">
						<br>
						<%IF s_otoilan="" Then%>
						<font face="Tahoma" size="2" color="#CC3300">.Mrh 
						Oto İlan Portalı V.01<br>
						<br>
						</font>
						<font size="2" face="Tahoma" color="#0099CC">Hoş 
						Geldiniz</font><p align="center">
						<font face="Tahoma" size="2" color="#CC3300">Sn.</font><font face="Tahoma" size="2" color="#0099CC">&nbsp; <%=Session("kullaniciadi")%></font><p align="center">
						<font size="2" face="Tahoma" color="#CC3300">&nbsp;<a href="oturumu_kapat.asp"><span style="text-decoration: none"><font color="#CC3300">Oturumu 
			Kapat</font></span></a>
					    <%End IF%>
					    <%IF s_otoilan="kurumsal-icerik" Then%>
					    <!--#include file="kurumsal.asp"-->
					    <%End IF%>
					    <%IF s_otoilan="yonetim-sifre-degisikligi" Then%>
					    <!--#include file="yonetim_sifre.asp"-->
					    <%End IF%>
					    <%IF s_otoilan="yazi-icerigi" Then%>
					    <!--#include file="yazi-icerigi.asp"-->
					    <%End IF%>
					    <%IF s_otoilan="iletisim_bilgileri" Then%>
					    <!--#include file="iletisim_bilgileri.asp"-->
					    <%End IF%>
					    <%IF s_otoilan="haber-ekle" Then%>
					    <!--#include file="haber-ekle.asp"-->
					    <%End IF%>
					    <%IF s_otoilan="haber-yayinda" Then%>
					    <!--#include file="haberler.asp"-->
					    <%End IF%>
					    <%IF s_otoilan="iletisim-form-gelen" Then%>
					    <!--#include file="iletisim-gelen-bilgiler.asp"-->
					    <%End IF%>
					    <%IF s_otoilan="ilan-ekle" Then%>
					    <!--#include file="ilan-ekle.asp"-->
					    <%End IF%>
					    <%IF s_otoilan="ilanlar" Then%>
					    <!--#include file="ilanlar.asp"-->
					    <%End IF%>
					    <%IF s_otoilan="oto-talep" Then%>
					    <!--#include file="ototalep_bilgileri.asp"-->
					    <%End IF%>
					    <%IF s_otoilan="banner" Then%>
					    <!--#include file="banner.asp"-->
					    <%End IF%>
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