<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body>

<div align="center">
<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">�LAN 
			EKLE</font></td>
		</tr>
	</table></div>

<p align="left">&nbsp;&nbsp; <b><font size="2" face="Verdana" color="#0099CC">Genel �zellikler</font></b></p>
<hr width="98%" size="1" color="#C0C0C0">
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="30" bordercolor="#F7F7F7" id="table2">
		<tr><form action="mrh-modul.asp?process=ilanlar" method="post" name="ilan">
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Marka&nbsp;&nbsp;&nbsp;&nbsp;
			</font></td><%
sql="SELECT * FROM markalar"
Set markalar=Conn.Execute(sql)%>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<select style="font-family: Tahoma; font-size: 10pt; color: #666666" size="1" name="marka">
    	             <option value="-" salected>L�tfen Se�iniz</option><%
    	             Do While Not markalar.Eof %>
    	             <option value="<%=markalar("marka")%>"><%=markalar("marka")%></option><%
    	             markalar.MoveNext
    	             Loop %>
                  </select></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="34" bordercolor="#F7F7F7" id="table3">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Model&nbsp;&nbsp;&nbsp;&nbsp; 
			</font></td>
			<td width="9">
			<p align="center">&nbsp;</td>
			<td width="524">
                     &nbsp;<input type="text" name="model" size="20"></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="31" bordercolor="#F7F7F7" id="table4">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Model 
			Y�l�&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<input type="text" name="modelyili" size="20"></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="29" bordercolor="#F7F7F7" id="table5">
		<tr>
			<td valign="top">
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Kasa 
			Tipi&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9" valign="top">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<select name="kasatipi" size="7" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<option selected value="-">Bilinmiyor..</option>
			<option value="Cabriolet">Cabriolet</option>
			<option value="Coupe">Coupe</option>
			<option value="Hatchback">Hatchback</option>
			<option value="Minivan">Minivan</option>
			<option value="MPV">MPV</option>
			<option value="Sedan">Sedan</option>
			<option value="Station vagon">Station vagon</option>
			<option value="SUV">SUV</option>
			</select></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="27" bordercolor="#F7F7F7" id="table6">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Arac�n 
			KM' si&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<input type="text" name="km" size="20"></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="28" bordercolor="#F7F7F7" id="table7">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Fiyat�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<input type="text" name="fiyat" size="20">
			<SELECT name="kur" size="1" style="font-family: Tahoma; font-size: 10pt; color: #CC3300"><OPTION value="YTL"
  selected>YTL</OPTION><OPTION value="USD">USD</OPTION><OPTION 
  value="EUR">EUR</OPTION></SELECT></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="29" bordercolor="#F7F7F7" id="table8">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">�lan 
			Ba�l���&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<input type="text" name=baslik size="43"></td>
		</tr>
	</table>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="20" bordercolor="#F7F7F7" id="table9">
		<tr>
			<td valign="top">
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">Sat�c�n�n Yorumlar�&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9" valign="top">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<textarea name="saticiyorumlari" rows="5" cols="35"></textarea></td>
		</tr>
	</table>
	<hr width="98%" size="1" color="#C0C0C0">
</div>
</div>

<p>&nbsp;&nbsp; <b><font size="2" face="Verdana" color="#0099CC">Detayl� Bilgi</font></b></p>
	<hr width="98%" size="1" color="#C0C0C0">
	<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="31" bordercolor="#F7F7F7" id="table10">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">
			Kullan�m&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<SELECT name="kullanim" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Se�iniz..</OPTION><OPTION value="�kinci El">�kinci El</OPTION>
			<OPTION 
  value="Yeni (S�f�r)">Yeni (S�f�r)</OPTION></SELECT></td>
		</tr>
	</table>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="31" bordercolor="#F7F7F7" id="table11">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">Renk&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<SELECT name="renk" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Se�iniz..</OPTION><OPTION value="Alt�n">Alt�n</OPTION><OPTION 
  value="Amarant">Amarant</OPTION><OPTION value="AtlasxGrisi">Atlas 
  Grisi</OPTION><OPTION value="Bak�r">Bak�r</OPTION><OPTION 
  value="Bej">Bej</OPTION><OPTION value="Beyaz">Beyaz</OPTION><OPTION 
  value="Bordo">Bordo</OPTION><OPTION value="BuzxMavisi">Buz Mavisi</OPTION><OPTION 
  value="BuzxYe�ili">Buz Ye�ili</OPTION><OPTION value="�elikxGrisi">�elik 
  Grisi</OPTION><OPTION value="Fildi�i">Fildi�i</OPTION><OPTION 
  value="F�me">F�me</OPTION><OPTION value="Grixmetx">Gri-met.</OPTION><OPTION 
  value="G�m��">G�m��</OPTION><OPTION value="Hardal">Hardal</OPTION><OPTION 
  value="Ihlamurx�i�e�i">Ihlamur �i�e�i</OPTION><OPTION 
  value="Kahverengi">Kahverengi</OPTION><OPTION 
  value="Kavuni�i">Kavuni�i</OPTION><OPTION value="K�rm�z�">K�rm�z�</OPTION><OPTION 
  value="Krem">Krem</OPTION><OPTION value="Lacivert">Lacivert</OPTION><OPTION 
  value="Lila">Lila</OPTION><OPTION value="MavixxxA��k">Mavi - A��k</OPTION><OPTION 
  value="MavixxxKoyu">Mavi - Koyu</OPTION><OPTION value="MavixxxMetalik">Mavi - 
  Metalik</OPTION><OPTION value="MavixxxOkyanus">Mavi - Okyanus</OPTION><OPTION 
  value="MavixxxParlement">Mavi - Parlement</OPTION><OPTION 
  value="MavixxxSiyah">Mavi - Siyah</OPTION><OPTION value="Mor">Mor</OPTION><OPTION 
  value="Pembe">Pembe</OPTION><OPTION value="Petrol">Petrol</OPTION><OPTION 
  value="SahraxBeji">Sahra Beji</OPTION><OPTION value="Sar�">Sar�</OPTION><OPTION 
  value="Siyah">Siyah</OPTION><OPTION value="Somon">Somon</OPTION><OPTION 
  value="�ampanya">�ampanya</OPTION><OPTION value="�eytanxK�rm�z�s�">�eytan 
  K�rm�z�s�</OPTION><OPTION value="Tar��n">Tar��n</OPTION><OPTION 
  value="TitanyumxGrisi">Titanyum Grisi</OPTION><OPTION 
  value="Turuncu">Turuncu</OPTION><OPTION value="Yakut">Yakut</OPTION><OPTION 
  value="Ye�il">Ye�il</OPTION><OPTION value="Ye�ilxxxA��k">Ye�il - 
  A��k</OPTION><OPTION value="Ye�ilxxxKoyu">Ye�il - Koyu</OPTION><OPTION 
  value="Ye�ilxxxMetalik">Ye�il - Metalik</OPTION><OPTION 
  value="Ye�ilxxxSiyah">Ye�il - Siyah</OPTION><OPTION value="YunusxGrisi">Yunus 
  Grisi</OPTION></SELECT></td>
		</tr>
	</table>
</div>

</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="31" bordercolor="#F7F7F7" id="table12">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">Silindir Hacmi&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<SELECT name="silindirhacmi" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Se�iniz..</OPTION><OPTION value=600>600</OPTION><OPTION 
  value=700>700</OPTION><OPTION value=800>800</OPTION><OPTION 
  value=900>900</OPTION><OPTION value=1000>1000</OPTION><OPTION 
  value=1100>1100</OPTION><OPTION value=1200>1200</OPTION><OPTION 
  value=1300>1300</OPTION><OPTION value=1400>1400</OPTION><OPTION 
  value=1500>1500</OPTION><OPTION value=1600>1600</OPTION><OPTION 
  value=1700>1700</OPTION><OPTION value=1800>1800</OPTION><OPTION 
  value=1900>1900</OPTION><OPTION value=2000>2000</OPTION><OPTION 
  value=2100>2100</OPTION><OPTION value=2200>2200</OPTION><OPTION 
  value=2300>2300</OPTION><OPTION value=2400>2400</OPTION><OPTION 
  value=2500>2500</OPTION><OPTION value=2600>2600</OPTION><OPTION 
  value=2700>2700</OPTION><OPTION value=2800>2800</OPTION><OPTION 
  value=2900>2900</OPTION><OPTION value=3000>3000</OPTION><OPTION 
  value=3100>3100</OPTION><OPTION value=3200>3200</OPTION><OPTION 
  value=3300>3300</OPTION><OPTION value=3400>3400</OPTION><OPTION 
  value=3500>3500</OPTION><OPTION value=3600>3600</OPTION><OPTION 
  value=3700>3700</OPTION><OPTION value=3800>3800</OPTION><OPTION 
  value=3900>3900</OPTION><OPTION value=4000>4000</OPTION><OPTION 
  value=4100>4100</OPTION><OPTION value=4200>4200</OPTION><OPTION 
  value=4300>4300</OPTION><OPTION value=4400>4400</OPTION><OPTION 
  value=4500>4500</OPTION><OPTION value=4600>4600</OPTION><OPTION 
  value=4700>4700</OPTION><OPTION value=4800>4800</OPTION><OPTION 
  value=4900>4900</OPTION><OPTION value=5000>5000</OPTION><OPTION 
  value=5100>5100</OPTION><OPTION value=5200>5200</OPTION><OPTION 
  value=5300>5300</OPTION><OPTION value=5400>5400</OPTION><OPTION 
  value=5500>5500</OPTION><OPTION value=5600>5600</OPTION><OPTION 
  value=5700>5700</OPTION><OPTION value=5800>5800</OPTION><OPTION 
  value=5900>5900</OPTION><OPTION value=6000>6000</OPTION><OPTION 
  value=6100>6100</OPTION><OPTION value=6200>6200</OPTION><OPTION 
  value=6300>6300</OPTION><OPTION value=6400>6400</OPTION><OPTION 
  value=6500>6500</OPTION><OPTION value=6600>6600</OPTION><OPTION 
  value=6700>6700</OPTION><OPTION value=6800>6800</OPTION><OPTION 
  value=6900>6900</OPTION><OPTION value=7000>7000</OPTION></SELECT></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="30" bordercolor="#F7F7F7" id="table13">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">Hasar 
			Durumu&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<SELECT name="hasardurumu" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Se�iniz..</OPTION><OPTION value=AzxHasarl�>Az Hasarl�</OPTION><OPTION 
  value=Hasarl�>Hasarl�</OPTION><OPTION value=Hasars�z>Hasars�z</OPTION><OPTION 
  value=Pert>Pert</OPTION></SELECT></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="27" bordercolor="#F7F7F7" id="table14">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">Yak�t&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<SELECT name="yakit" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Se�iniz</OPTION><OPTION value=Benzin>Benzin</OPTION><OPTION 
  value=Dizel>Dizel</OPTION><OPTION value=Hybrid>Hybrid</OPTION><OPTION 
  value=LPG>LPG</OPTION></SELECT></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="30" bordercolor="#F7F7F7" id="table15">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">Kap� 
			Say�s�&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<font face="Tahoma"><SELECT name="kapisayisi" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Se�iniz..</OPTION><OPTION value=2>2</OPTION><OPTION 
  value=3>3</OPTION><OPTION value=4>4</OPTION><OPTION value=5>5</OPTION></SELECT></font></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="28" bordercolor="#F7F7F7" id="table16">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">Krediye Uygun mu&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<SELECT name="krediyeuygun" size="1" style="font-family: Tahoma; font-size: 10pt; color: #666666">
			<OPTION value="-" 
  selected>Se�iniz..</OPTION><OPTION value=Bilinmiyor>Bilinmiyor</OPTION><OPTION 
  value=Uygun>Uygun</OPTION><OPTION value=UygunxDe�il>Uygun De�il</OPTION></SELECT></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="27" bordercolor="#F7F7F7" id="table17">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">Motor 
			G�c� ( </font><font face="Tahoma" size="2" color="#0099CC">HP</font><font face="Tahoma" size="2" color="#CC3300"> 
			)&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<input type="text" name="motorgucu" size="20"></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="26" bordercolor="#F7F7F7" id="table18">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">Vites&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<SELECT name="vites" style="font-family: Tahoma; font-size: 10pt; color: #666666" size="1">
			<OPTION value="-" 
  selected>Se�iniz..</OPTION><OPTION value=D�z>D�z</OPTION><OPTION 
  value=Otomatik>Otomatik</OPTION><OPTION 
value=Tiptronik>Tiptronik</OPTION></SELECT></td>
		</tr>
	</table>
</div>

	<hr width="98%" size="1" color="#C0C0C0">
<p><b><font size="2" face="Verdana" color="#0099CC">&nbsp;&nbsp; G�venlik</font></b></p>
	<hr width="98%" size="1" color="#C0C0C0">
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table19">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;4 �eker Sistemi&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="cekersistem"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;ABS&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="aracabs"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Alarm&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="alarm"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table20">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;ESP 
			(Elektronik stabilite kontrol�)&nbsp;&nbsp;&nbsp; 
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="esp"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Hava Yast��� Perde&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="havayastigi"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Hava Yast��� S�r�c�&nbsp;&nbsp;&nbsp; 
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="havayastigisurucu"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table21">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Isofix �ocuk Koltu�u Ba�lant�s�&nbsp;&nbsp;&nbsp; 
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="cocuk_koltugu"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Hava Yast��� Yan&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="havayastigiyan"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Hava Yast��� Yolcu&nbsp;&nbsp;&nbsp; 
			</font></td>
			<td width="20"><font face="Tahoma">
			<input  type=checkbox value="1" 
name=havayastigiyolcu></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>
	
	<hr width="98%" size="1" color="#C0C0C0">
<p><b><font size="2" face="Verdana" color="#0099CC">&nbsp;&nbsp; �� Donan�m</font></b></p>
	<hr width="98%" size="1" color="#C0C0C0">
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table22">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Cam Elektrikli Arka&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="canelektirkliarka"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Cam Elektrikli �n&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="canelektirklion"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;CD MP3 �alar&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="cdcalar"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table23">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;�oklu CD �alar&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="coklucdcalar"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Deri D��eme&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="deridoseme"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Dikiz Aynalar� Elektrikli D��&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="dikizaynalarielektiriklidis"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table24">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Dikiz Aynas� I���a Duyarl� ��&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="dikizaynasi"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Direksiyon Deri&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="direksiyonderi"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Direksiyon Hidrolik&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="hidrolikdireksiyon"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table25">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Direksiyondan Kumandal� Radyo �alar/CD&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="direksiyondanradyo"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Klima&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="klima"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;H�z Sabitleme Sistemi (Cruise control)&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="hizsabitleme"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table26">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Merkezi Kilit&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="merkezikilit"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Navigasyon&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="navigasyon"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Merkezi Kilit Uzaktan Kumandal�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="merkezikilituzaktan"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table27">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Radyo �alar&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="radyocalar"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Telefon Haz�rl���&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="telefonhazirligi"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;TV&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="tv"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table28">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Yol Bilgisayar�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="yolbilgisayari"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			&nbsp;</td>
			<td width="20">&nbsp;</td>
			<td width="56">&nbsp;</td>
			<td>
			&nbsp;</td>
			<td width="20">&nbsp;</td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
	
	<hr width="98%" size="1" color="#C0C0C0">
<p><b><font size="2" face="Verdana" color="#0099CC">&nbsp;&nbsp; D�� Donan�m</font></b></p>
	<hr width="98%" size="1" color="#C0C0C0">

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table29">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Aliminyum Al���ml� Jantlar&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="aliminyumjantlar"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;�eki Kancas�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="ceki_kancasi"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Far Otomatik&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="farotomatik"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table30">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Far Sis&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="farsis"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Far Xenon&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="farxenon"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Far Y�kseklik Ayar�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="faryukseklik_ayari"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table31">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Modifiyeli&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="modifiyeli"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Park Sens�r�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="parksensoru"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Sunroof&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="sunroof"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table32">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Ya�mur Sens�r�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="yagmur_sensoru"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			&nbsp;</td>
			<td width="20">&nbsp;</td>
			<td width="56">&nbsp;</td>
			<td>
			&nbsp;</td>
			<td width="20">&nbsp;</td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
	
	<hr width="98%" size="1" color="#C0C0C0">

<p><b><font size="2" face="Verdana" color="#0099CC">&nbsp;&nbsp; Di�er Bilgiler</font></b></p>
	<hr width="98%" size="1" color="#C0C0C0">

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table33">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Engelli Arabas�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="engelli_arabasi"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Garanti Kapsam�nda&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="garanti_kapsaminda"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;�htiya�tan (Acil) Sat�l�k&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="ihtiyactan_acil_satilik"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table34">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Klasik Araba&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="klasik_araba"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Masrafs�z&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="masrafsiz"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Pazarl�ks�z Sat�l�k&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="pazarliksiz_satilik"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
</div>

	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table35">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Servis Bak�ml�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="servis_bakimli"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Sigara ��ilmemi�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="sigara_icilmemis"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Takaslanabilir&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="takaslanabilir"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>

	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table36">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Vade Olur&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="vade_olur"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			&nbsp;</td>
			<td width="20">&nbsp;</td>
			<td width="56">&nbsp;</td>
			<td>
			&nbsp;</td>
			<td width="20">&nbsp;</td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>
	
	<hr width="98%" size="1" color="#C0C0C0">

<p><b><font size="2" face="Verdana" color="#0099CC">&nbsp;&nbsp; Foto�raflar</font></b></p>
	<hr width="98%" size="1" color="#C0C0C0">

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="29" bordercolor="#F7F7F7" id="table43">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Foto 1&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<input type="text" name="resim1" size="20"><a ONCLICK="window.open('ilan_Resim.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
			<font color="#CC3300" size="2" face="Verdana">&nbsp;G�zat</font></a></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="29" bordercolor="#F7F7F7" id="table44">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Foto 2&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<input type="text" name="resim2" size="20"><a ONCLICK="window.open('ilan_Resim2.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
			<font color="#CC3300" size="2" face="Verdana">&nbsp;G�zat</font></a></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="29" bordercolor="#F7F7F7" id="table45">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Foto 3&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<input type="text" name="resim3" size="20"><a ONCLICK="window.open('ilan_Resim3.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
			<font color="#CC3300" size="2" face="Verdana">&nbsp;G�zat</font></a></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="29" bordercolor="#F7F7F7" id="table46">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Foto 4&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<input type="text" name="resim4" size="20"><a ONCLICK="window.open('ilan_Resim4.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
			<font color="#CC3300" size="2" face="Verdana">&nbsp;G�zat</font></a></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="29" bordercolor="#F7F7F7" id="table47">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Foto 5&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<input type="text" name="resim5" size="20"><a ONCLICK="window.open('ilan_Resim5.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
			<font color="#CC3300" size="2" face="Verdana">&nbsp;G�zat</font></a></td>
		</tr>
	</table>
</div>

	<hr width="98%" size="1" color="#C0C0C0">

	<p><b><font size="2" face="Verdana" color="#0099CC">&nbsp;&nbsp; �lan B�lgesi</font></b></p>
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table48">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Vitrin&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="vitrin"></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;S�f�r 
			(Yeni)&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="sifir"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;�kinci 
			El&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="ikinciel"></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>

	<p align="center"><input type="submit" value="�lan� Ekle" style="font-family: Verdana; font-size: 10pt; color: #0099CC; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
</form>
	</body>

</html>