<!--#include file="data.asp"-->
<%
Public Function VeriAl(strGelen)
Set objVeriAl = Server.CreateObject("Microsoft.XMLHTTP" )
objVeriAl.Open "GET" , strGelen, FALSE
objVeriAl.sEnd
VeriAl = objVeriAl.Responsetext
SET objVeriAl = Nothing
End Function

strAdres = "http://www.tcmb.gov.tr/kurlar/today.html"
strVeri = VeriAL(strAdres)
iDolar=InStr(strVeri,"USD" )
strDolarAlis=Mid(strVeri,iDolar+50,10)
strDolarSatis=Mid(strVeri,iDolar+51,10)

iEuro=InStr(strVeri,"EUR" )

strEuroAlis=Mid(strVeri,iEuro+38,11) 'alis
strEuroSatis=Mid(strVeri,iEuro+50,11) 'satis
%>
<%
Set mrhtoplam = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar order by id desc"
mrhtoplam.Open sql,baglanti,1,3
%>
<%
Set mrhsifir = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where sifir=1 order by id desc"
mrhsifir.Open sql,baglanti,1,3
%>
<%
Set mrhikinciel = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where ikinciel=1 order by id desc"
mrhikinciel.Open sql,baglanti,1,3
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body topmargin="3" leftmargin="0">

<div align="center">
	<table border="1" cellpadding="0" style="border-collapse: collapse" width="97%" height="319" bordercolor="#DDDDDD" id="table1">
		<tr>
			<td height="24" bgcolor="#F4F4F4">&nbsp;<font size="2" face="Verdana" color="#CC3300">Detaylý 
			Arama</font></td>
		</tr><form method="get" action="oto-ilanlari.asp">
		<tr>
			<td>
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="227" bordercolor="#F7F7F7" id="table2">
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Marka</font></td>
						<td width="134"><%
sql="SELECT * FROM markalar"
Set markalar=Conn.Execute(sql)%>
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140">
						<select style="font-family: Tahoma; font-size: 8pt; color: #666666; float:left" size="1" name="amarka">
    	             <option salected value="">Fark Etmez..</option><%
    	             Do While Not markalar.Eof %>
    	             <option value="<%=markalar("marka")%>"><%=markalar("marka")%></option><%
    	             markalar.MoveNext
    	             Loop %>
                  </select></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Model</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140">
						<input type="text" name="amodel" size="16" style="font-family: Tahoma; font-size: 8pt; color: #666666"></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Model 
						Yýlý</font></td>
						<td width="134"><%
sql="SELECT * FROM ilanlar"
Set ilanmodelyili=Conn.Execute(sql)%>
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140">
						<select style="font-family: Tahoma; font-size: 8pt; color: #666666; float:left" size="1" name="amodelyili">
    	             <option salected value="">Fark Etmez..</option><%
    	             Do While Not ilanmodelyili.Eof %>
    	             <option value="<%=ilanmodelyili("modelyili")%>"><%=ilanmodelyili("modelyili")%></option><%
    	             ilanmodelyili.MoveNext
    	             Loop %>
                  </select></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Kullaným</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140">
						<SELECT name="akullanim" size="1" style="font-family: Tahoma; font-size: 8pt; color: #666666">
			<OPTION 
  selected value="">Fark Etmez..</OPTION><OPTION value="Ýkinci El">Ýkinci El</OPTION>
			<OPTION 
  value="Yeni (Sýfýr)">Yeni (Sýfýr)</OPTION></SELECT></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Yakýt</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140">
						<SELECT name="ayakit" size="1" style="font-family: Tahoma; font-size: 8pt; color: #666666">
			<OPTION 
  selected value="">Fark Etmez..</OPTION><OPTION value=Benzin>Benzin</OPTION><OPTION 
  value=Dizel>Dizel</OPTION><OPTION value=Hybrid>Hybrid</OPTION><OPTION 
  value=LPG>LPG</OPTION></SELECT></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Vites</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140">
						<SELECT name="avites" style="font-family: Tahoma; font-size: 8pt; color: #666666" size="1">
			<OPTION 
  selected value="">Fark Etmez..</OPTION><OPTION value=Düz>Düz</OPTION><OPTION 
  value=Otomatik>Otomatik</OPTION><OPTION 
value=Tiptronik>Tiptronik</OPTION></SELECT></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Kapý</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140"><font face="Tahoma">
						<SELECT name="akapisayisi" size="1" style="font-family: Tahoma; font-size: 8pt; color: #666666">
			<OPTION 
  selected value="">Fark Etmez..</OPTION><OPTION value=2>2</OPTION><OPTION 
  value=3>3</OPTION><OPTION value=4>4</OPTION><OPTION value=5>5</OPTION></SELECT></font></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Renk</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140">
						<SELECT name="arenk" size="1" style="font-family: Tahoma; font-size: 8pt; color: #666666">
			<OPTION 
  selected value="">Fark Etmez..</OPTION><OPTION value="Altýn">Altýn</OPTION><OPTION 
  value="Amarant">Amarant</OPTION><OPTION value="AtlasxGrisi">Atlas 
  Grisi</OPTION><OPTION value="Bakýr">Bakýr</OPTION><OPTION 
  value="Bej">Bej</OPTION><OPTION value="Beyaz">Beyaz</OPTION><OPTION 
  value="Bordo">Bordo</OPTION><OPTION value="BuzxMavisi">Buz Mavisi</OPTION><OPTION 
  value="BuzxYeþili">Buz Yeþili</OPTION><OPTION value="ÇelikxGrisi">Çelik 
  Grisi</OPTION><OPTION value="Fildiþi">Fildiþi</OPTION><OPTION 
  value="Füme">Füme</OPTION><OPTION value="Grixmetx">Gri-met.</OPTION><OPTION 
  value="Gümüþ">Gümüþ</OPTION><OPTION value="Hardal">Hardal</OPTION><OPTION 
  value="IhlamurxÇiçeði">Ihlamur Çiçeði</OPTION><OPTION 
  value="Kahverengi">Kahverengi</OPTION><OPTION 
  value="Kavuniçi">Kavuniçi</OPTION><OPTION value="Kýrmýzý">Kýrmýzý</OPTION><OPTION 
  value="Krem">Krem</OPTION><OPTION value="Lacivert">Lacivert</OPTION><OPTION 
  value="Lila">Lila</OPTION><OPTION value="MavixxxAçýk">Mavi - Açýk</OPTION><OPTION 
  value="MavixxxKoyu">Mavi - Koyu</OPTION><OPTION value="MavixxxMetalik">Mavi - 
  Metalik</OPTION><OPTION value="MavixxxOkyanus">Mavi - Okyanus</OPTION><OPTION 
  value="MavixxxParlement">Mavi - Parlement</OPTION><OPTION 
  value="MavixxxSiyah">Mavi - Siyah</OPTION><OPTION value="Mor">Mor</OPTION><OPTION 
  value="Pembe">Pembe</OPTION><OPTION value="Petrol">Petrol</OPTION><OPTION 
  value="SahraxBeji">Sahra Beji</OPTION><OPTION value="Sarý">Sarý</OPTION><OPTION 
  value="Siyah">Siyah</OPTION><OPTION value="Somon">Somon</OPTION><OPTION 
  value="Þampanya">Þampanya</OPTION><OPTION value="ÞeytanxKýrmýzýsý">Þeytan 
  Kýrmýzýsý</OPTION><OPTION value="Tarçýn">Tarçýn</OPTION><OPTION 
  value="TitanyumxGrisi">Titanyum Grisi</OPTION><OPTION 
  value="Turuncu">Turuncu</OPTION><OPTION value="Yakut">Yakut</OPTION><OPTION 
  value="Yeþil">Yeþil</OPTION><OPTION value="YeþilxxxAçýk">Yeþil - 
  Açýk</OPTION><OPTION value="YeþilxxxKoyu">Yeþil - Koyu</OPTION><OPTION 
  value="YeþilxxxMetalik">Yeþil - Metalik</OPTION><OPTION 
  value="YeþilxxxSiyah">Yeþil - Siyah</OPTION><OPTION value="YunusxGrisi">Yunus 
  Grisi</OPTION></SELECT></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Masrafsýz</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="amasrafsiz"></font></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Fotoðraflý</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="foto"></font></td>
					</tr>
				</table>
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="30" bordercolor="#F7F7F7" id="table3">
					<tr>
						<td>&nbsp;<input type="submit" value="Aramayý Baþlat" style="font-family: Tahoma; color: #CC3300; border: 1px solid #C0C0C0; background-color: #FFFFFF"></td>
					</tr></form>
				</table>
			</div>
			</td>
		</tr>
	</table><br>
</div>

<div align="center">
	<table border="1" cellpadding="0" style="border-collapse: collapse" width="97%" height="62" bordercolor="#DDDDDD" id="table5">
		<tr>
			<td bgcolor="#F4F4F4" height="22">&nbsp;<font face="Tahoma" size="2" color="#CC3300">Döviz 
			Kurlarý</font></td>
		</tr>
		<tr>
			<td>
			<table border="0" cellpadding="0" style="border-collapse: collapse" width="79%" height="69" bordercolor="#F7F7F7" id="table8">
				<tr>
					<td width="160"><font size="2" face="Arial" color="#808080">&nbsp;Döviz</font></td>
					<td width="172"><font size="2" face="Arial" color="#808080">&nbsp;Alýþ</font></td>
					<td><font size="2" face="Arial" color="#808080">&nbsp;Satýþ</font></td>
				</tr>
				<tr>
					<td width="160">
					<font size="2" face="Tahoma" color="#CC3300">&nbsp;Dolar $</font></td>
					<td width="172">
					<font size="2" face="Tahoma" color="#666666"><%=strdolaralis%></font></td>
					<td><font size="2" face="Tahoma" color="#666666"><%=strdolarsatis%></font></td>
				</tr>
				<tr>
					<td width="160">
					<font size="2" face="Tahoma" color="#CC3300">&nbsp;Euro €</font></td>
					<td width="172">
					<font size="2" face="Tahoma" color="#666666"><%=streuroalis%></font></td>
					<td><font size="2" face="Tahoma" color="#666666"><%=streurosatis%></font></td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
</div>

<div align="center">
	<br>
</div>

<div align="center">
	<table border="1" cellpadding="0" style="border-collapse: collapse" width="97%" height="97" bordercolor="#DDDDDD" id="table6">
		<tr>
			<td bgcolor="#F4F4F4" height="22">&nbsp;<font face="Tahoma" size="2" color="#CC3300">Site 
			Ýstatistiði</font></td>
		</tr>
		<tr>
			<td>
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="62" bordercolor="#F7F7F7" id="table7">
					<tr>
						<td><font face="Arial" size="2" color="#666666">&nbsp;<a href="sifir-oto-ilanlari.asp" style="text-decoration: none">Sýfýr 
						Oto&nbsp;Ýlan Sayýsý</a></font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Arial" color="#666666">:</font></td>
						<td width="51"><b>
						<font color="#CC3300" size="2" face="Arial">&nbsp;<%=mrhsifir.recordcount%></font></b></td>
					</tr>
					<tr>
						<td><font size="2" face="Arial" color="#666666">&nbsp;<a href="ikinci-el-oto-ilanlari.asp" style="text-decoration: none">Ýkinci 
						El Oto Ýlan Sayýsý</a></font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Arial" color="#666666">:</font></td>
						<td width="51"><b>
						<font color="#CC3300" size="2" face="Arial">&nbsp;<%=mrhikinciel.recordcount%></font></b></td>
					</tr>
					<tr>
						<td height="22">
						<font size="2" face="Arial" color="#666666">&nbsp;<a href="tum-oto-ilanlari.asp" style="text-decoration: none">Toplam 
						Oto 
						Ýlan Sayýsý</a></font></td>
						<td width="9" height="22">
						<p align="center">
						<font size="2" face="Arial" color="#666666">:</font></td>
						<td width="51" height="22">
						<b>
						<font size="2" face="Arial" color="#CC3300">&nbsp;<%=mrhtoplam.recordcount%></font></b></td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
	</table>
</div>

</body>

</html>