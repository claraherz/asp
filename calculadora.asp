<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<!-- BLOCO DE VARIÁVEIS -->
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

%>
<!-- BLOCO DE FUNÇÕES E SUBFUNÇÕES -->
<%

            'sessão soma'
            sub soma()
             response.write("A soma de "&a&"+"&b& ": "&a+b&"<br>")
             
             'if do mod'
             if (a+b) mod 2 = 0 then
             response.write("Seu número é par")
             else
             response.write("Seu número é impar")
             end if

            end sub
            'function funcsoma(a,b)
            '' funcsoma= a + b
            'end function

            'sessão subtração'
            sub subtracao()
             response.write("A subtração de "&g&"-"&h& ": "&g-h&"<br>")

             'if do mod'
             if (g-h) mod 2 = 0 then
             response.write("Seu número é par")
             else
             response.write("Seu número é impar")
             end if

            end sub
            'function funcsubtracao(g,h)
            '' funcsubtracao = g - h
            'end function

            'sessão multiplicação'
            sub multiplicacao()
             response.write("A multiplicação de "&k&"×"&l& ": "&k*l&"<br>")

             'if do mod'
             if (k*l) mod 2 = 0 then
             response.write("Seu número é par")
             else
             response.write("Seu número é impar")
             end if

            end sub
            'function funcmultiplicacao(k,l)
            '' funcmultiplicacao = k * l
            'end function

            'sessão divisão'
            sub divisao()
             response.write("A divisão de "&s&"÷"&t& ": "&s/t &"<br>")

             'if do mod'
             if (s/t) mod 2 = 0 then
             response.write("Seu número é par")
             else
             response.write("Seu número é impar")
             end if

            end sub
            'function funcdivisao(s,t)
            '' funcdivisao= s/t
            'end function
        
            
        %>


<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    </head>
    <style>
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
        .calc{
            width: 70px;
            height: 25px;
            font-size: 15px;
            margin: 3px;
            background-color: #3d3267;
            border: none;
            color: #fff;
            cursor: pointer;
        }
        .container{
            width: 85%;
            background: #fff;
            border-radius: 6px;
            padding: 20px 60px 30px 40px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
        }
        .container .label{
            text-align: center;
            font-size: 30px;
            color: #3d3267;
        }
    </style>
    <body>
        
        <div class="container">
             <h3>Minha Calculadora</h3>
             <!--<h1>Somas</h1>-->
             <h2>
                 <form method="get" action="calculadora.asp">
                    <p class="label">insira o primeiro número</p>
                    <input type="number" name="primeiro" value=""><!--pode ser aqui-->
                    <p class="label">insira o segundo número</p>
                    <input type="number" name="segundo" value="" ><!--pode ser aqui-->
                    <br>
                    <input type="submit" class="op" type="button" name="simbolos" value="+">
                    <input type="submit" class="op" type="button" name="simbolos" value="-">
                    <input type="submit" class="op" type="button" name="simbolos" value="x">
                    <input type="submit" class="op" type="button" name="simbolos" value="÷">
                    <input type="submit" class="calc" value="Calcular">
             </h2>
            
             
               
       </div>

    </body>
</html>