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
			<td height="24" bgcolor="#F4F4F4">&nbsp;<font size="2" face="Verdana" color="#CC3300">Detayl� 
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
						Y�l�</font></td>
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
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Kullan�m</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140">
						<SELECT name="akullanim" size="1" style="font-family: Tahoma; font-size: 8pt; color: #666666">
			<OPTION 
  selected value="">Fark Etmez..</OPTION><OPTION value="�kinci El">�kinci El</OPTION>
			<OPTION 
  value="Yeni (S�f�r)">Yeni (S�f�r)</OPTION></SELECT></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Yak�t</font></td>
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
  selected value="">Fark Etmez..</OPTION><OPTION value=D�z>D�z</OPTION><OPTION 
  value=Otomatik>Otomatik</OPTION><OPTION 
value=Tiptronik>Tiptronik</OPTION></SELECT></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Kap�</font></td>
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
  selected value="">Fark Etmez..</OPTION><OPTION value="Alt�n">Alt�n</OPTION><OPTION 
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
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Masrafs�z</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="amasrafsiz"></font></td>
					</tr>
					<tr>
						<td><font size="2" face="Tahoma" color="#666666">&nbsp;Foto�rafl�</font></td>
						<td width="134">
						<p align="center">
						<font size="2" face="Tahoma" color="#666666">:</font></td>
						<td width="140"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="foto"></font></td>
					</tr>
				</table>
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="30" bordercolor="#F7F7F7" id="table3">
					<tr>
						<td>&nbsp;<input type="submit" value="Aramay� Ba�lat" style="font-family: Tahoma; color: #CC3300; border: 1px solid #C0C0C0; background-color: #FFFFFF"></td>
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
			<td bgcolor="#F4F4F4" height="22">&nbsp;<font face="Tahoma" size="2" color="#CC3300">D�viz 
			Kurlar�</font></td>
		</tr>
		<tr>
			<td>
			<table border="0" cellpadding="0" style="border-collapse: collapse" width="79%" height="69" bordercolor="#F7F7F7" id="table8">
				<tr>
					<td width="160"><font size="2" face="Arial" color="#808080">&nbsp;D�viz</font></td>
					<td width="172"><font size="2" face="Arial" color="#808080">&nbsp;Al��</font></td>
					<td><font size="2" face="Arial" color="#808080">&nbsp;Sat��</font></td>
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
					<font size="2" face="Tahoma" color="#CC3300">&nbsp;Euro �</font></td>
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
			�statisti�i</font></td>
		</tr>
		<tr>
			<td>
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" height="62" bordercolor="#F7F7F7" id="table7">
					<tr>
						<td><font face="Arial" size="2" color="#666666">&nbsp;<a href="sifir-oto-ilanlari.asp" style="text-decoration: none">S�f�r 
						Oto&nbsp;�lan Say�s�</a></font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Arial" color="#666666">:</font></td>
						<td width="51"><b>
						<font color="#CC3300" size="2" face="Arial">&nbsp;<%=mrhsifir.recordcount%></font></b></td>
					</tr>
					<tr>
						<td><font size="2" face="Arial" color="#666666">&nbsp;<a href="ikinci-el-oto-ilanlari.asp" style="text-decoration: none">�kinci 
						El Oto �lan Say�s�</a></font></td>
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
						�lan Say�s�</a></font></td>
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