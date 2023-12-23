<%
hayatim = "FnBCUzflQxNOemwrhvpRSYZXbcWJgijk7G51Kudt6094Ha8EL3syqAPMIVo2DT" 

Public Function coder( mrhbozkurt )
    For n = 1 To Len( mrhbozkurt ) Step 3
        c1 = Asc( Mid( mrhbozkurt, n, 1 ) )
        c2 = Asc( Mid( mrhbozkurt, n + 1, 1 ) + Chr(0) )
        c3 = Asc( Mid( mrhbozkurt, n + 2, 1 ) + Chr(0) )
        w1 = Int( c1 / 4 ) : w2 = ( c1 And 3 ) * 16 + Int( c2 / 16 )
        If Len( mrhbozkurt ) >= n + 1 Then 
            w3 = ( c2 And 15 ) * 4 + Int( c3 / 64 ) 
        Else 
            w3 = -1
        End If
        If Len( mrhbozkurt ) >= n + 2 Then 
            yeterbeee = c3 And 63 
        Else 
            yeterbeee = -1
        End If
        cigdem = cigdem + nil( w1 ) + nil( w2 ) + nil( w3 ) + nil( yeterbeee )
    Next
coder = cigdem
End Function

Private Function nil( sin )
    If sin >= 0 Then 
        nil = Mid( hayatim, sin + 1, 1 ) 
    Else 
        nil = ""
    End If
End Function     

Public Function decoder( cigdem )
    For n = 1 To Len( cigdem ) Step 4
        w1 = bebisim( Mid( cigdem, n, 1 ) )
        w2 = bebisim( Mid( cigdem, n + 1, 1 ) )
        w3 = bebisim( Mid( cigdem, n + 2, 1 ) )
        w4 = bebisim( Mid( cigdem, n + 3, 1 ) )
        If w2 >= 0 Then _
            mrhbozkurt = mrhbozkurt + _
            Chr( ( ( w1 * 4 + Int( w2 / 16 ) ) And 255 ) )
            If w3 >= 0 Then _
                mrhbozkurt = mrhbozkurt + _
                Chr( ( ( w2 * 16 + Int( w3 / 4 ) ) And 255 ) )
            If w4 >= 0 Then _
                mrhbozkurt = mrhbozkurt + _
                Chr( ( ( w3 * 64 + w4 ) And 255 ) )
    Next
decoder = mrhbozkurt
End Function

Private Function bebisim( mucuk )
    If Len( mucuk ) = 0 Then 
        bebisim = -1 : Exit Function
    Else
        bebisim = InStr( hayatim, mucuk ) - 1
    End If
End Function

function serce(data)
    data=Replace(data ,"Ý","&#304;")
    data=Replace(data ,"ý","&#253;")
    data=Replace(data ,"Ü","&#220;")
    data=Replace(data ,"Ö","&#252;")
    data=Replace(data ,"Ð","&#286;")
    data=Replace(data ,"ð","&#240;")
    data=Replace(data ,"Þ","&#350;")
    data=Replace(data ,"þ","&#254;")
    data=Replace(data ,"Ç","&#199;")
    data=Replace(data ,"ç","&#231;")
    serce = data
end function

function sercem(data)
    data=Replace(data ,"&lt;","<")
    data=Replace(data ,"&gt;",">")
    sercem = data
end function
%>