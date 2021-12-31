<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<!-- BLOCO DE VARIÝVEIS -->
<%
dim a, b, g, h, k, l, t, s, x
dim resultado
a = 30'2 
b = 765 
g = 58.5 '13'
h = 32 '0.512'
k = 254412 '1'
l = 4 '2'
t = 5 '33' 
s = 165 
dim dblnum1, dblnum2
dim simbolos
dim boolpi
dim boolValida
dim strMostraNaTela

%>
<!-- BLOCO DE FUNÇÕES E SUBFUNÇÕES -->
<%

dblnum1 = Request.Form("primeiro")
dblnum2 = Request.Form("segundo")
simbolos = Request.Form("simbolos")

            select case (simbolos)
                case "+"
                if dblnum1<10 and dblnum2>10 then
                  strMostraNaTela = "Não é possivel somar esses dois números, pois o primeiro numero é menor que dez<br>"
                  boolValida = false

                 elseif dblnum1>10 and dblnum2<10 then
                  strMostraNaTela = "Não é possivel somar esses dois numeros, pois o segundo número é menor que 10<br>"
                  boolValida = false
                 else
                 resultado= cdbl(dblnum1)+cdbl(dblnum2)

                 if resultado mod 2 = 0 then 
                 boolpi = true
                 else
                 boolpi = false
                 end if
                 boolValida = true

                 end if
                
                case "-"
                if dblnum1<20 and dblnum2>20 then
                  strMostraNaTela = "Não é possivel subtrair esses dois números, pois o primeiro numero é menor que 20<br>"
                  boolValida = false

                 elseif dblnum1>20 and dblnum2<20 then
                  strMostraNaTela = "Não é possivel subtrair esses dois numeros, pois o segundo número é menor que 20<br>"
                  boolValida = false

                 else
                   resultado= cdbl(dblnum1)-cdbl(dblnum2)

                   if resultado mod 2 = 0 then 
                   boolpi = true
                   else
                   boolpi = false
                   end if

                   boolValida = true
                 end if
                

                case "x"
                if dblnum1<=2 and dblnum2>=2 then
                  strMostraNaTela = "Não é possivel multiplicar esses dois números, pois o primeiro numero é menor que 2<br>"
                  boolValida = false

                 elseif dblnum1>=2 and dblnum2<=2 then
                  strMostraNaTela = "Não é possivel multiplicar esses dois numeros, pois o segundo número é menor que 2<br>"
                  boolValida = false

                 else
                  resultado= cdbl(dblnum1)*cdbl(dblnum2)

                  if resultado mod 2 = 0 then 
                  boolpi = true
                  else
                  boolpi = false
                  end if

                  boolValida = true
                 end if
                

                case "÷"
                if dblnum2>=10 then
                  strMostraNaTela = "Não é possivel dividir esses dois números, pois o divisor numero é maior que dez<br>"
                  boolValida = false

                 else
                  resultado= cdbl(dblnum1)/cdbl(dblnum2)

                  if resultado mod 2 = 0 then 
                  boolpi = true
                  else
                  boolpi = false
                  end if
                  boolValida = true

                 end if
                
            end select

        %>


<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    </head>
    <style>
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
            background-image: url("wallpaper2.jpg");
            background-size: 100%;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        h2{
            color: #fff5e6;
            font-size: 35px;
        }
        .op{
            width: 25px;
            height: 25px;
            font-size: 15px;
            cursor: pointer;
            margin: 3px;
            background-color: #3d3267;
            border: none;
            color: #fff;
            transition: 0.5s;
        }
        .container{
            width: 85%;
            border-radius: 6px;
            padding: 20px 60px 30px 40px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
        }
        .container .label{
            text-align: center;
            font-size: 30px;
            color: #fff;
        }
        .container h2 form .label{
            text-align: center;
            font-size: 35px;
            color: #fff5e6;
        }
        .container h3{
            text-align: center;
            font-size: 45px;
            color: #fff5e6;
        }
        h1{
            font-size: 20px;
            color: white;
        }
    </style>
    <body>
        
        <div class="container">
             <h3>Minha Calculadora</h3>
             <h1><%response.write "hoje é "&WeekdayName(weekday(date))&"<br> dia "&day(date())&" de "&MonthName(month(date))&" de "&year(date())%></h1>
             <!--<h1>Somas</h1>-->
             <h2>
                 
                 <form method="post" action="calculadora.asp">
                    <p class="label">insira o primeiro número</p>
                    <input type="text" name="primeiro" value=""><!--pode ser aqui-->
                    <p class="label">insira o segundo número</p>
                    <input type="text" name="segundo" value="" ><!--pode ser aqui-->
                    <br>
                    <input type="submit" class="op" type="button" name="simbolos" value="+">
                    <input type="submit" class="op" type="button" name="simbolos" value="-">
                    <input type="submit" class="op" type="button" name="simbolos" value="x">
                    <input type="submit" class="op" type="button" name="simbolos" value="÷">
                    <%
                    
                    if boolValida = false then
                        response.write "<br>"&strMostraNaTela
                    else
                        response.write "<br>Esse é o resultado da equação: "&resultado

                            if boolpi = true then
                                response.write "<br> Seu número é par"
                            else
                                response.write "<br> Seu número é impar"
                            end if
                    end if
                    
                    
                    %>
             </h2>
            
             
               
       </div>

    </body>
</html>