Attribute VB_Name = "M�dulo1"
' Tirando a M�dia das Notas

Sub calculo_media()

x = 0
last_row = Cells(Rows.Count, 9).End(xlUp).Row

For i = 1 To last_row

    y = Cells(i, 9).Value()
    x = x + y
    
Next i

Media_calculo = x / last_row

MsgBox ("A m�dia � de")
MsgBox (Media_calculo)

End Sub

