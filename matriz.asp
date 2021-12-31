<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%

Dim max,min, i, j, numdel, mtzsoma, arrresultado
redim mtzsoma(5,2)
max=100
min=1

for i=0 to ubound(mtzsoma,1)-1
    for j=0 to ubound(mtzsoma,2)-1
        Randomize()
        numdel = (Int((max-min+1)*Rnd+min))
        mtzsoma(i,j)=numdel
    next
next

redim arrresultado(5)
for i = 0 to 4
    arrresultado(i) = mtzsoma(i,0)+mtzsoma(i,1)
next

response.write "<table border = 1>"
                response.write "<tr>"
                response.write "<td>Primeiro numero</td>"
                response.write "<td>Segundo numero</td>"
                response.write "<td>Resultado</td>"
                response.write "</tr>"
                for i = 0 to ubound(mtzsoma,1)-1
                    response.write "<tr>"
                        for j = 0 to ubound(mtzsoma,2)-1
                            response.write "<td> "&mtzsoma(i,j)&"</td>"
                        next
                        response.write "<td>"&arrresultado(i)&"<br></td>"
                        response.write "</tr>"
                next
                response.write "</table>"





'for i = 0 to 4
    'response.write arrresultado(i)&"<br>"
'next

response.end




            

%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    </head>
    <body>
        <h2>
            <%
                
            %>
        </h2>
    </body>
</html>