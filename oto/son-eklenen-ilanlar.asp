<!--#include file="data.asp"-->
<body leftmargin="10">

<table cellpadding="0" cellspacing="0" width="343" height="66%">
   <tr><%cigdemrh=1:Set vitrinmrh=Conn.Execute("SELECT top 12 * FROM ilanlar ORDER BY id desc"):Do while Not vitrinmrh.Eof%>
      <td width="343" style="padding-left: 3px">
			<div align="left">
				<table border="1" cellpadding="0" style="border-collapse: collapse" width="168" bordercolor="#C0C0C0" id="table10" height="79" background="images/ilan-bg.jpg">
					<tr>
						<td bgcolor="#F8F8F8"> 
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="103%" bordercolor="#C0C0C0" id="table11" height="83">
								<tr>
									<td width="80">
									<p align="center">
									<a href="ilan.asp?s-oto=ilandetayi&id=<%=vitrinmrh("id")%>">
									<img alt="<%=vitrinmrh("baslik")%>" border="0" src="yonetim/<%If Not vitrinmrh("resim1")="" Then%><%=vitrinmrh("resim1")%><%Else%>ilanfoto/resim_yok.jpg<%End If%>" width="72" height="73" style="border: 1px solid #CCCCCC; " align="left"></a></td>
									<td>
								<div align="center">
									<table border="0" cellpadding="0" style="border-collapse: collapse" width="90%" height="77" bordercolor="#F7F7F7" id="table12">
										<tr>
											<td><font size="2" face="Tahoma"><b>
											<font color="#FF9900"><a href="ilan.asp?s-oto=ilandetayi&id=<%=vitrinmrh("id")%>">
											<p align="left"><%=vitrinmrh("marka")%></a></font></b><a href="ilan.asp?s-oto=ilandetayi&id=<%=vitrinmrh("id")%>"><span style="text-decoration: none"><br>
												<font color="#666666">
												<%=vitrinmrh("model")%></font><br>
												<font color="#006699">
												<%=vitrinmrh("modelyili")%> Model</font><br>
												<font color="#CC3300">
												<%=vitrinmrh("km")%></font><font color="#006699"> </font>
											<font color="#CC3300"> Km</font><br>
												<b><font color="#FF9900">
												<%=vitrinmrh("fiyat")%></font></b>&nbsp;
											</span>
											<font color="#CC3300"> 
											<span style="text-decoration: none"> <%=vitrinmrh("kur")%></span></font></a></font><br></td>
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
      </td><%If cigdemrh=2 OR cigdemrh=4 OR cigdemrh=6 OR cigdemrh=8 OR cigdemrh=10 OR cigdemrh=12 OR cigdemrh=14 OR cigdemrh=16 Then Response.Write"</tr><tr><td colspan=""4"" height=""10""></td></tr><tr>"End If:cigdemrh=cigdemrh+1:vitrinmrh.MoveNext:Loop%>
   </tr>
   <tr>
      <td height="1" valign="top"></td>
</table>