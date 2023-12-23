<!--#include file="data.asp"-->
<% 
Response.Expires = -1 
SQL = "SELECT * FROM ilanlar ;" 
Set RS = Server.CreateObject("ADODB.Recordset" ) 
RS.Open SQL , Baglanti, 3 
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body topmargin="0" leftmargin="0">

<p><font size="2" face="Tahoma" color="#0099CC">&nbsp;</font><font size="2" face="Tahoma" color="#CC3300"><%
counter=0 
Do While NOT RS.Eof AND counter < 1 
counter=counter+1 
rndMax = CInt(RS.RecordCount) 
RS.Movefirst 
Randomize Timer 
rndNumber = Int(RND * rndMax) 
RS.Move rndNumber
%>
<a href="ilan.asp?s-oto=ilandetayi&id=<%=RS("id")%>"><%=RS("baslik")%></a>
<%
RS.Movenext 
Loop 

Set RS = Nothing 
%></font></p>

</body>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-3038547-7");
pageTracker._trackPageview();
</script>
</html>
