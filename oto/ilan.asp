<!--#include file="data.asp"-->
<%
Set emrahbozkurt = Server.CreateObject("adodb.recordset")
sql="Select *From site_ayarlari"
emrahbozkurt.Open sql,baglanti,1,3
%>
<%
Set mrh = baglanti.Execute("select * from ilanlar where id="&Request.QueryString("id")&" Order by id asc" ) 
Session("marka")
%>
<%If Not Session("marka")=mrh("marka") Then Conn.Execute("UPDATE ilanlar SET hit=hit+1 WHERE id="&mrh("id")) End If%>
<%
Set ali = Server.CreateObject("ADODB.Recordset")
sql = "Select * from banner id order by id asc"
ali.Open sql,baglanti,1,3
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title><%=mrh("marka")%>, <%=mrh("model")%>, <%=mrh("baslik")%></title>
<meta name="keywords" content="<%=mrh("saticiyorumlari")%>">
<meta name="description" content="<%=mrh("saticiyorumlari")%>">
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
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="60%" bordercolor="#C0C0C0" id="table1">
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
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="1396" bordercolor="#F7F7F7" id="table11">
								<tr>
									<td width="219" valign="top">
									<div align="center">
										<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="221" bordercolor="#F7F7F7" id="table36">
											<tr>
												<td valign="top"><!--#include file="sol-blog.asp"--></td>
											</tr>
										</table>
										<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="275" bordercolor="#F7F7F7" id="table37">
											<tr><%
if ali.eof or ali.bof then
response.write ""
else
%>
<%
i=1
do while i < 10000000000 and not ali.eof
%><br>
<td align="center" valign="top"><a href="<%=ali("banner_linki")%>"target="_blank">
<img alt="<%=ali("banner_baslik")%>" src="yonetim/<%=ali("banner")%>" width="<%=ali("genislik")%>" height="<%=ali("yukseklik")%>" style="border: 1px solid #F2F2F2"></a></td>

											</tr><%
ali.movenext
i=i+1
Loop
END IF
%>
										</table>
									</div>
									</td>
									<td width="4" bgcolor="#F7F7F7">&nbsp;</td>
									<td valign="top">
									<div align="center">
										<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="309" bordercolor="#F7F7F7" id="table12">
											<tr>
												<td valign="top" height="309" style="padding-top: 4px">
												<div align="center">
													<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="1405" bordercolor="#F7F7F7" id="table13">
														<tr>
															<td width="313" valign="top">
															<div align="center">
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="30" bordercolor="#F7F7F7" id="table16">
																	<tr>
																		<td width="136"><font face="Tahoma"><font size="2">
																		<b><%=mrh("marka")%></b></font></b><span style="text-decoration: none"><font size="2"><br>
												<font color="#666666">
												<%=mrh("model")%></font><br>
												<font color="#006699">
												<%=mrh("modelyili")%> Model</font><br>
												<font color="#CC3300">
												<%=mrh("km")%></font></font><font size="2" color="#006699">
																		</font>
											</span>
																		</font>
																		<span style="text-decoration: none">
																		<font face="Tahoma">
																		<font size="2" color="#CC3300">Km</font><font size="2"></font></font></font><br>
																		<font face="Tahoma">
												<b><font size="2" color="#FF9900">
												<%=mrh("fiyat")%></font></b><font size="2">&nbsp;
																		</font>
																		</font>
											</span>
											<font color="#CC3300" face="Tahoma"> 
											<span style="text-decoration: none"> 
																		<font size="2"> <%=mrh("kur")%></font></td>
																		<td>
																		<div align="center">
																			<table border="1" cellpadding="0" style="border-collapse: collapse" width="97%" height="26" bordercolor="#E7E7E7" id="table17">
																				<tr>
																					<td bgcolor="#F8F8F8">
																					<p align="center"><font size="2" face="Tahoma" color="#666666">İlan No :</font><b><font size="2" face="Tahoma" color="#CC3300">&nbsp; <%=mrh("id")%></font></b></td>
																				</tr>
																			</table>
																		</div>
																		</td>
																	</tr>
																</table>
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="42" bordercolor="#F7F7F7" id="table19">
																	<tr>
																		<td valign="bottom">
																		<font size="2" face="Tahoma" color="#006699">&nbsp;Detaylı 
																		Bilgi</font></td>
																	</tr>
																</table>
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="193" bordercolor="#F7F7F7" id="table18">
																	<tr>
																		<td width="101" height="20">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Kasa 
																		Tipi</font></td>
																		<td width="31" height="20">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td height="20">
																		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrh("kasatipi")%></font></td>
																	</tr>
																	<tr>
																		<td width="101">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Kullanım</font></td>
																		<td width="31">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td>
																		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrh("kullanim")%></font></td>
																	</tr>
																	<tr>
																		<td width="101">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Renk</font></td>
																		<td width="31">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td>
																		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrh("renk")%></font></td>
																	</tr>
																	<tr>
																		<td width="101">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Silindir 
																		Hacmi</font></td>
																		<td width="31">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td>
																		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrh("silindirhacmi")%></font></td>
																	</tr>
																	<tr>
																		<td width="101">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Hasar 
																		Durumu</font></td>
																		<td width="31">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td>
																		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrh("hasardurumu")%></font></td>
																	</tr>
																	<tr>
																		<td width="101">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Yakıt</font></td>
																		<td width="31">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td>
																		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrh("yakit")%></font></td>
																	</tr>
																	<tr>
																		<td width="101">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Kapı 
																		Sayısı</font></td>
																		<td width="31">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td>
																		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrh("kapisayisi")%></font></td>
																	</tr>
																	<tr>
																		<td width="101">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Kredi 
																		Durumu</font></td>
																		<td width="31">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td>
																		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrh("krediyeuygun")%></font></td>
																	</tr>
																	<tr>
																		<td width="101">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Motor 
																		Gücü</font></td>
																		<td width="31">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td>
																		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrh("motorgucu")%></font></td>
																	</tr>
																	<tr>
																		<td width="101">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Vites</font></td>
																		<td width="31">
																		<p align="center">
																		<font color="#666666" size="2" face="Tahoma">
																		:</font></td>
																		<td>
																		<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrh("vites")%></font></td>
																	</tr>
																</table>
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="42" bordercolor="#F7F7F7" id="table20">
																	<tr>
																		<td valign="bottom">
																		<font size="2" face="Tahoma" color="#006699">&nbsp;Güvenlik</font></td>
																	</tr>
																</table>
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="21" bordercolor="#F7F7F7" id="table21">
																	<tr>
																		<td width="137">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;4 
																		Çeker 
																		Sistemi
																		</font>
																		</td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("cekersistem")="" Then%>images/<%=mrh("cekersistem")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="137">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;ABS
																		</font>
																		</td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("aracabs")="" Then%>images/<%=mrh("aracabs")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="137">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Alarm</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("alarm")="" Then%>images/<%=mrh("alarm")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="137">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;ESP 
																		(E. stabilite 
																		K.)</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">
																		:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("esp")="" Then%>images/<%=mrh("esp")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="137">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Hava 
																		Yastığı 
																		Perde</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("havayastigi")="" Then%>images/<%=mrh("havayastigi")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="137">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Hava 
																		Yastığı 
																		Sürücü</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("havayastigisurucu")="" Then%>images/<%=mrh("havayastigisurucu")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="137">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Isofix 
																		Çocuk 
																		Koltuğu
																		</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("cocuk_koltugu")="" Then%>images/<%=mrh("cocuk_koltugu")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="137">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Hava 
																		Yastığı 
																		Yan</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("havayastigiyan")="" Then%>images/<%=mrh("havayastigiyan")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="137">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Hava 
																		Yastığı 
																		Yolcu</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("havayastigiyolcu")="" Then%>images/<%=mrh("havayastigiyolcu")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																</table>
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="42" bordercolor="#F7F7F7" id="table22">
																	<tr>
																		<td valign="bottom">
																		<font size="2" face="Tahoma" color="#006699">&nbsp;İç 
																		Donanım</font></td>
																	</tr>
																</table>
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="351" bordercolor="#F7F7F7" id="table23">
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Cam 
																		Elektrikli 
																		Arka</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("canelektirkliarka")="" Then%>images/<%=mrh("canelektirkliarka")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Cam 
																		Elektrikli 
																		Ön</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("canelektirklion")="" Then%>images/<%=mrh("canelektirklion")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;CD 
																		MP3 
																		Çalar</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("cdcalar")="" Then%>images/<%=mrh("cdcalar")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Çoklu 
																		CD Çalar</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("coklucdcalar")="" Then%>images/<%=mrh("coklucdcalar")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Deri 
																		Döşeme</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("deridoseme")="" Then%>images/<%=mrh("deridoseme")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Dikiz 
																		Aynaları 
																		E. Dış</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("dikizaynalarielektiriklidis")="" Then%>images/<%=mrh("dikizaynalarielektiriklidis")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Dikiz 
																		A. Işığa 
																		Duyarlı 
																		İç</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("dikizaynasi")="" Then%>images/<%=mrh("dikizaynasi")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Direksiyon 
																		Deri</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("direksiyonderi")="" Then%>images/<%=mrh("direksiyonderi")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Direksiyon 
																		Hidrolik</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("hidrolikdireksiyon")="" Then%>images/<%=mrh("hidrolikdireksiyon")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;D. 
																		K. Radyo 
																		Çalar/CD</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("direksiyondanradyo")="" Then%>images/<%=mrh("direksiyondanradyo")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Klima</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("klima")="" Then%>images/<%=mrh("klima")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Hız 
																		S. 
																		Sistemi</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("hizsabitleme")="" Then%>images/<%=mrh("hizsabitleme")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Merkezi 
																		Kilit</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("merkezikilit")="" Then%>images/<%=mrh("merkezikilit")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Navigasyon</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("navigasyon")="" Then%>images/<%=mrh("navigasyon")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Merkezi 
																		Kilit 
																		Uzaktan 
																		K.</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("merkezikilituzaktan")="" Then%>images/<%=mrh("merkezikilituzaktan")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Radyo 
																		Çalar</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("radyocalar")="" Then%>images/<%=mrh("radyocalar")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Telefon 
																		Hazırlığı</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("telefonhazirligi")="" Then%>images/<%=mrh("telefonhazirligi")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;TV</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("tv")="" Then%>images/<%=mrh("tv")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Yol 
																		Bilgisayarı</font></td>
																		<td width="10">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="135">&nbsp;<img src="<%If Not mrh("yolbilgisayari")="" Then%>images/<%=mrh("yolbilgisayari")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																</table>
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="42" bordercolor="#F7F7F7" id="table24">
																	<tr>
																		<td valign="bottom">
																		<font size="2" face="Tahoma" color="#006699">&nbsp;Dış 
																		Donanım</font></td>
																	</tr>
																</table>
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="30" bordercolor="#F7F7F7" id="table25">
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;A. Alışımlı 
																		Jantlar</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="134">&nbsp;<img src="<%If Not mrh("aliminyumjantlar")="" Then%>images/<%=mrh("aliminyumjantlar")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Çeki 
																		Kancası</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="134">&nbsp;<img src="<%If Not mrh("ceki_kancasi")="" Then%>images/<%=mrh("ceki_kancasi")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">
																		&nbsp;Far 
																		Otomatik</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="134">&nbsp;<img src="<%If Not mrh("farotomatik")="" Then%>images/<%=mrh("farotomatik")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Far 
																		Sis</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="134">&nbsp;<img src="<%If Not mrh("farsis")="" Then%>images/<%=mrh("farsis")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Far Xenon</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="134">&nbsp;<img src="<%If Not mrh("farxenon")="" Then%>images/<%=mrh("farxenon")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Far 
																		Yükseklik 
																		Ayarı</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="134">&nbsp;<img src="<%If Not mrh("faryukseklik_ayari")="" Then%>images/<%=mrh("faryukseklik_ayari")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Modifiyeli</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="134">&nbsp;<img src="<%If Not mrh("modifiyeli")="" Then%>images/<%=mrh("modifiyeli")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Park Sensörü</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="134">&nbsp;<img src="<%If Not mrh("parksensoru")="" Then%>images/<%=mrh("parksensoru")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Sunroof</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="134">&nbsp;<img src="<%If Not mrh("sunroof")="" Then%>images/<%=mrh("sunroof")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td>
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Yağmur Sensörü</font></td>
																		<td width="11">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td width="134">&nbsp;<img src="<%If Not mrh("yagmur_sensoru")="" Then%>images/<%=mrh("yagmur_sensoru")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																</table>
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="42" bordercolor="#F7F7F7" id="table26">
																	<tr>
																		<td valign="bottom">
																		<font size="2" face="Tahoma" color="#006699">&nbsp;Diğer 
																		Bilgiler</font></td>
																	</tr>
																</table>
																<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="17" bordercolor="#F7F7F7" id="table27">
																	<tr>
																		<td width="136">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Engelli 
																		Arabası
																		</font></td>
																		<td width="13">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("engelli_arabasi")="" Then%>images/<%=mrh("engelli_arabasi")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="136">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Garanti 
																		Kapsamında</font></td>
																		<td width="13">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("garanti_kapsaminda")="" Then%>images/<%=mrh("garanti_kapsaminda")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="136">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;(Acil) 
																		Satılık</font></td>
																		<td width="13">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("ihtiyactan_acil_satilik")="" Then%>images/<%=mrh("ihtiyactan_acil_satilik")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="136">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Klasik 
																		Araba</font></td>
																		<td width="13">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("klasik_araba")="" Then%>images/<%=mrh("klasik_araba")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="136">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Masrafsız</font></td>
																		<td width="13">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("masrafsiz")="" Then%>images/<%=mrh("masrafsiz")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="136">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Pazarlıksız 
																		Satılık</font></td>
																		<td width="13">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("pazarliksiz_satilik")="" Then%>images/<%=mrh("pazarliksiz_satilik")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="136">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Servis 
																		Bakımlı</font></td>
																		<td width="13">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("servis_bakimli")="" Then%>images/<%=mrh("servis_bakimli")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="136">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Sigara 
																		İçilmemiş</font></td>
																		<td width="13">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("sigara_icilmemis")="" Then%>images/<%=mrh("sigara_icilmemis")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="136">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Takaslanabilir</font></td>
																		<td width="13">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("takaslanabilir")="" Then%>images/<%=mrh("takaslanabilir")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																	<tr>
																		<td width="136">
																		<font size="2" face="Tahoma" color="#666666">&nbsp;Vade 
																		Olur</font></td>
																		<td width="13">
																		<p align="center">
																		<font size="2" face="Tahoma" color="#666666">:</font></td>
																		<td>&nbsp;<img src="<%If Not mrh("vade_olur")="" Then%>images/<%=mrh("vade_olur")%>.jpg<%Else%>images/0.jpg<%End If%>" width="16" height="16"></td>
																	</tr>
																</table>
															</div>
															</td>
										<td width="351" valign="top">
										<div align="center">
											<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" height="364" bordercolor="#F7F7F7" id="table33" background="images/foto-bg.jpg">
												<tr>
													<td>
											<table border="0" cellpadding="0" style="border-collapse: collapse" width="91%" bordercolor="#C0C0C0" id="table34" height="163">
												<tr>
													<td><%
                     If Not mrh("resim1")="" Then
                     say=1%><script language=javascript type="text/javascript"><!--
                     var img = new Image();
                     var newWin;
                     var url = "ilanlar.asp?id=yonetim/<%=mrh("resim"&say)%>";
                     function loadImage(fileName, url){
                     this.url = url;
                     img.src = fileName;
                     document.preview.src = img.src;}
                     function bigImage(){
                     newWin = popup(url,'no',420,550,1);} //--></script>
                     								<div align="center">
                     <table border=0 bgcolor=#BFC0C1 width=340 height=364 cellpadding=0 cellspacing=0 id="table35" background="images/foto-bg.jpg">
                        <tr>
                           <td valign=top align=center height="31"></td>
                        </tr>
                        <tr>
                           <td valign=top align=center height="274">
								<img src="yonetim/<%=mrh("resim"&say)%>" style="border: 0px solid #2485CA;" name="preview" border=0 width=305 height=256 alt="<%=mrh("baslik")%>">
                           </td>
                        </tr>
                        <tr>
                           <td valign=top align=center><%
                           Do While Not mrh("resim"&say)=""
                           If say>5 Then Exit Do%><font face="Tahoma"><b><a href="#" onclick="loadImage('yonetim/<%=mrh("resim"&say)%>', 'ilan.asp?id=yonetim/<%=mrh("resim"&say)%>')"><font size=1 color=#CCCCCC><span style="text-decoration: none"><img src="yonetim/<%=mrh("resim"&say)%>" width="64" height="38" border="0" style="border: 1px solid #999999">&nbsp;</span></font></a></b><font size="1"><%
                           say=say+1:Loop%></font></font></td>
                       </tr>
                    </table><%Else%><img border="1" src="yonetim/ilanfoto/resim_yok.jpg" width=278 height=207 style="border: 0px solid #CCCCCC; " align="right"><%End If%></td>
												</tr>
											</table>
													</td>
												</tr>
											</table>
											<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="811" bordercolor="#F7F7F7" id="table28">
												<tr>
													<td valign="top" style="padding-top: 7px">
													<div align="center">
														<table border="1" cellpadding="0" style="border-collapse: collapse" width="98%" height="21" bordercolor="#EEEEEE" id="table29">
															<tr>
																<td bgcolor="#F8F8F8">&nbsp;<font size="2" color="#666666" face="Tahoma">Bu İlan Şimdiye Kadar :</font><font size="2" color="#666666"><b> <%=mrh("hit")%>&nbsp; </b>
																Kez 
																Görüntülendi..</font></td>
															</tr>
														</table><br>
														<table border="1" cellpadding="0" style="border-collapse: collapse" width="98%" height="42" bordercolor="#EEEEEE" id="table30">
															<tr>
																<td bgcolor="#F8F8F8">&nbsp;<font size="2" face="Tahoma" color="#CC3300">İlan 
																Başlığı</font></td>
															</tr>
															<tr>
																<td>
																<font size="2" face="Tahoma" color="#999999">&nbsp;<%=mrh("baslik")%></font></td>
															</tr>
														</table><br>
														<table border="1" cellpadding="0" style="border-collapse: collapse" width="98%" height="42" bordercolor="#EEEEEE" id="table31">
															<tr>
																<td bgcolor="#F8F8F8">&nbsp;<font face="Tahoma" size="2" color="#CC3300">Satıcının 
																Yorumları</font></td>
															</tr>
															<tr>
																<td>
																<font size="2" face="Tahoma" color="#999999">&nbsp;<%=mrh("saticiyorumlari")%></font></td>
															</tr>
														</table><br>
														<table border="1" cellpadding="0" style="border-collapse: collapse" width="98%" height="42" bordercolor="#EEEEEE" id="table32">
															<tr>
																<td bgcolor="#F8F8F8">&nbsp;<font face="Tahoma" size="2" color="#CC3300">Son 
																Eklenen 12 İlan</font></td>
															</tr>
															<tr>
																<td valign="top">
																<font size="2" face="Tahoma" color="#31312B">&nbsp;<!--#include file="son-eklenen-ilanlar.asp"-->&nbsp;</font></td>
															</tr>
														</table>
													</div>
													</td>
												</tr>
											</table>
										</div>
										</td>
															<td>&nbsp;</td>
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