<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
dim placaCarro, horaEntrada, i, arrhora, arrplaca, nomeUser, arrnome, arrhorasaida, horaSaida
redim arrhora(10)
redim arrplaca(10)
redim arrnome(10)
placaCarro = Request.Form("placaCarro")
horaEntrada = cdate(Request.Form("horaEntrada"))
nomeUser = Request.Form("nomeUser")
horaSaida = cdate(now())

if isarray(session("sessionarrhora")) then 
    arrhora = session("sessionarrhora")
    arrplaca = session("sessionarrplaca")
    arrnome = session("sessionarrnome")
end if

for i=0 to ubound(arrplaca)-1
    if trim(arrplaca(i))="" then
        arrplaca(i) = placaCarro
        arrhora(i) = horaEntrada - horaSaida
        arrnome(i) = nomeUser
        exit for
    end if
next
session("sessionarrhora") = arrhora
session("sessionarrplaca") = arrplaca
session("sessionarrnome") = arrnome

for i=0 to ubound(arrplaca)-1
    response.write arrplaca(i)&"<br>"&arrhora(i)&"<br>"&arrnome(i)&"<br>"
next
response.redirect
%>

<!---<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset=UTF-8>
    </head>
    <body>
        <form method="post" action="informacoes.asp">
            <p>insira a hora que você está saindo</p>
            <input type="time" name="horaSaida" value="" placeholder="">
            <p>
            <input type="submit" value="Done!" class="button">
            <br>
        </form>
    </body>
</html>--->