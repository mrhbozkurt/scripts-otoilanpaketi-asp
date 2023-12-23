<!--#include file="data.asp"-->
<%
kullaniciadi = Request.Form("kullaniciadi")
password = Request.Form("password")
kullaniciadi = Replace(kullaniciadi, "'" , " ", 1, -1, 1 )
password = Replace(password, "'" , " ", 1, -1, 1 )

If kullaniciadi="" or password="" Then
Response.Write "Lütfen Boþ Alan Býrakmayýnýz !"
Response.End
END IF
%>
<%
sql="Select * From yonetim where kullaniciadi = '"&kullaniciadi&"' and password = '"&password&"'"
Set Kontrol = baglanti.ExeCute(sql)

IF Kontrol.eof Then

Response.Write "Böle Bir Kullanýcý Bulunamadý!!"

Else

Session("girdinmiadmin") = "evetgirdim"
Session("id") = Kontrol("id")
Session("kullaniciadi") = Kontrol("kullaniciadi")

Response.Redirect "yonetim.asp"
End If
%>
