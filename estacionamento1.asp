<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
dim placaCarro, horaEntrada, i, arrhora, arrplaca, nomeUser, arrnome
placaCarro = Request.Form("placaCarro")
horaEntrada = Request.Form("horaEntrada")
nomeUser = Request.Form("nomeUser")
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset=UTF-8>
    </head>
    <body>
        <form method="post" action="informacoes.asp">
            <input type="text" name="nomeUser" placeholder="Insira o seu nome" value="">
            <br>
            <br>
            <input type="text" name="placaCarro" value="" placeholder="insira a placa do seu carro">
            <p>insira a hora que você entrou</p>
            <input type="time" name="horaEntrada" value="" placeholder="">
            <p>
            <input type="submit" value="Done!" class="button">
            <br>
        </form>
    </body>
</html>