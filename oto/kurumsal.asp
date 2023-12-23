<!--#include file="data.asp"-->
<%
Set emrahbozkurt = Server.CreateObject("adodb.recordset")
sql="Select *From site_ayarlari"
emrahbozkurt.Open sql,baglanti,1,3
%>
<%
Set mrh = Server.CreateObject("adodb.recordset")
sql="Select *From kurumsal"
mrh.Open sql,baglanti,1,3
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>Kurumsal | <%=emrahbozkurt("sitebasligi")%></title>
<meta name="keywords" content="<%=emrahbozkurt("aranacak")%>">
<meta name="description" content="<%=emrahbozkurt("aciklama")%>">
<style type="text/css">
<!--
a {
	font-family: Tahoma;
	font-size: 12px;
	color: #666666;
}
a:hover {
	color: #AA2B00;
}
-->
</style>
<style>
<!--
div{color:#000}div{font-family:arial,sans-serif}.g{margin:1em 0}td{color:#000}td{font-family:arial,sans-serif}.j{width:34em}.std{font-size:82%}.a{color:green}-->
</style>
</head>

<body bgcolor="#C0C0C0" style="background-attachment: fixed" background="images/mrh-bg.jpg">

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="49%" bordercolor="#C0C0C0" id="table1">
		<tr>
			<td>
<table id="table2" width="870" height="601" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="4">
			<div align="center">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="870" bordercolor="#C0C0C0" id="table4" background="images/oto-ilanlari_01.gif" height="41">
					<tr>
						<td>
						<div align="center">
							<table border="1" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table7" height="26">
								<tr>
									<td><!--#include file="rasgele-ilan.asp"--></td>
									<td width="88" bgcolor="#E7E7E7">
									<p align="center">
									<font size="2" face="Tahoma" color="#333333">
									<a href="default.asp" style="text-decoration: none">
									Ana Sayfa</a></font></td>
									<td width="87" bgcolor="#E7E7E7">
									<p align="center">
									<font size="2" face="Tahoma" color="#333333">
									<a href="kurumsal.asp" style="text-decoration: none">
									Kurumsal</a></font></td>
									<td width="76" bgcolor="#E7E7E7">
									<p align="center">
									<font size="2" face="Tahoma" color="#333333">
									<a href="iletisim.asp" style="text-decoration: none">
									İletişim</a></font></td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
	<tr>
		<td colspan="3">
			<img src="images/oto-ilanlari_02.gif" width="762" height="54" alt=""></td>
		<td>
			<img src="images/oto-ilanlari_03.gif" width="108" height="54" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/oto-ilanlari_04.gif" width="99" height="106" alt=""></td>
		<td>
			<img src="images/oto-ilanlari_05.gif" width="260" height="52" alt=""></td>
		<td colspan="2" rowspan="2">
			<img src="images/oto-ilanlari_06.gif" width="511" height="106" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/oto-ilanlari_07.gif" width="260" height="54" alt=""></td>
	</tr>
	<tr>
		<td colspan="4">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="870" bordercolor="#C0C0C0" id="table5" background="images/oto-ilanlari_08.gif" height="42">
					<tr>
						<td>
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table8">
								<tr>
									<td height="21">
									<div align="center">
										<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="101%" bordercolor="#C0C0C0" id="table9" height="22">
											<tr>
												<td width="123">
												<p align="center">
												<font size="2" face="Tahoma" color="#333333">
												<a href="tum-oto-ilanlari.asp" style="text-decoration: none">
												Tüm İlanlar</a></font></td>
												<td>
												<p align="center">
												<font size="2" face="Tahoma" color="#333333">
												<a href="sifir-oto-ilanlari.asp" style="text-decoration: none">Sıfır Oto İlanları</a></font></td>
												<td>
												<p align="center">
												<font size="2" face="Tahoma" color="#333333">
												<a href="ikinci-el-oto-ilanlari.asp" style="text-decoration: none">İkinci El Oto İlanları</a></font></td>
												<td width="112">
												<p align="center">
												<font size="2" face="Tahoma" color="#333333">
												<a href="oto-talep.asp" style="text-decoration: none">Oto Talep</a></font></td>
												<td width="113">
												<p align="center">
												<font size="2" face="Tahoma" color="#333333">
												<a href="oto-haberleri.asp" style="text-decoration: none">Oto Haberleri</a></font></td>
												<td width="228">&nbsp;</td>
											</tr>
										</table>
									</div>
									</td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
	<tr>
		<td colspan="4">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="870" bordercolor="#C0C0C0" id="table3" height="315" background="images/oto-ilanlari_09.gif">
					<tr>
						<td>
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="311" bordercolor="#F7F7F7" id="table11">
								<tr>
									<td width="219" valign="top"><!--#include file="sol-blog.asp"--></td>
									<td width="4" bgcolor="#F7F7F7">&nbsp;</td>
									<td valign="top"><%=mrh("icerik")%></td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
	<tr>
		<td colspan="4">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="870" bordercolor="#C0C0C0" id="table6" background="images/oto-ilanlari_10.gif" height="42">
					<tr>
						<td>
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table10" height="16">
								<tr>
									<td height="16">
									<p align="left"><span class="a">
									<font face="Tahoma" size="1" color="#CC3300">
									C</font></span><font face="Tahoma"><span class="a"><font color="#CC3300" size="1">opyright.
									</font></span></font>
									<font size="1" face="Tahoma">
									<font color="#CC3300">©</font>
									<font color="#666666">2008</font>&nbsp; <b>
									<a href="http://<%=emrahbozkurt("siteadresi")%>" style="text-decoration: none">
									<font size="1" color="#000000"><%=emrahbozkurt("siteadresi")%></font></a></b></font><b><font size="1" face="Tahoma"></font></font></td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="99" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="260" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="403" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="108" height="1" alt=""></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
			</td>
		</tr>
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#009999">
			<a title="emrahbozkurt.com internet hizmetleri" href="http://www.emrahbozkurt.com">
			<span style="text-decoration: none"><font color="#009999">Design bY:
			</font></span></a></font><a href="http://www.emrahbozkurt.com">
			<span style="text-decoration: none">
			<font size="2" face="Tahoma" color="#AA2B00">.m</font><font size="2" face="Tahoma" color="#009999">RH</font></span></a></td>
		</tr>
	</table>
</div>

</body>

</html>