<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->

<%'      emrahbozkurt.com
If Not Session("kullaniciadi")="" Then
process=Trim(restore(request("process"))):id=Trim(restore(request("id"))):url2=request("url2")
With Response
.Buffer=true
.CacheControl = "no-cache"
.AddHeader "Pragma", "no-cache"
.Expires = -1
End With
function restore(data)
data=Replace(data ,"`",""):data=Replace(data ,"="," "):data=Replace (data ,"&","")
data=Replace(data ,"%",""):data=Replace(data ,"!",""):data=Replace (data ,"#","")
data=Replace(data ,"<",""):data=Replace(data ,">",""):data=Replace (data ,"*","")
data=Replace(data ,"And",""):data= Replace (data ,"'",""):data=Replace (data ,"Chr(34)","")
data=Replace(data ,"Chr(39)",""):restore = data
end function
Select Case process


Case "yazi_icerigi"
    siteadresi=Trim(restore(request("siteadresi"))):sitebasligi=Trim(restore(request("sitebasligi")))
    aranacak=Trim(restore(request("aranacak"))):aciklama=Trim(restore(request("aciklama")))
    
    Conn.Execute("UPDATE site_ayarlari SET siteadresi='"& siteadresi &"',sitebasligi='"& sitebasligi &"',aranacak='"& aranacak &"',aciklama='"& aciklama &"' WHERE id=1")%><script>
	alert('SÝTE YAZI ÝÇERÝÐÝ GÜNCELLENDÝ...!!');
	window.parent.location.href=('yonetim.asp?s_otoilan=yazi-icerigi');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End
    
    
Case "iletisim-bilgileri"
    adres=Trim(restore(request("adres"))):tel1=Trim(restore(request("tel1")))
    tel2=Trim(restore(request("tel2"))):fax=Trim(restore(request("fax")))
    siteemail=Trim(restore(request("siteemail"))):firmaadi=Trim(restore(request("firmaadi")))
    
    Conn.Execute("UPDATE iletisim_bilgileri SET adres='"& adres &"',tel1='"& tel1 &"',tel2='"& tel2 &"',fax='"& fax &"',siteemail='"& siteemail &"',firmaadi='"& firmaadi &"' WHERE id=1")%><script>
	alert('ÝLETÝÞÝM BÝLGÝLERÝ GÜNCELLENDÝ...!!');
	window.parent.location.href=('yonetim.asp?s_otoilan=iletisim_bilgileri');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End
    
Case "kurumsal-icerik"

Set cilgin = Server.CreateObject("adodb.recordset")
sql="select * from kurumsal WHERE id=1"
cilgin.open sql, baglanti , 1,3

icerik = Request.Form("txtContent")


cilgin("icerik") = icerik
cilgin.update
%>
<script>
	alert('KURUMSAL ÝÇERÝÐÝ GÜNCELLENDÝ');
	window.parent.location.href=('yonetim.asp?s_otoilan=kurumsal-icerik');window.refresh;</script></script>
<%
cilgin.Close
Set cilgin = Nothing




Case "banner"

Set mrhbanner = Server.CreateObject("adodb.recordset")
sql="select * from banner"
mrhbanner.open sql, baglanti , 1,3

banner_baslik = Request.Form("banner_baslik")
genislik = Request.Form("genislik")
yukseklik = Request.Form("yukseklik")
banner = Request.Form("banner")
banner_linki = Request.Form("banner_linki")

mrhbanner.Addnew
mrhbanner("banner_baslik") = banner_baslik
mrhbanner("genislik") = genislik
mrhbanner("yukseklik") = yukseklik
mrhbanner("banner") = banner
mrhbanner("banner_linki") = banner_linki
mrhbanner.update
%>
<script>
	alert('Banner Yüklendi...');
	window.parent.location.href=('yonetim.asp?s_otoilan=banner');window.refresh;</script></script>
<%
mrhbanner.Close
Set mrhbanner = Nothing



Case "haber-banka"

Set mrh1 = Server.CreateObject("adodb.recordset")
sql="select * from haber_banka_bilgileri"
mrh1.open sql, baglanti , 1,3

baslik = Request.Form("baslik")
icerik = Request.Form("icerik")

mrh1.Addnew
mrh1("baslik") = baslik
mrh1("icerik") = icerik
mrh1("tarih") = now
mrh1.update
%>
<script>
	alert('Haber veya Banka Kredi Oranlarý Eklendi');
	window.parent.location.href=('yonetim.asp?s_otoilan=haber-yayinda');window.refresh;</script></script>
<%
mrh1.Close
Set mrh1 = Nothing

Case "haber-banka-sil"
    Conn.Execute("DELETE * FROM haber_banka_bilgileri WHERE id="& id)%><script>
	alert('BANKA BÝLGÝLERÝ veya HABER SÝLÝNMÝÞTÝR...!!');
	window.parent.location.href=('yonetim.asp?s_otoilan=haber-yayinda');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End
%>
<%

    
Case "yonetim-sifreleri"
    kullaniciadi=Request.Form("kullaniciadi"):password=Request.Form("password"):id=1
    If kullaniciadi="" OR password="" Then%><script>
	alert('KULLANICI ADI VEYA ÞÝFRESÝNÝ YAZMADINIZ. \n Kullanýcý Adý :<%=kullaniciadi%> \n Þifre :<%=password%>');
	history.back();</script><%
	Else
'   Conn.Execute("UPDATE yonetim SET kullaniciadi='"&kullaniciadi&"', password='"&password&"'  WHERE id="&id)
	Set bag = Server.CreateObject("ADODB.Connection")
	bag.Open (Conn)
	Set kaydet = Server.CreateObject("ADODB.Recordset")
	sql =  "SELECT * FROM yonetim WHERE id=" & id
	kaydet.Open sql, bag, 1, 3
	kaydet("kullaniciadi") = kullaniciadi
	kaydet("password") = password
	kaydet.Update%><script>
	alert('YÖNETÝCÝ BÝLGÝLERÝ GÜNCELLENDÝ...!! \nLÜTFEN YENÝ BÝLGÝLERÝNÝZÝ UNUTMAYINIZ. \n Kullanýcý Adý :<%=kullaniciadi%> \n Þifre :<%=password%>');
	window.parent.location.href=('yonetim.asp?s_otoilan=yonetim-sifre-degisikligi');window.refresh;</script></script><%
	End If
    Conn.Close:Set Conn=Nothing:Response.End
    
    
Case "ilanlar"

Set mrhilanlari = Server.CreateObject("adodb.recordset")
sql="select * from ilanlar"
mrhilanlari.open sql, baglanti , 1,3

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

mrhilanlari.Addnew
mrhilanlari("marka") = marka
mrhilanlari("model") = model
mrhilanlari("modelyili") = modelyili
mrhilanlari("kasatipi") = kasatipi
mrhilanlari("km") = km
mrhilanlari("fiyat") = fiyat
mrhilanlari("kur") = kur
mrhilanlari("baslik") = baslik
mrhilanlari("saticiyorumlari") = saticiyorumlari
mrhilanlari("kullanim") = kullanim
mrhilanlari("renk") = renk
mrhilanlari("silindirhacmi") = silindirhacmi
mrhilanlari("hasardurumu") = hasardurumu
mrhilanlari("yakit") = yakit
mrhilanlari("kapisayisi") = kapisayisi
mrhilanlari("krediyeuygun") = krediyeuygun
mrhilanlari("motorgucu") = motorgucu
mrhilanlari("vites") = vites
mrhilanlari("cekersistem") = cekersistem
mrhilanlari("aracabs") = aracabs
mrhilanlari("alarm") = alarm
mrhilanlari("esp") = esp
mrhilanlari("havayastigi") = havayastigi
mrhilanlari("havayastigisurucu") = havayastigisurucu
mrhilanlari("cocuk_koltugu") = cocuk_koltugu
mrhilanlari("havayastigiyan") = havayastigiyan
mrhilanlari("havayastigiyolcu") = havayastigiyolcu
mrhilanlari("canelektirkliarka") = canelektirkliarka
mrhilanlari("canelektirklion") = canelektirklion
mrhilanlari("cdcalar") = cdcalar
mrhilanlari("coklucdcalar") = coklucdcalar
mrhilanlari("deridoseme") = deridoseme
mrhilanlari("dikizaynalarielektiriklidis") = dikizaynalarielektiriklidis
mrhilanlari("dikizaynasi") = dikizaynasi
mrhilanlari("direksiyonderi") = direksiyonderi
mrhilanlari("hidrolikdireksiyon") = hidrolikdireksiyon
mrhilanlari("direksiyondanradyo") = direksiyondanradyo
mrhilanlari("klima") = klima
mrhilanlari("hizsabitleme") = hizsabitleme
mrhilanlari("merkezikilit") = merkezikilit
mrhilanlari("navigasyon") = navigasyon
mrhilanlari("merkezikilituzaktan") = merkezikilituzaktan
mrhilanlari("radyocalar") = radyocalar
mrhilanlari("telefonhazirligi") = telefonhazirligi
mrhilanlari("tv") = tv
mrhilanlari("yolbilgisayari") = yolbilgisayari
mrhilanlari("aliminyumjantlar") = aliminyumjantlar
mrhilanlari("ceki_kancasi") = ceki_kancasi
mrhilanlari("farotomatik") = farotomatik
mrhilanlari("farsis") = farsis
mrhilanlari("farxenon") = farxenon
mrhilanlari("faryukseklik_ayari") = faryukseklik_ayari
mrhilanlari("modifiyeli") = modifiyeli
mrhilanlari("parksensoru") = parksensoru
mrhilanlari("sunroof") = sunroof
mrhilanlari("yagmur_sensoru") = yagmur_sensoru
mrhilanlari("engelli_arabasi") = engelli_arabasi
mrhilanlari("garanti_kapsaminda") = garanti_kapsaminda
mrhilanlari("ihtiyactan_acil_satilik") = ihtiyactan_acil_satilik
mrhilanlari("klasik_araba") = klasik_araba
mrhilanlari("masrafsiz") = masrafsiz
mrhilanlari("pazarliksiz_satilik") = pazarliksiz_satilik
mrhilanlari("servis_bakimli") = servis_bakimli
mrhilanlari("sigara_icilmemis") = sigara_icilmemis
mrhilanlari("takaslanabilir") = takaslanabilir
mrhilanlari("vade_olur") = vade_olur
mrhilanlari("resim1") = resim1
mrhilanlari("resim2") = resim2
mrhilanlari("resim3") = resim3
mrhilanlari("resim4") = resim4
mrhilanlari("resim5") = resim5
mrhilanlari("vitrin") = vitrin
mrhilanlari("sifir") = sifir
mrhilanlari("ikinciel") = ikinciel
mrhilanlari("tarih") = now
mrhilanlari.update
%>
<script>
	alert('ÝLANINIZ EKLENDÝ..');
	window.parent.location.href=('yonetim.asp?s_otoilan=ilanlar');window.refresh;</script></script>
<%
mrhilanlari.Close
Set mrhilanlari = Nothing
    
Case "ilan-sil"
    Conn.Execute("DELETE * FROM ilanlar WHERE id="& id)%><script>
	alert('ÝLAN SÝLÝNMÝÞTÝR...!!');
	window.parent.location.href=('yonetim.asp?s_otoilan=ilanlar');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End

Case "iletisim-sil"
    Conn.Execute("DELETE * FROM iletisim_formu WHERE id="& id)%><script>
	alert('MESAJ SÝLÝNMÝÞTÝR...!!');
	window.parent.location.href=('yonetim.asp?s_otoilan=iletisim-form-gelen');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End
    
Case "ototalep-sil"
    Conn.Execute("DELETE * FROM oto_talep WHERE id="& id)%><script>
	alert('MESAJ SÝLÝNMÝÞTÝR...!!');
	window.parent.location.href=('yonetim.asp?s_otoilan=oto-talep');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End
    
Case "banner-sil"
    Conn.Execute("DELETE * FROM banner WHERE id="& id)%><script>
	alert('BANNER SÝLÝNMÝÞTÝR...!!');
	window.parent.location.href=('yonetim.asp?s_otoilan=banner');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End

Case Else
    Response.Redirect Request.Servervariables("HTTP_REFERER")
    Conn.Close:Set Conn=Nothing:Response.End'          Smultimedya.com
End Select
Else%><script>
alert(' ( YASAK ) BU BÖLGEYE GÝRME YETKÝNÝZ YOKTUR...!!');
window.close();</script><%
End If%>