<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<!-- BLOCO DE VARI�VEIS -->
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
<!-- BLOCO DE FUN��ES E SUBFUN��ES -->
<%

            'sess�o soma'
            sub soma()
             response.write("A soma de "&a&"+"&b& ": "&a+b&"<br>")
             
             'if do mod'
             if (a+b) mod 2 = 0 then
             response.write("Seu n�mero � par")
             else
             response.write("Seu n�mero � impar")
             end if

            end sub
            'function funcsoma(a,b)
            '' funcsoma= a + b
            'end function

            'sess�o subtra��o'
            sub subtracao()
             response.write("A subtra��o de "&g&"-"&h& ": "&g-h&"<br>")

             'if do mod'
             if (g-h) mod 2 = 0 then
             response.write("Seu n�mero � par")
             else
             response.write("Seu n�mero � impar")
             end if

            end sub
            'function funcsubtracao(g,h)
            '' funcsubtracao = g - h
            'end function

            'sess�o multiplica��o'
            sub multiplicacao()
             response.write("A multiplica��o de "&k&"�"&l& ": "&k*l&"<br>")

             'if do mod'
             if (k*l) mod 2 = 0 then
             response.write("Seu n�mero � par")
             else
             response.write("Seu n�mero � impar")
             end if

            end sub
            'function funcmultiplicacao(k,l)
            '' funcmultiplicacao = k * l
            'end function

            'sess�o divis�o'
            sub divisao()
             response.write("A divis�o de "&s&"�"&t& ": "&s/t &"<br>")

             'if do mod'
             if (s/t) mod 2 = 0 then
             response.write("Seu n�mero � par")
             else
             response.write("Seu n�mero � impar")
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
                  response.write("N�o � possivel somar esses dois n�meros, pois o primeiro numero � menor que dez<br>")
                 elseif a>10 and b<10 then
                  response.write("N�o � possivel somar esses dois numeros, pois o segundo n�mero � menor que 10<br>")
                 else
                  response.write("Resultado da subfun��o de soma <br>")
                  call soma()
                 end if
                 'response.write("Resultado (4+9) da fun��o de soma: "&funcsoma(4,9)&"<br>")
                 %>
             </h2>
             <h1>Subtra��es</h1>
             <h2>
                 <%
                 if g<20 and h>20 then
                  response.write("N�o � possivel subtrair esses dois n�meros, pois o primeiro numero � menor que 20<br>")
                 elseif g>20 and h<20 then
                  response.write("N�o � possivel subtrair esses dois numeros, pois o segundo n�mero � menor que 20<br>")
                 else
                  response.write("Resultado da subfun��o de subtra��o <br>")
                 call subtracao()
                 end if
                 
                 'Response.Write("Resultado (48-3) da fun��o de subtra��o: "& funcsubtracao(48,3)&"<br>")
                 %>
             </h2>

             <h1>Multiplica��es<h1>
             <h2>
               <%
               if k<=2 and l>=2 then
                  response.write("N�o � possivel multiplicar esses dois n�meros, pois o primeiro numero � menor que 2<br>")
                 elseif k>=2 and l<=2 then
                  response.write("N�o � possivel multiplicar esses dois numeros, pois o segundo n�mero � menor que 2<br>")
                 else
                  response.write("Resultado da subfun��o de multiplica��o <br>")
                  call multiplicacao()
                 end if
               
               'response.write("Resultado (45782�65) da func de multiplica��o: "&funcmultiplicacao(45782,65)&"<br>")
               %>
             </h2>

             <h1>Divis�es</h1>
             <h2>
             <%
             if t>=10 then
                  response.write("N�o � possivel dividir esses dois n�meros, pois o primeiro numero � maior que dez<br>")
                 else
                  response.write("Resultado da subfun��o de divis�o <br>")
             call divisao()
                 end if
             'response.write("<br>Resultado (478512�6) da fun��o de divis�o: "&funcdivisao(478512,6))
             %>
             </h2>
            
             
               
       </div>

    </body>
</html>