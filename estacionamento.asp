<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
dim nomeUser, placaCarro, horaEntrada, arrnome, arrplaca, arrhora, i
nomeUser = Request.Form("nomeUser")
placaCarro = Request.Form("placaCarro")
horaEntrada = Request.Form("horaEntrada")

redim arrnome(10)
redim arrplaca(10)
redim arrhora(10)

if isarray(session("sessionarrnome")) then
    arrnome = session("sessionarrnome")
    arrplaca = session("sessionarrplaca")
    arrhora = session("sessionarrhora")
end if

session("sessionarrnome")=arrnome
session("sessionarrplaca")=arrplaca
session("sessionarrhora")=arrhora

for i=0 to ubound(arrnome)-1
    response.write arrnome(i)&"<br>"&arrplaca(i)&"<br>"&arrhora(i)&"<br>"
next
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
            font-size: 25px;
        }
        .decor{
            width: 100%;
            height: 30px;
            margin: 10px; 
        }
        .button{
            width: 30%;
            height: 30px;
            margin: 10px;
        }

    </style>
    <body>
        <form method="post" action="estacionamento.asp">
                    <input type="text" name="nomeUser" value="" class="decor" placeholder="insira seu nome completo">
                    <input type="text" name="placaCarro" value="" class="decor" placeholder="insira a placa do seu carro">
                    <p class="decor">insira a hora que você entrou</p>
                    <input type="time" name="horaEntrada" value="" class="decor" placeholder="">
                    <p>
                    <input type="submit" value="Done!" class="button">
                    <br>


        </form>

    </body>
</html>