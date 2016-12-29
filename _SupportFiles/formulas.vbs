Function ProperCase(sText)
'*** Converts text to proper case e.g.  ***'
'*** surname = Surname                  ***'
'*** o'connor = O'Connor                ***'
 
    Dim a, iLen, bSpace, tmpX, tmpFull
 
    iLen = Len(sText)
    For a = 1 To iLen
    If a <> 1 Then 'just to make sure 1st character is upper and the rest lower'
        If bSpace = True Then
            tmpX = UCase(mid(sText,a,1))
            bSpace = False
        Else
        tmpX=LCase(mid(sText,a,1))
            If tmpX = " " Or tmpX = "'" Then bSpace = True
        End if
    Else
        tmpX = UCase(mid(sText,a,1))
    End if
    tmpFull = tmpFull & tmpX
    Next
    ProperCase = tmpFull
End Function