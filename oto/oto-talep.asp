<!--#include file="data.asp"-->
<%
Set emrahbozkurt = Server.CreateObject("adodb.recordset")
sql="Select *From site_ayarlari"
emrahbozkurt.Open sql,baglanti,1,3
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>Oto Talep Formu | <%=emrahbozkurt("sitebasligi")%></title>
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
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="57%" bordercolor="#C0C0C0" id="table1">
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
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="742" bordercolor="#F7F7F7" id="table11">
								<tr>
									<td width="219" valign="top"><!--#include file="sol-blog.asp"--></td>
									<td width="4" bgcolor="#F7F7F7">&nbsp;</td>
									<td valign="top">
									<div align="center">
										<table border="1" cellpadding="0" style="border-collapse: collapse" width="99%" height="81" bordercolor="#E7E7E7" id="table12">
											<tr>
												<td height="25" style="padding-top: 4px" bgcolor="#F7F7F7">
												<p>&nbsp;<font size="2" face="Tahoma" color="#CC3300">Otomobil 
												Talep Formu</font></td>
											</tr>
											<tr>
												<td>
												<p align="center">
												<font size="2" face="Tahoma" color="#666666">
												İstediğiniz Otomobilin 
												Özelliklerini Belirtiniz..<br>
												Elimizde İstediğiniz 
												Özelliklerde Otomobil Olduğunda 
												Size Geri Dönceğiz..</font></td>
											</tr>
										</table><br>
										<table border="1" cellpadding="0" style="border-collapse: collapse" width="99%" height="641" bordercolor="#E7E7E7" id="table13">
											<tr>
												<td valign="top" style="padding-top: 5px">
												<div align="center">
													<table border="1" cellpadding="0" style="border-collapse: collapse" width="98%" height="24" bordercolor="#E7E7E7" id="table14">
														<tr>
															<td>&nbsp;<font size="2" face="Tahoma" color="#CC3300">Kişisel 
															Bilgileriniz</font></td>
														</tr>
													</table>
													<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="113" bordercolor="#F7F7F7" id="table15">
														<tr><form action="mrh-modul.asp?process=oto-talep-formu" method="post">
															<td>
															<font size="2" face="Tahoma" color="#666666">&nbsp;Adınız 
															Soyadınız</font></td>
															<td width="15">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td width="443">&nbsp;<input type="text" name="adsoyad" size="20"></td>
														</tr>
														<tr>
															<td>
															<font size="2" face="Tahoma" color="#666666">&nbsp;E-mail</font></td>
															<td width="15">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td width="443">&nbsp;<input type="text" name="email" size="20"></td>
														</tr>
														<tr>
															<td>
															<font size="2" face="Tahoma" color="#666666">&nbsp;Telefon</font></td>
															<td width="15">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td width="443">&nbsp;<input type="text" name="tel" size="20"></td>
														</tr>
														<tr>
															<td>
															<font size="2" face="Tahoma" color="#666666">&nbsp;Gsm</font></td>
															<td width="15">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td width="443">&nbsp;<input type="text" name="gsm" size="20"></td>
														</tr>
													</table>
													<hr width="98%" color="#E7E7E7" size="1">
													<table border="1" cellpadding="0" style="border-collapse: collapse" width="98%" height="24" bordercolor="#E7E7E7" id="table16">
														<tr>
															<td>&nbsp;<font face="Tahoma" size="2" color="#CC3300">Otomobil 
															Özellikleri</font></td>
														</tr>
													</table>
													<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="399" bordercolor="#F7F7F7" id="table17">
														<tr>
															<td width="167" height="29">
															<font size="2" face="Tahoma" color="#666666">&nbsp;Marka</font></td>
															<td width="13" height="29">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td><%
sql="SELECT * FROM markalar"
Set markalar=Conn.Execute(sql)%>
															<td height="29">&nbsp;<select style="font-family: Tahoma; font-size: 10pt; color: #666666" size="1" name="marka">
    	             <option value="-" salected>Lütfen Seçiniz</option><%
    	             Do While Not markalar.Eof %>
    	             <option value="<%=markalar("marka")%>"><%=markalar("marka")%></option><%
    	             markalar.MoveNext
    	             Loop %>
                  </select></td>
														</tr>
														<tr>
															<td width="167" height="26">
															<font size="2" face="Tahoma" color="#666666">&nbsp;Model</font></td>
															<td width="13" height="26">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td height="26">&nbsp;<input type="text" name="model" size="20"></td>
														</tr>
														<tr>
															<td width="167" height="26">
															<font size="2" face="Tahoma" color="#666666">&nbsp;Model 
															Yılı</font></td>
															<td width="13" height="26">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td height="26">&nbsp;<input type="text" name="modelyili" size="20"></td>
														</tr>
														<tr>
															<td width="167" height="29">
															<font size="2" face="Tahoma" color="#666666">&nbsp;Kullanım</font></td>
															<td width="13" height="29">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td height="29">&nbsp;<SELECT name="kullanim" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Seçiniz..</OPTION><OPTION value="İkinci El">İkinci El</OPTION>
			<OPTION 
  value="Yeni (Sıfır)">Yeni (Sıfır)</OPTION></SELECT></td>
														</tr>
														<tr>
															<td width="167" height="29">
															<font size="2" face="Tahoma" color="#666666">&nbsp;Yakıt</font></td>
															<td width="13" height="29">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td height="29">&nbsp;<SELECT name="yakit" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Seçiniz</OPTION><OPTION value=Benzin>Benzin</OPTION><OPTION 
  value=Dizel>Dizel</OPTION><OPTION value=Hybrid>Hybrid</OPTION><OPTION 
  value=LPG>LPG</OPTION></SELECT></td>
														</tr>
														<tr>
															<td width="167" height="26">
															<font size="2" face="Tahoma" color="#666666">&nbsp;Vites</font></td>
															<td width="13" height="26">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td height="26">&nbsp;<SELECT name="vites" style="font-family: Tahoma; font-size: 10pt; color: #666666" size="1">
			<OPTION value="-" 
  selected>Seçiniz..</OPTION><OPTION value=Düz>Düz</OPTION><OPTION 
  value=Otomatik>Otomatik</OPTION><OPTION 
value=Tiptronik>Tiptronik</OPTION></SELECT></td>
														</tr>
														<tr>
															<td width="167" height="28">
															<font size="2" face="Tahoma" color="#666666">&nbsp;Renk</font></td>
															<td width="13" height="28">
															<p align="center">
															<font face="Tahoma" size="2" color="#666666">
															:</font></td>
															<td height="28">&nbsp;<SELECT name="renk" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Seçiniz..</OPTION><OPTION value="Altın">Altın</OPTION><OPTION 
  value="Amarant">Amarant</OPTION><OPTION value="AtlasxGrisi">Atlas 
  Grisi</OPTION><OPTION value="Bakır">Bakır</OPTION><OPTION 
  value="Bej">Bej</OPTION><OPTION value="Beyaz">Beyaz</OPTION><OPTION 
  value="Bordo">Bordo</OPTION><OPTION value="BuzxMavisi">Buz Mavisi</OPTION><OPTION 
  value="BuzxYeşili">Buz Yeşili</OPTION><OPTION value="ÇelikxGrisi">Çelik 
  Grisi</OPTION><OPTION value="Fildişi">Fildişi</OPTION><OPTION 
  value="Füme">Füme</OPTION><OPTION value="Grixmetx">Gri-met.</OPTION><OPTION 
  value="Gümüş">Gümüş</OPTION><OPTION value="Hardal">Hardal</OPTION><OPTION 
  value="IhlamurxÇiçeği">Ihlamur Çiçeği</OPTION><OPTION 
  value="Kahverengi">Kahverengi</OPTION><OPTION 
  value="Kavuniçi">Kavuniçi</OPTION><OPTION value="Kırmızı">Kırmızı</OPTION><OPTION 
  value="Krem">Krem</OPTION><OPTION value="Lacivert">Lacivert</OPTION><OPTION 
  value="Lila">Lila</OPTION><OPTION value="MavixxxAçık">Mavi - Açık</OPTION><OPTION 
  value="MavixxxKoyu">Mavi - Koyu</OPTION><OPTION value="MavixxxMetalik">Mavi - 
  Metalik</OPTION><OPTION value="MavixxxOkyanus">Mavi - Okyanus</OPTION><OPTION 
  value="MavixxxParlement">Mavi - Parlement</OPTION><OPTION 
  value="MavixxxSiyah">Mavi - Siyah</OPTION><OPTION value="Mor">Mor</OPTION><OPTION 
  value="Pembe">Pembe</OPTION><OPTION value="Petrol">Petrol</OPTION><OPTION 
  value="SahraxBeji">Sahra Beji</OPTION><OPTION value="Sarı">Sarı</OPTION><OPTION 
  value="Siyah">Siyah</OPTION><OPTION value="Somon">Somon</OPTION><OPTION 
  value="Şampanya">Şampanya</OPTION><OPTION value="ŞeytanxKırmızısı">Şeytan 
  Kırmızısı</OPTION><OPTION value="Tarçın">Tarçın</OPTION><OPTION 
  value="TitanyumxGrisi">Titanyum Grisi</OPTION><OPTION 
  value="Turuncu">Turuncu</OPTION><OPTION value="Yakut">Yakut</OPTION><OPTION 
  value="Yeşil">Yeşil</OPTION><OPTION value="YeşilxxxAçık">Yeşil - 
  Açık</OPTION><OPTION value="YeşilxxxKoyu">Yeşil - Koyu</OPTION><OPTION 
  value="YeşilxxxMetalik">Yeşil - Metalik</OPTION><OPTION 
  value="YeşilxxxSiyah">Yeşil - Siyah</OPTION><OPTION value="YunusxGrisi">Yunus 
  Grisi</OPTION></SELECT></td>
														</tr>
														<tr>
															<td width="167" height="28">
															<font face="Tahoma" size="2" color="#666666">&nbsp;Kapı 
															Sayısı</font></td>
															<td width="13" height="28">
															<p align="center">
															<font face="Tahoma" size="2" color="#666666">
															:</font></td>
															<td height="28">&nbsp;<font face="Tahoma"><SELECT name="kapisayisi" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Seçiniz..</OPTION><OPTION value=2>2</OPTION><OPTION 
  value=3>3</OPTION><OPTION value=4>4</OPTION><OPTION value=5>5</OPTION></SELECT></font></td>
														</tr>
														<tr>
															<td width="167">
															<font face="Tahoma" size="2" color="#666666">&nbsp;Hasar 
															Durumu</font></td>
															<td width="13">
															<p align="center">
															<font face="Tahoma" size="2" color="#666666">
															:</font></td>
															<td>&nbsp;<SELECT name="hasardurumu" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Seçiniz..</OPTION><OPTION value=AzxHasarlı>Az Hasarlı</OPTION><OPTION 
  value=Hasarlı>Hasarlı</OPTION><OPTION value=Hasarsız>Hasarsız</OPTION><OPTION 
  value=Pert>Pert</OPTION></SELECT></td>
														</tr>
														<tr>
															<td width="167" height="28">
															<font face="Tahoma" size="2" color="#666666">&nbsp;Motor 
															Gücü</font></td>
															<td width="13" height="28">
															<p align="center">
															<font face="Tahoma" size="2" color="#666666">
															:</font></td>
															<td height="28">&nbsp;<input type="text" name="motorgucu" size="20"></td>
														</tr>
														<tr>
															<td width="167" height="32">
															<font size="2" face="Tahoma" color="#666666">&nbsp;Fiyat 
															Aralığı</font></td>
															<td width="13" height="32">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td height="32">&nbsp;<input type="text" name="fiyat1" size="9"> 
															-
															<input type="text" name="fiyat2" size="9">
			<SELECT name="kur" size="1" style="font-family: Tahoma; font-size: 10pt; color: #CC3300"><OPTION value="YTL"
  selected>YTL</OPTION><OPTION value="USD">USD</OPTION><OPTION 
  value="EUR">EUR</OPTION></SELECT></td>
														</tr>
														<tr>
															<td width="167" height="84" valign="top">
															<font size="2" face="Tahoma" color="#666666">&nbsp;Diğer 
															Özellikler</font></td>
															<td width="13" height="84" valign="top">
															<p align="center">
															<font size="2" face="Tahoma" color="#666666">
															:</font></td>
															<td height="84">&nbsp;<textarea name="digerozellikler" rows="5" cols="40"></textarea></td>
														</tr>
													</table>
													<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="44" bordercolor="#F7F7F7" id="table18">
														<tr>
															<td>
															<p align="center">&nbsp;<input type="submit" value="Formu Gönder" style="font-family: Tahoma; color: #CC3300; font-size: 10pt; border: 1px solid #E9E9E9; background-color: #FFFFFF">&nbsp; 
															<input type="reset" value="Formu Temizle" style="font-family: Tahoma; font-size: 10pt; color: #CC3300; border: 1px solid #E9E9E9; background-color: #FFFFFF"></td>
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