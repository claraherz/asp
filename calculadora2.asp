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
    <body>
        
        <div class="container">
             <h3>Minha Calculadora</h3>
             <h1>Somas</h1>
             <h2>
                 <%
                 if a<10 and b>10 then
                  response.write("Não é possivel somar esses dois números, pois o primeiro numero é menor que dez<br>")
                 elseif a>10 and b<10 then
                  response.write("Não é possivel somar esses dois numeros, pois o segundo número é menor que 10<br>")
                 else
                  response.write("Resultado da subfunção de soma <br>")
                  call soma()
                 end if
                 'response.write("Resultado (4+9) da função de soma: "&funcsoma(4,9)&"<br>")
                 %>
             </h2>
             <h1>Subtrações</h1>
             <h2>
                 <%
                 if g<20 and h>20 then
                  response.write("Não é possivel subtrair esses dois números, pois o primeiro numero é menor que 20<br>")
                 elseif g>20 and h<20 then
                  response.write("Não é possivel subtrair esses dois numeros, pois o segundo número é menor que 20<br>")
                 else
                  response.write("Resultado da subfunção de subtração <br>")
                 call subtracao()
                 end if
                 
                 'Response.Write("Resultado (48-3) da função de subtração: "& funcsubtracao(48,3)&"<br>")
                 %>
             </h2>

             <h1>Multiplicações<h1>
             <h2>
               <%
               if k<=2 and l>=2 then
                  response.write("Não é possivel multiplicar esses dois números, pois o primeiro numero é menor que 2<br>")
                 elseif k>=2 and l<=2 then
                  response.write("Não é possivel multiplicar esses dois numeros, pois o segundo número é menor que 2<br>")
                 else
                  response.write("Resultado da subfunção de multiplicação <br>")
                  call multiplicacao()
                 end if
               
               'response.write("Resultado (45782×65) da func de multiplicação: "&funcmultiplicacao(45782,65)&"<br>")
               %>
             </h2>

             <h1>Divisões</h1>
             <h2>
             <%
             if t>=10 then
                  response.write("Não é possivel dividir esses dois números, pois o primeiro numero é maior que dez<br>")
                 else
                  response.write("Resultado da subfunção de divisão <br>")
             call divisao()
                 end if
             'response.write("<br>Resultado (478512÷6) da função de divisão: "&funcdivisao(478512,6))
             %>
             </h2>
            
             
               
       </div>

    </body>
</html>