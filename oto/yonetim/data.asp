<%
'Response.Buffer=true
'Response.expires = -1
'Response.CacheControl = "no-cache"
'Response.AddHeader "Pragma", "no-cache"
'sql = "Provider=SQLOLEDB;Persist Security Info=True;User ID=test ;Password=emrahbozkurt;Initial Catalog=emrahbozkurt"
'SET conn = Server.CreateObject("ADODB.Connection")
'conn.ConnectionString = sql
'conn.Open
'SET openDatabase = conn
'Set Conn = Server.CreateObject("ADODB.Connection")
'Veri_yolu = Server.MapPath("../../db/oto_ilan_emrahbozkurt_smultimedya_mrh.mdb")
'Bcumle = "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Veri_yolu
'Conn.Open (Bcumle)
Set Conn = Server.CreateObject("ADODB.Connection")
Conn.Provider = "Microsoft.Jet.OLEDB.4.0;"
Conn.Open "Data Source=" & Server.MapPath("../../db/oto_ilan_emrahbozkurt_smultimedya_mrh.mdb")
%>

<%
Set baglanti = Server.CreateObject("adodb.connection")
baglanti.open "Provider=Microsoft.Jet.Oledb.4.0;Data Source=" & Server.MapPath("../../db/oto_ilan_emrahbozkurt_smultimedya_mrh.mdb")
%>