<!--#include file="data.asp"-->
<!--#include file="coder.asp"-->
<%
Session.CodePage = 1254 
Session.LCID = 1055 
%>
<%'    Emrahbozkurt
process=Trim(restore(request("process"))):id=Trim(restore(request("id")))
With Response
.Buffer=true
.CacheControl = "no-cache"
.AddHeader "Pragma", "no-cache"
.Expires = -1
End With
Function caca(mrh) 
Dim regEx, Match, Matches 
If mrh <> "" Then 
Set regEx = New RegExp 
regEx.Pattern = "^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" 
regEx.IgnoreCase = True 
If regEx.Test(mrh) Then caca = True Else caca = False 
End If 
End Function 
function restore(mrh)
mrh=Replace(mrh,"`",""):mrh=Replace(mrh,"="," "):mrh=Replace(mrh,"&","")
mrh=Replace(mrh,"%",""):mrh=Replace(mrh,"!",""):mrh=Replace(mrh,"#","")
mrh=Replace(mrh,"<",""):mrh=Replace(mrh,">",""):mrh=Replace(mrh,"*","")
mrh=Replace(mrh,"And",""):mrh=Replace (mrh,"'",""):mrh=Replace(mrh,"Chr(34)","")
mrh=Replace(mrh,"Chr(39)",""):restore = mrh
end function
Select Case process

Case "iletisim-formu"
    Set emrahbozkurt = Server.CreateObject("adodb.recordset")
	sql="select * from iletisim_formu"
	emrahbozkurt.open sql, baglanti , 1,3
	
	adsoyad = Request.Form("adsoyad")
	email= Request.Form("email")
	tel= Request.Form("tel")
	fax= Request.Form("fax")
	gsm= Request.Form("gsm")
	mesaj= Request.Form("mesaj")
		
	emrahbozkurt.Addnew
	emrahbozkurt("adsoyad") = adsoyad
	emrahbozkurt("email") = email
	emrahbozkurt("tel") = tel
	emrahbozkurt("fax") = fax
	emrahbozkurt("gsm") = gsm
	emrahbozkurt("mesaj") = mesaj
	emrahbozkurt("tarih") = now
	%>
<script>
	alert('Bilgileriniz Gönderilmiþtir...!!');
	window.parent.location.href=('iletisim.asp');window.refresh;</script><%
	emrahbozkurt.update
    emrahbozkurt.Close 
    Set emrahbozkurt = Nothing 
    
    
Case "oto-talep-formu"
    Set mrhotoform = Server.CreateObject("adodb.recordset")
	sql="select * from oto_talep"
	mrhotoform.open sql, baglanti , 1,3
	
	adsoyad = Request.Form("adsoyad")
	email= Request.Form("email")
	tel= Request.Form("tel")
	gsm= Request.Form("gsm")
	marka= Request.Form("marka")
	model= Request.Form("model")
	modelyili= Request.Form("modelyili")
	kullanim= Request.Form("kullanim")
	yakit= Request.Form("yakit")
	vites= Request.Form("vites")
	renk= Request.Form("renk")
	kapisayisi= Request.Form("kapisayisi")
	hasardurumu= Request.Form("hasardurumu")
	motorgucu= Request.Form("motorgucu")
	digerozellikler= Request.Form("digerozellikler")
	fiyat1= Request.Form("fiyat1")
	fiyat2= Request.Form("fiyat2")
	kur= Request.Form("kur")
		
	mrhotoform.Addnew
	mrhotoform("adsoyad") = adsoyad
	mrhotoform("email") = email
	mrhotoform("tel") = tel
	mrhotoform("gsm") = gsm
	mrhotoform("marka") = marka
	mrhotoform("model") = model
	mrhotoform("modelyili") = modelyili
	mrhotoform("kullanim") = kullanim
	mrhotoform("yakit") = yakit
	mrhotoform("vites") = vites
	mrhotoform("renk") = renk
	mrhotoform("kapisayisi") = kapisayisi
	mrhotoform("hasardurumu") = hasardurumu
    mrhotoform("motorgucu") = motorgucu
	mrhotoform("fiyat1") = fiyat1
	mrhotoform("fiyat2") = fiyat2
	mrhotoform("kur") = kur
	mrhotoform("digerozellikler") = digerozellikler
	mrhotoform("tarih") = now
	%>
<script>
	alert('Kiþisel Bilgileriniz ve Otomobil Özellikleriniz Gönderilmiþtir..!!');
	window.parent.location.href=('oto-talep.asp');window.refresh;</script><%
	mrhotoform.update
    mrhotoform.Close 
    Set mrhotoform = Nothing 

  
Case Else
    Response.Redirect Request.Servervariables("HTTP_REFERER")
    Conn.Close:Set Conn=Nothing:Response.End'               Emrahbozkurt .mrh
    End Select%>