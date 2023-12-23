<!--#include file="data.asp"-->
<%
Set emrahbozkurt = Server.CreateObject("adodb.recordset")
sql="Select *From site_ayarlari"
emrahbozkurt.Open sql,baglanti,1,3
%>
<%
Server.ScriptTimeOut = 1000

Kayit_Sayisi = 20 '|*| Gösterilecek Kayıt Sayısı


GelenSayfa = Request.QueryString("Sayfa")
Eylem = Request("eylem")
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>Tüm Oto İlanları | <%=emrahbozkurt("sitebasligi")%></title>
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
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="56%" bordercolor="#C0C0C0" id="table1">
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
									<td valign="top">
									<div align="center">
										<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="308" bordercolor="#F7F7F7" id="table12">
											<tr>
												<td valign="top" height="33" style="padding-top: 4px">
												<p><!--#include file="ust-blog.asp"--></td>
											</tr>
											<tr>
												<td valign="top" style="padding-top: 8px">
												<div align="center">
														<table border="1" cellpadding="0" style="border-collapse: collapse" width="98%" height="217" bordercolor="#EEEEEE" id="table13">
															<tr>
																<td bgcolor="#F8F8F8" height="27">&nbsp;<font face="Tahoma" size="2" color="#CC3300">Tüm 
																Otomobil 
																İlanları</font></td>
															</tr>
															<tr>
																<td style="padding-top: 4px" valign="top">
																<font size="2" face="Tahoma" color="#31312B"><%
set superstar = Server.CreateObject("ADODB.RecordSet")
superstar.open "select * from ilanlar order by id desc",baglanti,1,3

superstar.PageSize = Kayit_Sayisi
superstar.CacheSize = Kayit_Sayisi

If GelenSayfa = "" Then
    Gosterilen_kayit = 1
Else
    Gosterilen_kayit = CInt(GelenSayfa)
End If

Toplam_Kayit = superstar.PageCount

If Gosterilen_kayit > Toplam_Kayit Then Gosterilen_kayit = Toplam_Kayit

If Gosterilen_kayit < 1 Then Gosterilen_kayit = 1

If Toplam_Kayit = 0 Then

    Response.Write "Kayıt bulunamadı!"

Else

    superstar.AbsolutePage = Gosterilen_kayit 

end if 

i = 1

do while i < Kayit_Sayisi and Not superstar.Eof

%>
																<div align="center">
				<table border="0" width="99%" id="table2"><tr>	
 
				<td width="97%" bgcolor="#E5E5DD" onMouseOver="this.style.background='#ffffff'; this.style.color='#000000'"  onMouseOut="this.style.background='#E7E7E7'; this.style.color=''" style="cursor:hand;" align="center">
				<div align="center">
					<table border="0" cellpadding="2" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table14" height="24">
						<tr>
							<td width="18">
							<p align="center">
									<a href="ilan.asp?s-oto=ilandetayi&id=<%=superstar("id")%>">
									<img alt="<%=superstar("baslik")%>" border="0" src="<%If Not superstar("resim1")="" Then%>images/foto-var.gif<%Else%>images/foto-yok.gif<%End If%>" width="23" height="18" style="border: 0px solid #CCCCCC; " align="left" hspace="0"></a></td>
							<td width="99"><b>
							<font size="1" face="Arial" color="#CC3300">
							&nbsp;<%=superstar("marka")%></font></b></td>
							<td width="85">
							<b>
							<font size="1" face="Arial" color="#CC3300">&nbsp;<%=superstar("model")%></font></b></td>
							<td width="110">
							<b>
							<font size="1" face="Arial" color="#808080">&nbsp;<%=superstar("modelyili")%> Model</font></b></td>
							<td width="115">
							<b>
							<font size="1" face="Arial" color="#808080">&nbsp;<%=superstar("km")%> Km</font></b></td>
							<td><b><font size="1" face="Arial" color="#808080">&nbsp;<%=superstar("fiyat")%>&nbsp;<%=superstar("kur")%></font></b></td>
							<td width="45">
							<p align="center"><b><font size="1" face="Arial">&nbsp;</font><font size="2" face="Tahoma" color="#CC3300"><a href="ilan.asp?s-oto=ilandetayi&id=<%=superstar("id")%>"><font size="1" face="Arial">Detay</font></a></font></b></td>
						</tr>
					</table>
				</div>
				<p style="margin-top: 2; margin-bottom: 2" align="center"></td>

	</tr>
</table>
																</div>
<% 
i = i + 1
superstar.MoveNext
Loop
%>
																<div align="center">
	<table border="0" width="99%" id="table2" cellpadding="0" style="border-collapse: collapse" height="32">
		<tr>
			<td>
			 <div align="center">
				<table border="1" cellpadding="0" style="border-collapse: collapse" width="99%" height="23" bordercolor="#E7E7E7" id="table15">
					<tr>
						<td bgcolor="#F9F9F9"><p align="left">
						<font size="1" face="Arial" color="#CC3300"> 
						&nbsp;</font><font size="2" face="Tahoma" color="#808080">Sayfalar 
						:</font><font size="2" face="Tahoma" color="#CC3300">  
<% for k=1 to Toplam_Kayit %> </font>
  <font size="2" face="Tahoma"><font color="#BDBD75">
  <% if k=Gosterilen_Kayit then %></font><font color="#666666">[<%=k%>]
  <% else %></font></font><font size="2" face="Verdana"><b><a href='tum-oto-ilanlari.asp?eylem=oku&Sayfa=<%=k%>'><font color="#666666" size="2">[<%=k%>]</font></a></b></font><font size="2" face="Tahoma" color="#666666">
<% end if %>
<% next %></font></td>
					</tr>
				</table>
				</div>
			 <p align="center">
<font size="1" face="Arial">
</font></font><font face="Arial"><font size="1" color="#CC3300">&nbsp;</font><font size="1" color="#808080">Toplam 
				Oto İlan Sayısı :<b>&nbsp;</b></font><b><font color="#CC3300" size="1"><%=superstar.recordcount%>
</font>
<font size="1"></font>
</font></b><font size="1"><br>
<br>
</font>
</font><font size="1" face="Arial"><font color="#999999">Foto Var :
<img border="0" src="images/foto-var.gif" width="17" height="16">&nbsp; Foto Yok 
: </font><img border="0" src="images/foto-yok.gif" width="17" height="17"></font></td></tr></table></div>
																</div></font></td>
															</tr>
														</table></div>
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