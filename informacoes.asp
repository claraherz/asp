<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
dim nomeUser, placaCarro, horaEntrada
nomeUser = Request.Form("nomeUser")
placaCarro = Request.Form("placaCarro")
horaEntrada = Request.Form("horaEntrada")

session("sessionNomeUser")=nomeUser
session("sessionPlacaCarro")=placaCarro
session("sessionHoraEntrada")=horaEntrada

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins" , sans-serif;
        }
        body{
            min-height: 100vh;
            width: 100%;
            display: flex;
            background-color: #fff;
            align-items: center;
            justify-content: center;
            text-align: center;
            font-size: 20px;
        }
    </style>
    <body>
        <h1>
            <%
            response.write "Nome: "&nomeUser&"<br> Placa do veículo: "&placaCarro&"<br> Hora de entraada: "&horaEntrada
            %>
        </h1>
    </body>
</html>