<% @Language=VBScript %>
<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where id="&id
yeniasp.Open sql,baglanti,1,3

islem=Request.QueryString("islem")
if islem="duzenle" then
call duzenle
end if
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>Oto �lan Y�netim Paneli</title>
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
							<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" bordercolor="#666666" id="table13" height="2059">
								<tr>
									<td bgcolor="#DADADA" valign="top">
									<body>

<div align="center"><br>
<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">�LAN 
			G�NCELLE</font></td>
		</tr>
	</table></div>

<p align="left">&nbsp;&nbsp; <b><font size="2" face="Verdana" color="#0099CC">Genel �zellikler</font></b></p>
<hr width="98%" size="1" color="#C0C0C0">

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="34" bordercolor="#F7F7F7" id="table49">
		<tr><form action="ilan-duzenle.asp?id=<%=yeniasp("id")%>&islem=duzenle" method="post" name="ilan">
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">�lan 
			No&nbsp;&nbsp;&nbsp;&nbsp; 
			</font></td>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">
                     &nbsp;<input type="text" name="ilanno" size="15" value="<%=yeniasp("id")%>"disabled  style="font-family: Tahoma; font-size: 10pt; color: #CC3300"></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="30" bordercolor="#F7F7F7" id="table2">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Marka&nbsp;&nbsp;&nbsp;&nbsp;
			</font></td>
<%
sql="SELECT * FROM markalar"
Set markalar=Conn.Execute(sql)%>
			<td width="9">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<select style="font-family: Tahoma; font-size: 10pt; color: #666666" size="1" name="marka">
    	             <option value="-" salected>L�tfen Se�iniz</option><%
    	             Do While Not markalar.Eof %>
    	             <option value="<%=markalar("marka")%>"<%If (Trim(yeniasp("marka")))=markalar("marka") Then Response.Write " selected" End If%>><%=markalar("marka")%></option><%
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
			<p align="center"><font color="#CC3300" size="2" face="Tahoma">:</font></td>
			<td width="524">
                     &nbsp;<input type="text" name="model" size="20" value="<%=yeniasp("model")%>"></td>
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
			<td width="524">&nbsp;<input type="text" name="modelyili" size="20" value="<%=yeniasp("modelyili")%>"></td>
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
			<option selected value="-"<%If Trim(yeniasp("kasatipi"))="-" Then Response.Write " selected" End If%>>Bilinmiyor..</option>
			<option value="Cabriolet"<%If Trim(yeniasp("kasatipi"))="Cabriolet" Then Response.Write " selected" End If%>>Cabriolet</option>
			<option value="Coupe"<%If Trim(yeniasp("kasatipi"))="Coupe" Then Response.Write " selected" End If%>>Coupe</option>
			<option value="Hatchback"<%If Trim(yeniasp("kasatipi"))="Hatchback" Then Response.Write " selected" End If%>>Hatchback</option>
			<option value="Minivan"<%If Trim(yeniasp("kasatipi"))="Minivan" Then Response.Write " selected" End If%>>Minivan</option>
			<option value="MPV"<%If Trim(yeniasp("kasatipi"))="MPV" Then Response.Write " selected" End If%>>MPV</option>
			<option value="Sedan"<%If Trim(yeniasp("kasatipi"))="Sedan" Then Response.Write " selected" End If%>>Sedan</option>
			<option value="Station vagon"<%If Trim(yeniasp("kasatipi"))="Station vagon" Then Response.Write " selected" End If%>>Station vagon</option>
			<option value="SUV"<%If Trim(yeniasp("kasatipi"))="SUV" Then Response.Write " selected" End If%>>SUV</option>
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
			<td width="524">&nbsp;<input type="text" name="km" size="20" value="<%=yeniasp("km")%>"></td>
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
			<td width="524">&nbsp;<input type="text" name="fiyat" size="20" value="<%=yeniasp("fiyat")%>">
			<SELECT name="kur" size="1" style="font-family: Tahoma; font-size: 10pt; color: #CC3300"><OPTION value="YTL"
  selected<%If Trim(yeniasp("kur"))="YTL" Then Response.Write " selected" End If%>>YTL</OPTION><OPTION value="USD"<%If Trim(yeniasp("kur"))="USD" Then Response.Write " selected" End If%>>USD</OPTION><OPTION 
  value="EUR"<%If Trim(yeniasp("kur"))="EUR" Then Response.Write " selected" End If%>>EUR</OPTION></SELECT></td>
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
			<td width="524">&nbsp;<input type="text" name=baslik size="43" value="<%=yeniasp("baslik")%>"></td>
		</tr>
	</table>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="20" bordercolor="#F7F7F7" id="table9">
		<tr>
			<td valign="top">
			<p align="right"><font face="Tahoma" size="2" color="#CC3300">Sat�c�n�n Yorumlar�&nbsp;&nbsp;&nbsp; </font></td>
			<td width="9" valign="top">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="524">&nbsp;<textarea name="saticiyorumlari" rows="5" cols="35"><%=yeniasp("saticiyorumlari")%></textarea></td>
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
			<OPTION value="-"<%If Trim(yeniasp("kullanim"))="-" Then Response.Write " selected" End If%>>Se�iniz..</OPTION>
			<OPTION value="�kinci El"<%If Trim(yeniasp("kullanim"))="�kinci El" Then Response.Write " selected" End If%>>�kinci El</OPTION>
			<OPTION value="Yeni (S�f�r)"<%If Trim(yeniasp("kullanim"))="Yeni (S�f�r)" Then Response.Write " selected" End If%>>Yeni (S�f�r)</OPTION></SELECT></td>
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
			<OPTION value="-" selected<%If Trim(yeniasp("renk"))="-" Then Response.Write " selected" End If%>>Se�iniz..</OPTION>
			<OPTION value="Alt�n"<%If Trim(yeniasp("renk"))="Alt�n" Then Response.Write " selected" End If%>>Alt�n</OPTION>
			<OPTION value="Amarant"<%If Trim(yeniasp("renk"))="Amarant" Then Response.Write " selected" End If%>>Amarant</OPTION>
			<OPTION value="AtlasxGrisi"<%If Trim(yeniasp("renk"))="AtlasxGrisi" Then Response.Write " selected" End If%>>Atlas Grisi</OPTION>
			<OPTION value="Bak�r"<%If Trim(yeniasp("renk"))="Bak�r" Then Response.Write " selected" End If%>>Bak�r</OPTION>
			<OPTION value="Bej"<%If Trim(yeniasp("renk"))="Bej" Then Response.Write " selected" End If%>>Bej</OPTION>
			<OPTION value="Beyaz"<%If Trim(yeniasp("renk"))="Beyaz" Then Response.Write " selected" End If%>>Beyaz</OPTION>
			<OPTION value="Bordo"<%If Trim(yeniasp("renk"))="Bordo" Then Response.Write " selected" End If%>>Bordo</OPTION>
			<OPTION value="BuzxMavisi"<%If Trim(yeniasp("renk"))="BuzxMavisi" Then Response.Write " selected" End If%>>Buz Mavisi</OPTION>
			<OPTION value="BuzxYe�ili"<%If Trim(yeniasp("renk"))="BuzxYe�ili" Then Response.Write " selected" End If%>>Buz Ye�ili</OPTION>
			<OPTION value="�elikxGrisi"<%If Trim(yeniasp("renk"))="�elikxGrisi" Then Response.Write " selected" End If%>>�elik Grisi</OPTION>
			<OPTION value="Fildi�i"<%If Trim(yeniasp("renk"))="Fildi�i" Then Response.Write " selected" End If%>>Fildi�i</OPTION>
			<OPTION value="F�me"<%If Trim(yeniasp("renk"))="F�me" Then Response.Write " selected" End If%>>F�me</OPTION>
			<OPTION value="Grixmetx"<%If Trim(yeniasp("renk"))="Grixmetx" Then Response.Write " selected" End If%>>Gri-met.</OPTION>
			<OPTION value="G�m��"<%If Trim(yeniasp("renk"))="G�m��" Then Response.Write " selected" End If%>>G�m��</OPTION>
			<OPTION value="Hardal"<%If Trim(yeniasp("renk"))="Hardal" Then Response.Write " selected" End If%>>Hardal</OPTION>
			<OPTION value="Ihlamurx�i�e�i"<%If Trim(yeniasp("renk"))="Ihlamurx�i�e�i" Then Response.Write " selected" End If%>>Ihlamur �i�e�i</OPTION>
			<OPTION value="Kahverengi"<%If Trim(yeniasp("renk"))="Kahverengi" Then Response.Write " selected" End If%>>Kahverengi</OPTION>
			<OPTION value="Kavuni�i"<%If Trim(yeniasp("renk"))="Kavuni�i" Then Response.Write " selected" End If%>>Kavuni�i</OPTION>
			<OPTION value="K�rm�z�"<%If Trim(yeniasp("renk"))="K�rm�z�" Then Response.Write " selected" End If%>>K�rm�z�</OPTION>
			<OPTION value="Krem"<%If Trim(yeniasp("renk"))="Krem" Then Response.Write " selected" End If%>>Krem</OPTION>
			<OPTION value="Lacivert"<%If Trim(yeniasp("renk"))="Lacivert" Then Response.Write " selected" End If%>>Lacivert</OPTION>
			<OPTION value="Lila"<%If Trim(yeniasp("renk"))="Lila" Then Response.Write " selected" End If%>>Lila</OPTION>
			<OPTION value="MavixxxA��k"<%If Trim(yeniasp("renk"))="MavixxxA��k" Then Response.Write " selected" End If%>>Mavi - A��k</OPTION>
			<OPTION value="MavixxxKoyu"<%If Trim(yeniasp("renk"))="MavixxxKoyu" Then Response.Write " selected" End If%>>Mavi - Koyu</OPTION>
			<OPTION value="MavixxxMetalik"<%If Trim(yeniasp("renk"))="MavixxxMetalik" Then Response.Write " selected" End If%>>Mavi - Metalik</OPTION>
			<OPTION value="MavixxxOkyanus"<%If Trim(yeniasp("renk"))="MavixxxOkyanus" Then Response.Write " selected" End If%>>Mavi - Okyanus</OPTION>
			<OPTION value="MavixxxParlement"<%If Trim(yeniasp("renk"))="MavixxxParlement" Then Response.Write " selected" End If%>>Mavi - Parlement</OPTION>
			<OPTION value="MavixxxSiyah"<%If Trim(yeniasp("renk"))="MavixxxSiyah" Then Response.Write " selected" End If%>>Mavi - Siyah</OPTION>
			<OPTION value="Mor"<%If Trim(yeniasp("renk"))="Mor" Then Response.Write " selected" End If%>>Mor</OPTION>
			<OPTION value="Pembe"<%If Trim(yeniasp("renk"))="Pembe" Then Response.Write " selected" End If%>>Pembe</OPTION>
			<OPTION value="Petrol"<%If Trim(yeniasp("renk"))="Petrol" Then Response.Write " selected" End If%>>Petrol</OPTION>
			<OPTION value="SahraxBeji"<%If Trim(yeniasp("renk"))="SahraxBeji" Then Response.Write " selected" End If%>>Sahra Beji</OPTION>
			<OPTION value="Sar�"<%If Trim(yeniasp("renk"))="Sar�" Then Response.Write " selected" End If%>>Sar�</OPTION>
			<OPTION value="Siyah"<%If Trim(yeniasp("renk"))="Siyah" Then Response.Write " selected" End If%>>Siyah</OPTION>
			<OPTION value="Somon"<%If Trim(yeniasp("renk"))="Somon" Then Response.Write " selected" End If%>>Somon</OPTION>
			<OPTION value="�ampanya"<%If Trim(yeniasp("renk"))="�ampanya" Then Response.Write " selected" End If%>>�ampanya</OPTION>
			<OPTION value="�eytanxK�rm�z�s�"<%If Trim(yeniasp("renk"))="�eytanxK�rm�z�s�" Then Response.Write " selected" End If%>>�eytan K�rm�z�s�</OPTION>
			<OPTION value="Tar��n"<%If Trim(yeniasp("renk"))="Tar��n" Then Response.Write " selected" End If%>>Tar��n</OPTION>
			<OPTION value="TitanyumxGrisi"<%If Trim(yeniasp("renk"))="TitanyumxGrisi" Then Response.Write " selected" End If%>>Titanyum Grisi</OPTION>
			<OPTION value="Turuncu"<%If Trim(yeniasp("renk"))="Turuncu" Then Response.Write " selected" End If%>>Turuncu</OPTION>
			<OPTION value="Yakut"<%If Trim(yeniasp("renk"))="Yakut" Then Response.Write " selected" End If%>>Yakut</OPTION>
			<OPTION value="Ye�il"<%If Trim(yeniasp("renk"))="Ye�il" Then Response.Write " selected" End If%>>Ye�il</OPTION>
			<OPTION value="Ye�ilxxxA��k"<%If Trim(yeniasp("renk"))="Ye�ilxxxA��k" Then Response.Write " selected" End If%>>Ye�il - A��k</OPTION>
			<OPTION value="Ye�ilxxxKoyu"<%If Trim(yeniasp("renk"))="Ye�ilxxxKoyu" Then Response.Write " selected" End If%>>Ye�il - Koyu</OPTION>
			<OPTION value="Ye�ilxxxMetalik"<%If Trim(yeniasp("renk"))="Ye�ilxxxMetalik" Then Response.Write " selected" End If%>>Ye�il - Metalik</OPTION>
			<OPTION value="Ye�ilxxxSiyah"<%If Trim(yeniasp("renk"))="Ye�ilxxxSiyah" Then Response.Write " selected" End If%>>Ye�il - Siyah</OPTION>
			<OPTION value="YunusxGrisi"<%If Trim(yeniasp("renk"))="YunusxGrisi" Then Response.Write " selected" End If%>>Yunus Grisi</OPTION>
			</SELECT></td>
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
  selected>Se�iniz..</OPTION>
  <OPTION value=600<%If Trim(yeniasp("silindirhacmi"))="600" Then Response.Write " selected" End If%>>600</OPTION>
  <OPTION value=700<%If Trim(yeniasp("silindirhacmi"))="700" Then Response.Write " selected" End If%>>700</OPTION>
  <OPTION value=800<%If Trim(yeniasp("silindirhacmi"))="800" Then Response.Write " selected" End If%>>800</OPTION>
  <OPTION value=900<%If Trim(yeniasp("silindirhacmi"))="900" Then Response.Write " selected" End If%>>900</OPTION>
  <OPTION value=1000<%If Trim(yeniasp("silindirhacmi"))="1000" Then Response.Write " selected" End If%>>1000</OPTION>
  <OPTION value=1100<%If Trim(yeniasp("silindirhacmi"))="1100" Then Response.Write " selected" End If%>>1100</OPTION>
  <OPTION value=1200<%If Trim(yeniasp("silindirhacmi"))="1200" Then Response.Write " selected" End If%>>1200</OPTION>
  <OPTION value=1300<%If Trim(yeniasp("silindirhacmi"))="1300" Then Response.Write " selected" End If%>>1300</OPTION>
  <OPTION value=1400<%If Trim(yeniasp("silindirhacmi"))="1400" Then Response.Write " selected" End If%>>1400</OPTION>
  <OPTION value=1500<%If Trim(yeniasp("silindirhacmi"))="1500" Then Response.Write " selected" End If%>>1500</OPTION>
  <OPTION value=1600<%If Trim(yeniasp("silindirhacmi"))="1600" Then Response.Write " selected" End If%>>1600</OPTION>
  <OPTION value=1700<%If Trim(yeniasp("silindirhacmi"))="1700" Then Response.Write " selected" End If%>>1700</OPTION>
  <OPTION value=1800<%If Trim(yeniasp("silindirhacmi"))="1800" Then Response.Write " selected" End If%>>1800</OPTION>
  <OPTION value=1900<%If Trim(yeniasp("silindirhacmi"))="1900" Then Response.Write " selected" End If%>>1900</OPTION>
  <OPTION value=2000<%If Trim(yeniasp("silindirhacmi"))="2000" Then Response.Write " selected" End If%>>2000</OPTION>
  <OPTION value=2100<%If Trim(yeniasp("silindirhacmi"))="2100" Then Response.Write " selected" End If%>>2100</OPTION>
  <OPTION value=2200<%If Trim(yeniasp("silindirhacmi"))="2200" Then Response.Write " selected" End If%>>2200</OPTION>
  <OPTION value=2300<%If Trim(yeniasp("silindirhacmi"))="2300" Then Response.Write " selected" End If%>>2300</OPTION>
  <OPTION value=2400<%If Trim(yeniasp("silindirhacmi"))="2400" Then Response.Write " selected" End If%>>2400</OPTION>
  <OPTION value=2500<%If Trim(yeniasp("silindirhacmi"))="2500" Then Response.Write " selected" End If%>>2500</OPTION>
  <OPTION value=2600<%If Trim(yeniasp("silindirhacmi"))="2600" Then Response.Write " selected" End If%>>2600</OPTION>
  <OPTION value=2700<%If Trim(yeniasp("silindirhacmi"))="2700" Then Response.Write " selected" End If%>>2700</OPTION>
  <OPTION value=2800<%If Trim(yeniasp("silindirhacmi"))="2800" Then Response.Write " selected" End If%>>2800</OPTION>
  <OPTION value=2900<%If Trim(yeniasp("silindirhacmi"))="2900" Then Response.Write " selected" End If%>>2900</OPTION>
  <OPTION value=3000<%If Trim(yeniasp("silindirhacmi"))="3000" Then Response.Write " selected" End If%>>3000</OPTION>
  <OPTION value=3100<%If Trim(yeniasp("silindirhacmi"))="3100" Then Response.Write " selected" End If%>>3100</OPTION>
  <OPTION value=3200<%If Trim(yeniasp("silindirhacmi"))="3200" Then Response.Write " selected" End If%>>3200</OPTION>
  <OPTION value=3300<%If Trim(yeniasp("silindirhacmi"))="3300" Then Response.Write " selected" End If%>>3300</OPTION>
  <OPTION value=3400<%If Trim(yeniasp("silindirhacmi"))="3400" Then Response.Write " selected" End If%>>3400</OPTION>
  <OPTION value=3500<%If Trim(yeniasp("silindirhacmi"))="3500" Then Response.Write " selected" End If%>>3500</OPTION>
  <OPTION value=3600<%If Trim(yeniasp("silindirhacmi"))="3600" Then Response.Write " selected" End If%>>3600</OPTION>
  <OPTION value=3700<%If Trim(yeniasp("silindirhacmi"))="3700" Then Response.Write " selected" End If%>>3700</OPTION>
  <OPTION value=3800<%If Trim(yeniasp("silindirhacmi"))="3800" Then Response.Write " selected" End If%>>3800</OPTION>
  <OPTION value=3900<%If Trim(yeniasp("silindirhacmi"))="3900" Then Response.Write " selected" End If%>>3900</OPTION>
  <OPTION value=4000<%If Trim(yeniasp("silindirhacmi"))="4000" Then Response.Write " selected" End If%>>4000</OPTION>
  <OPTION value=4100<%If Trim(yeniasp("silindirhacmi"))="4100" Then Response.Write " selected" End If%>>4100</OPTION>
  <OPTION value=4200<%If Trim(yeniasp("silindirhacmi"))="4200" Then Response.Write " selected" End If%>>4200</OPTION>
  <OPTION value=4300<%If Trim(yeniasp("silindirhacmi"))="4300" Then Response.Write " selected" End If%>>4300</OPTION>
  <OPTION value=4400<%If Trim(yeniasp("silindirhacmi"))="4400" Then Response.Write " selected" End If%>>4400</OPTION>
  <OPTION value=4500<%If Trim(yeniasp("silindirhacmi"))="4500" Then Response.Write " selected" End If%>>4500</OPTION>
  <OPTION value=4600<%If Trim(yeniasp("silindirhacmi"))="4600" Then Response.Write " selected" End If%>>4600</OPTION>
  <OPTION value=4700<%If Trim(yeniasp("silindirhacmi"))="4700" Then Response.Write " selected" End If%>>4700</OPTION>
  <OPTION value=4800<%If Trim(yeniasp("silindirhacmi"))="4800" Then Response.Write " selected" End If%>>4800</OPTION>
  <OPTION value=4900<%If Trim(yeniasp("silindirhacmi"))="4900" Then Response.Write " selected" End If%>>4900</OPTION>
  <OPTION value=5000<%If Trim(yeniasp("silindirhacmi"))="5000" Then Response.Write " selected" End If%>>5000</OPTION>
  <OPTION value=5100<%If Trim(yeniasp("silindirhacmi"))="5100" Then Response.Write " selected" End If%>>5100</OPTION>
  <OPTION value=5200<%If Trim(yeniasp("silindirhacmi"))="5200" Then Response.Write " selected" End If%>>5200</OPTION>
  <OPTION value=5300<%If Trim(yeniasp("silindirhacmi"))="5300" Then Response.Write " selected" End If%>>5300</OPTION>
  <OPTION value=5400<%If Trim(yeniasp("silindirhacmi"))="5400" Then Response.Write " selected" End If%>>5400</OPTION>
  <OPTION value=5500<%If Trim(yeniasp("silindirhacmi"))="5500" Then Response.Write " selected" End If%>>5500</OPTION>
  <OPTION value=5600<%If Trim(yeniasp("silindirhacmi"))="5600" Then Response.Write " selected" End If%>>5600</OPTION>
  <OPTION value=5700<%If Trim(yeniasp("silindirhacmi"))="5700" Then Response.Write " selected" End If%>>5700</OPTION>
  <OPTION value=5800<%If Trim(yeniasp("silindirhacmi"))="5800" Then Response.Write " selected" End If%>>5800</OPTION>
  <OPTION value=5900<%If Trim(yeniasp("silindirhacmi"))="5900" Then Response.Write " selected" End If%>>5900</OPTION>
  <OPTION value=6000<%If Trim(yeniasp("silindirhacmi"))="6000" Then Response.Write " selected" End If%>>6000</OPTION>
  <OPTION value=6100<%If Trim(yeniasp("silindirhacmi"))="6100" Then Response.Write " selected" End If%>>6100</OPTION>
  <OPTION value=6200<%If Trim(yeniasp("silindirhacmi"))="6200" Then Response.Write " selected" End If%>>6200</OPTION>
  <OPTION value=6300<%If Trim(yeniasp("silindirhacmi"))="6300" Then Response.Write " selected" End If%>>6300</OPTION>
  <OPTION value=6400<%If Trim(yeniasp("silindirhacmi"))="6400" Then Response.Write " selected" End If%>>6400</OPTION>
  <OPTION value=6500<%If Trim(yeniasp("silindirhacmi"))="6500" Then Response.Write " selected" End If%>>6500</OPTION>
  <OPTION value=6600<%If Trim(yeniasp("silindirhacmi"))="6600" Then Response.Write " selected" End If%>>6600</OPTION>
  <OPTION value=6700<%If Trim(yeniasp("silindirhacmi"))="6700" Then Response.Write " selected" End If%>>6700</OPTION>
  <OPTION value=6800<%If Trim(yeniasp("silindirhacmi"))="6800" Then Response.Write " selected" End If%>>6800</OPTION>
  <OPTION value=6900<%If Trim(yeniasp("silindirhacmi"))="6900" Then Response.Write " selected" End If%>>6900</OPTION>
  <OPTION value=7000<%If Trim(yeniasp("silindirhacmi"))="7000" Then Response.Write " selected" End If%>>7000</OPTION>
  </SELECT></td>
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
			<OPTION value="-" selected>Se�iniz..</OPTION>
			<OPTION value=AzxHasarl�<%If Trim(yeniasp("hasardurumu"))="AzxHasarl�" Then Response.Write " selected" End If%>>Az Hasarl�</OPTION>
			<OPTION value=Hasarl�<%If Trim(yeniasp("hasardurumu"))="Hasarl�" Then Response.Write " selected" End If%>>Hasarl�</OPTION>
			<OPTION value=Hasars�z<%If Trim(yeniasp("hasardurumu"))="Hasars�z" Then Response.Write " selected" End If%>>Hasars�z</OPTION>
			<OPTION value=Pert<%If Trim(yeniasp("hasardurumu"))="Pert" Then Response.Write " selected" End If%>>Pert</OPTION>
			</SELECT></td>
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
			<OPTION value="-" selected>Se�iniz</OPTION>
			<OPTION value=Benzin<%If Trim(yeniasp("yakit"))="Benzin" Then Response.Write " selected" End If%>>Benzin</OPTION>
			<OPTION value=Dizel<%If Trim(yeniasp("yakit"))="Dizel" Then Response.Write " selected" End If%>>Dizel</OPTION>
			<OPTION value=Hybrid<%If Trim(yeniasp("yakit"))="Hybrid" Then Response.Write " selected" End If%>>Hybrid</OPTION>
			<OPTION value=LPG<%If Trim(yeniasp("yakit"))="LPG" Then Response.Write " selected" End If%>>LPG</OPTION>
			</SELECT></td>
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
			<OPTION value="-" selected>Se�iniz..</OPTION>
			<OPTION value=2<%If Trim(yeniasp("kapisayisi"))="2" Then Response.Write " selected" End If%>>2</OPTION>
			<OPTION value=3<%If Trim(yeniasp("kapisayisi"))="3" Then Response.Write " selected" End If%>>3</OPTION>
			<OPTION value=4<%If Trim(yeniasp("kapisayisi"))="4" Then Response.Write " selected" End If%>>4</OPTION>
			<OPTION value=5<%If Trim(yeniasp("kapisayisi"))="5" Then Response.Write " selected" End If%>>5</OPTION>
			</SELECT></font></td>
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
			<OPTION value="-" selected>Se�iniz..</OPTION>
			<OPTION value=Bilinmiyor<%If Trim(yeniasp("krediyeuygun"))="Bilinmiyor" Then Response.Write " selected" End If%>>Bilinmiyor</OPTION>
			<OPTION value=Uygun<%If Trim(yeniasp("krediyeuygun"))="Uygun" Then Response.Write " selected" End If%>>Uygun</OPTION>
			<OPTION value=UygunxDe�il<%If Trim(yeniasp("krediyeuygun"))="UygunxDe�il" Then Response.Write " selected" End If%>>Uygun De�il</OPTION>
			</SELECT></td>
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
			<td width="524">&nbsp;<input type="text" name="motorgucu" size="20" value="<%=yeniasp("motorgucu")%>"></td>
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
			<OPTION value="-" selected>Se�iniz..</OPTION>
			<OPTION value=D�z<%If Trim(yeniasp("vites"))="D�z" Then Response.Write " selected" End If%>>D�z</OPTION>
			<OPTION value=Otomatik<%If Trim(yeniasp("vites"))="Otomatik" Then Response.Write " selected" End If%>>Otomatik</OPTION>
			<OPTION value=Tiptronik<%If Trim(yeniasp("vites"))="Tiptronik" Then Response.Write " selected" End If%>>Tiptronik</OPTION>
			</SELECT></td>
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
			<input type="checkbox" value="1" name="cekersistem"<%If Trim(yeniasp("cekersistem"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;ABS&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="aracabs"<%If Trim(yeniasp("aracabs"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Alarm&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="alarm"<%If Trim(yeniasp("alarm"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="esp"<%If Trim(yeniasp("esp"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Hava Yast��� Perde&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="havayastigi"<%If Trim(yeniasp("havayastigi"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Hava Yast��� S�r�c�&nbsp;&nbsp;&nbsp; 
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="havayastigisurucu"<%If Trim(yeniasp("havayastigisurucu"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="cocuk_koltugu"<%If Trim(yeniasp("cocuk_koltugu"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Hava Yast��� Yan&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1"<%If Trim(yeniasp("havayastigiyan"))="1" Then Response.Write " checked" End If%> name="havayastigiyan"></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Hava Yast��� Yolcu&nbsp;&nbsp;&nbsp; 
			</font></td>
			<td width="20"><font face="Tahoma">
			<input  type=checkbox value="1"<%If Trim(yeniasp("havayastigiyolcu"))="1" Then Response.Write " checked" End If%> name="havayastigiyolcu"></font></td>
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
			<input type="checkbox" value="1" name="canelektirkliarka"<%If Trim(yeniasp("canelektirkliarka"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Cam Elektrikli �n&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="canelektirklion"<%If Trim(yeniasp("canelektirklion"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;CD MP3 �alar&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="cdcalar"<%If Trim(yeniasp("cdcalar"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="coklucdcalar"<%If Trim(yeniasp("coklucdcalar"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Deri D��eme&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="deridoseme"<%If Trim(yeniasp("deridoseme"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Dikiz Aynalar� Elektrikli D��&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="dikizaynalarielektiriklidis"<%If Trim(yeniasp("dikizaynalarielektiriklidis"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="dikizaynasi"<%If Trim(yeniasp("dikizaynasi"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Direksiyon Deri&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="direksiyonderi"<%If Trim(yeniasp("direksiyonderi"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Direksiyon Hidrolik&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="hidrolikdireksiyon"<%If Trim(yeniasp("hidrolikdireksiyon"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="direksiyondanradyo"<%If Trim(yeniasp("direksiyondanradyo"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Klima&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="klima"<%If Trim(yeniasp("klima"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;H�z Sabitleme Sistemi (Cruise control)&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="hizsabitleme"<%If Trim(yeniasp("hizsabitleme"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="merkezikilit"<%If Trim(yeniasp("merkezikilit"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Navigasyon&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="navigasyon"<%If Trim(yeniasp("navigasyon"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Merkezi Kilit Uzaktan Kumandal�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="merkezikilituzaktan"<%If Trim(yeniasp("merkezikilituzaktan"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="radyocalar"<%If Trim(yeniasp("radyocalar"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Telefon Haz�rl���&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="telefonhazirligi"<%If Trim(yeniasp("telefonhazirligi"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;TV&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="tv"<%If Trim(yeniasp("tv"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="yolbilgisayari"<%If Trim(yeniasp("yolbilgisayari"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="aliminyumjantlar"<%If Trim(yeniasp("aliminyumjantlar"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;�eki Kancas�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="ceki_kancasi"<%If Trim(yeniasp("ceki_kancasi"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Far Otomatik&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="farotomatik"<%If Trim(yeniasp("farotomatik"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="farsis"<%If Trim(yeniasp("farsis"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Far Xenon&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="farxenon"<%If Trim(yeniasp("farxenon"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Far Y�kseklik Ayar�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="faryukseklik_ayari"<%If Trim(yeniasp("faryukseklik_ayari"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="modifiyeli"<%If Trim(yeniasp("modifiyeli"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Park Sens�r�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="parksensoru"<%If Trim(yeniasp("parksensoru"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Sunroof&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="sunroof"<%If Trim(yeniasp("sunroof"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="yagmur_sensoru"<%If Trim(yeniasp("yagmur_sensoru"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="engelli_arabasi"<%If Trim(yeniasp("engelli_arabasi"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Garanti Kapsam�nda&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="garanti_kapsaminda"<%If Trim(yeniasp("garanti_kapsaminda"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;�htiya�tan (Acil) Sat�l�k&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="ihtiyactan_acil_satilik"<%If Trim(yeniasp("ihtiyactan_acil_satilik"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="klasik_araba"<%If Trim(yeniasp("klasik_araba"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Masrafs�z&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="masrafsiz"<%If Trim(yeniasp("masrafsiz"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Pazarl�ks�z Sat�l�k&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="pazarliksiz_satilik"<%If Trim(yeniasp("pazarliksiz_satilik"))="1" Then Response.Write " checked" End If%>></font></td>
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
			<input type="checkbox" value="1" name="servis_bakimli"<%If Trim(yeniasp("servis_bakimli"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Sigara ��ilmemi�&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="sigara_icilmemis"<%If Trim(yeniasp("sigara_icilmemis"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Takaslanabilir&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="takaslanabilir"<%If Trim(yeniasp("takaslanabilir"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>

	<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="28" bordercolor="#F7F7F7" id="table36">
		<tr>
			<td width="230">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;Vade Olur&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="vade_olur"<%If Trim(yeniasp("vade_olur"))="1" Then Response.Write " checked" End If%>></font></td>
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
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="71" bordercolor="#F7F7F7" id="table43">
		<tr>
			<td>
			<p align="center">
									<img border="0" src="<%If Not yeniasp("resim1")="" Then%><%=yeniasp("resim1")%><%Else%>ilanfoto/resim_yok.jpg<%End If%>" width="98" height="61" style="border: 1px solid #666666; "></td>
			<td width="86">
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Foto 1&nbsp;&nbsp;&nbsp; </font></td>
			<td width="17">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="483">&nbsp;<input type="text" name="resim1" size="20" value="<%=yeniasp("resim1")%>"><a ONCLICK="window.open('ilan_Resim.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
			<font color="#CC3300" size="2" face="Verdana">&nbsp;G�zat</font></a></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="78" bordercolor="#F7F7F7" id="table44">
		<tr>
			<td>
			<p align="center">
									<img border="0" src="<%If Not yeniasp("resim2")="" Then%><%=yeniasp("resim2")%><%Else%>ilanfoto/resim_yok.jpg<%End If%>" width="98" height="61" style="border: 1px solid #666666; "></td>
			<td width="87">
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Foto 2&nbsp;&nbsp;&nbsp; </font></td>
			<td width="17">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="482">&nbsp;<input type="text" name="resim2" size="20" value="<%=yeniasp("resim2")%>"><a ONCLICK="window.open('ilan_Resim2.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
			<font color="#CC3300" size="2" face="Verdana">&nbsp;G�zat</font></a></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="73" bordercolor="#F7F7F7" id="table45">
		<tr>
			<td>
			<p align="center">
									<img border="0" src="<%If Not yeniasp("resim3")="" Then%><%=yeniasp("resim3")%><%Else%>ilanfoto/resim_yok.jpg<%End If%>" width="98" height="61" style="border: 1px solid #666666; "></td>
			<td width="87">
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Foto 3&nbsp;&nbsp;&nbsp; </font></td>
			<td width="18">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="481">&nbsp;<input type="text" name="resim3" size="20" value="<%=yeniasp("resim3")%>"><a ONCLICK="window.open('ilan_Resim3.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
			<font color="#CC3300" size="2" face="Verdana">&nbsp;G�zat</font></a></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="74" bordercolor="#F7F7F7" id="table46">
		<tr>
			<td>
			<p align="center">
									<img border="0" src="<%If Not yeniasp("resim4")="" Then%><%=yeniasp("resim4")%><%Else%>ilanfoto/resim_yok.jpg<%End If%>" width="98" height="61" style="border: 1px solid #666666; "></td>
			<td width="86">
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Foto 4&nbsp;&nbsp;&nbsp; </font></td>
			<td width="18">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="481">&nbsp;<input type="text" name="resim4" size="20" value="<%=yeniasp("resim4")%>"><a ONCLICK="window.open('ilan_Resim4.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
			<font color="#CC3300" size="2" face="Verdana">&nbsp;G�zat</font></a></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" height="71" bordercolor="#F7F7F7" id="table47">
		<tr>
			<td>
			<p align="center">
									<img border="0" src="<%If Not yeniasp("resim5")="" Then%><%=yeniasp("resim5")%><%Else%>ilanfoto/resim_yok.jpg<%End If%>" width="98" height="61" style="border: 1px solid #666666; "></td>
			<td width="86">
			<p align="right"><font size="2" face="Tahoma" color="#CC3300">Foto 5&nbsp;&nbsp;&nbsp; </font></td>
			<td width="18">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
			<td width="481">&nbsp;<input type="text" name="resim5" size="20" value="<%=yeniasp("resim5")%>"><a ONCLICK="window.open('ilan_Resim5.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle" style="text-decoration: none">
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
			<input type="checkbox" value="1" name="vitrin"<%If Trim(yeniasp("vitrin"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="57">&nbsp;</td>
			<td width="157">
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;S�f�r 
			(Yeni)&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font color="#333333" face="Tahoma">
			<input type="checkbox" value="1" name="sifir"<%If Trim(yeniasp("sifir"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="56">&nbsp;</td>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#333333">&nbsp;�kinci 
			El&nbsp;&nbsp;&nbsp;
			</font></td>
			<td width="20"><font face="Tahoma">
			<input type="checkbox" value="1" name="ikinciel"<%If Trim(yeniasp("ikinciel"))="1" Then Response.Write " checked" End If%>></font></td>
			<td width="65">&nbsp;</td>
		</tr>
	</table>

	<p align="center">
	<input type="submit" value="�lan� G�ncelle" style="font-family: Verdana; font-size: 10pt; color: #0099CC; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
</form>
<%
sub duzenle

marka = Request.Form("marka")
model = Request.Form("model")
modelyili = Request.Form("modelyili")
kasatipi = Request.Form("kasatipi")
km = Request.Form("km")
fiyat = Request.Form("fiyat")
kur = Request.Form("kur")
baslik = Request.Form("baslik")
saticiyorumlari = Request.Form("saticiyorumlari")
kullanim = Request.Form("kullanim")
renk = Request.Form("renk")
silindirhacmi = Request.Form("silindirhacmi")
hasardurumu = Request.Form("hasardurumu")
yakit = Request.Form("yakit")
kapisayisi = Request.Form("kapisayisi")
krediyeuygun = Request.Form("krediyeuygun")
motorgucu = Request.Form("motorgucu")
vites = Request.Form("vites")
cekersistem = Request.Form("cekersistem")
aracabs = Request.Form("aracabs")
alarm = Request.Form("alarm")
esp = Request.Form("esp")
havayastigi = Request.Form("havayastigi")
havayastigisurucu = Request.Form("havayastigisurucu")
cocuk_koltugu = Request.Form("cocuk_koltugu")
havayastigiyan = Request.Form("havayastigiyan")
havayastigiyolcu = Request.Form("havayastigiyolcu")
canelektirkliarka = Request.Form("canelektirkliarka")
canelektirklion = Request.Form("canelektirklion")
cdcalar = Request.Form("cdcalar")
coklucdcalar = Request.Form("coklucdcalar")
deridoseme = Request.Form("deridoseme")
dikizaynalarielektiriklidis = Request.Form("dikizaynalarielektiriklidis")
dikizaynasi = Request.Form("dikizaynasi")
direksiyonderi = Request.Form("direksiyonderi")
hidrolikdireksiyon = Request.Form("hidrolikdireksiyon")
direksiyondanradyo = Request.Form("direksiyondanradyo")
klima = Request.Form("klima")
hizsabitleme = Request.Form("hizsabitleme")
merkezikilit = Request.Form("merkezikilit")
navigasyon = Request.Form("navigasyon")
merkezikilituzaktan = Request.Form("merkezikilituzaktan")
radyocalar = Request.Form("radyocalar")
telefonhazirligi = Request.Form("telefonhazirligi")
tv = Request.Form("tv")
yolbilgisayari = Request.Form("yolbilgisayari")
aliminyumjantlar = Request.Form("aliminyumjantlar")
ceki_kancasi = Request.Form("ceki_kancasi")
farotomatik = Request.Form("farotomatik")
farsis = Request.Form("farsis")
farxenon = Request.Form("farxenon")
faryukseklik_ayari = Request.Form("faryukseklik_ayari")
modifiyeli = Request.Form("modifiyeli")
parksensoru = Request.Form("parksensoru")
sunroof = Request.Form("sunroof")
yagmur_sensoru = Request.Form("yagmur_sensoru")
engelli_arabasi = Request.Form("engelli_arabasi")
garanti_kapsaminda = Request.Form("garanti_kapsaminda")
ihtiyactan_acil_satilik = Request.Form("ihtiyactan_acil_satilik")
klasik_araba = Request.Form("klasik_araba")
masrafsiz = Request.Form("masrafsiz")
pazarliksiz_satilik = Request.Form("pazarliksiz_satilik")
servis_bakimli = Request.Form("servis_bakimli")
sigara_icilmemis = Request.Form("sigara_icilmemis")
takaslanabilir = Request.Form("takaslanabilir")
vade_olur = Request.Form("vade_olur")
resim1 = Request.Form("resim1")
resim2 = Request.Form("resim2")
resim3 = Request.Form("resim3")
resim4 = Request.Form("resim4")
resim5 = Request.Form("resim5")
vitrin = Request.Form("vitrin")
sifir = Request.Form("sifir")
ikinciel = Request.Form("ikinciel")

if marka=""  or id="" or model=""  then
Response.Write "Marka veya Modeli Bo� B�rakt�n�z.."
else

Set duz = Server.CreateObject("ADODB.RecordSet")
sql = "select * from ilanlar where id="&id
duz.open sql,baglanti,1,3

duz("marka") = marka
duz("model") = model
duz("modelyili") = modelyili
duz("kasatipi") = kasatipi
duz("km") = km
duz("fiyat") = fiyat
duz("kur") = kur
duz("baslik") = baslik
duz("saticiyorumlari") = saticiyorumlari
duz("kullanim") = kullanim
duz("renk") = renk
duz("silindirhacmi") = silindirhacmi
duz("hasardurumu") = hasardurumu
duz("yakit") = yakit
duz("kapisayisi") = kapisayisi
duz("krediyeuygun") = krediyeuygun
duz("motorgucu") = motorgucu
duz("vites") = vites
duz("cekersistem") = cekersistem
duz("aracabs") = aracabs
duz("alarm") = alarm
duz("esp") = esp
duz("havayastigi") = havayastigi
duz("havayastigisurucu") = havayastigisurucu
duz("cocuk_koltugu") = cocuk_koltugu
duz("havayastigiyan") = havayastigiyan
duz("havayastigiyolcu") = havayastigiyolcu
duz("canelektirkliarka") = canelektirkliarka
duz("canelektirklion") = canelektirklion
duz("cdcalar") = cdcalar
duz("coklucdcalar") = coklucdcalar
duz("deridoseme") = deridoseme
duz("dikizaynalarielektiriklidis") = dikizaynalarielektiriklidis
duz("dikizaynasi") = dikizaynasi
duz("direksiyonderi") = direksiyonderi
duz("hidrolikdireksiyon") = hidrolikdireksiyon
duz("direksiyondanradyo") = direksiyondanradyo
duz("klima") = klima
duz("hizsabitleme") = hizsabitleme
duz("merkezikilit") = merkezikilit
duz("navigasyon") = navigasyon
duz("merkezikilituzaktan") = merkezikilituzaktan
duz("radyocalar") = radyocalar
duz("telefonhazirligi") = telefonhazirligi
duz("tv") = tv
duz("yolbilgisayari") = yolbilgisayari
duz("aliminyumjantlar") = aliminyumjantlar
duz("ceki_kancasi") = ceki_kancasi
duz("farotomatik") = farotomatik
duz("farsis") = farsis
duz("farxenon") = farxenon
duz("faryukseklik_ayari") = faryukseklik_ayari
duz("modifiyeli") = modifiyeli
duz("parksensoru") = parksensoru
duz("sunroof") = sunroof
duz("yagmur_sensoru") = yagmur_sensoru
duz("engelli_arabasi") = engelli_arabasi
duz("garanti_kapsaminda") = garanti_kapsaminda
duz("ihtiyactan_acil_satilik") = ihtiyactan_acil_satilik
duz("klasik_araba") = klasik_araba
duz("masrafsiz") = masrafsiz
duz("pazarliksiz_satilik") = pazarliksiz_satilik
duz("servis_bakimli") = servis_bakimli
duz("sigara_icilmemis") = sigara_icilmemis
duz("takaslanabilir") = takaslanabilir
duz("vade_olur") = vade_olur
duz("resim1") = resim1
duz("resim2") = resim2
duz("resim3") = resim3
duz("resim4") = resim4
duz("resim5") = resim5
duz("vitrin") = vitrin
duz("sifir") = sifir
duz("ikinciel") = ikinciel
duz("tarih") = now
duz.Update
%>
<script>
	alert('�LAN G�NCELLEND�...!!');
	window.parent.location.href=('yonetim.asp?s_otoilan=ilanlar');window.refresh;</script>
<%
Response.End
end if
end sub
%>	


	</body>
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