<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<!-- BLOCO DE VARIÁVEIS -->
<%
'dim a, b, g, h, k, l, t, s, x
'dim resultado
'a = 30'2 
'b = 765 
'g = 58.5 '13'
'h = 32 '0.512'
'k = 254412 '1'
'l = 4 '2'
't = 5 '33' 
's = 165 

%>
<!-- BLOCO DE FUNÇÕES E SUBFUNÇÕES -->
<%
            sub calcular()
                if insert("+") then
                
            end sub
            'sessão soma'
            'sub soma(a,b)
            '' response.write("A soma de "&a&"+"&b& ": "&a+b&"<br>")
             
             'if do mod'
            '' if (a+b) mod 2 = 0 then
            '' response.write("Seu número é par")
            '' else
            '' response.write("Seu número é impar")
            '' end if

            'end sub
            'function funcsoma(a,b)
            '' funcsoma= a + b
            'end function

            'sessão subtração'
            'sub subtracao(g,h)
             'response.write("A subtração de "&g&"-"&h& ": "&g-h&"<br>")

             'if do mod'
            '' if (g-h) mod 2 = 0 then
             'response.write("Seu número é par")
             'else
             'response.write("Seu número é impar")
            '' end if

            'end sub
            'function funcsubtracao(g,h)
            '' funcsubtracao = g - h
            'end function

            'sessão multiplicação'
            'sub multiplicacao(k,l)
             'response.write("A multiplicação de "&k&"×"&l& ": "&k*l&"<br>")

             'if do mod'
             'if (k*l) mod 2 = 0 then
            '' response.write("Seu número é par")
             'else
            '' response.write("Seu número é impar")
             'end if

            'end sub
            'function funcmultiplicacao(k,l)
            '' funcmultiplicacao = k * l
            'end function

            'sessão divisão'
            'sub divisao(s,t)
             'response.write("A divisão de "&s&"÷"&t& ": "&s/t &"<br>")

             'if do mod'
            '' if (s/t) mod 2 = 0 then
            '' response.write("Seu número é par")
            '' else
            '' response.write("Seu número é impar")
            '' end if

            'end sub
            'function funcdivisao(s,t)
            '' funcdivisao= s/t
            'end function
        
            
        %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calculadora</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            *{
                margin: 0;
                padding: 0;
                font-family: "Poppins" , sans-serif;
            }
            .fundo{
                background-color: plum;
                height: 100vh;
                color: #fff;
                text-align: center;
            }
            .calculadora{
                position: absolute;
                background-color: #3d3267;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                border-radius: 15px;
                padding: 15px;
            }
            .botao{
                width: 50px;
                height: 50px;
                font-size: 25px;
                cursor: pointer;
                margin: 3px;
                background-color: #000;
                border: none;
                color: #fff;
                cursor: pointer;
                transition: 0.5s;
            }
            .botao:hover{
                background-color: grey;
                
            }
            #resultado{
                background-color: white;
                width: 207px;
                height: 30px;
                margin: 5px;
                font-size: 25px;
                color: black;
                text-align: right;
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <div class="fundo">
        <div class="calculadora">
            <h1>Calculadora</h1>
            <p id="resultado"></p>
            <table>
                <tr>
                    <td><button class="botao" onclick="clean()">C</button></td>
                    <td><button class="botao" onclick="back()"><</button></td>
                    <td><button class="botao" onclick="insert('/')">/</button></td>
                    <td><button class="botao" onclick="insert('*')">X</button></td>
                </tr>
                <tr>
                    <td><button class="botao" onclick="insert('7')">7</button></td>
                    <td><button class="botao" onclick="insert('8')">8</button></td>
                    <td><button class="botao" onclick="insert('9')">9</button></td>
                    <td><button class="botao" onclick="insert('-')">-</button></td>
                </tr>
                <tr>
                    <td><button class="botao" onclick="insert('4')">4</button></td>
                    <td><button class="botao" onclick="insert('5')">5</button></td>
                    <td><button class="botao" onclick="insert('6')">6</button></td>
                    <td><button class="botao" onclick="insert('+')">+</button></td>
                </tr>
                <tr>
                    <td><button class="botao" onclick="insert('1')">1</button></td>
                    <td><button class="botao" onclick="insert('2')">2</button></td>
                    <td><button class="botao" onclick="insert('3')">3</button></td>
                    <td rowspan="2"><button class="botao" style="height: 106px;" onclick="calcular()">=</button></td>
                </tr>
                <tr>
                    <td colspan="2"><button class="botao" style="width: 106px;" onclick="insert('0')">0</button></td>
                    <td><button class="botao" onclick="insert('.')">.</button></td>
                </tr>
            </table>
        </div>
    </div>
    <script>
        function insert(num)
        {
            let numero = document.getElementById('resultado').innerHTML;
            document.getElementById('resultado').innerHTML = numero + num;
        }
        function clean()
        {
            document.getElementById('resultado').innerHTML = "";
        }
        function back()
        {
            let resultado = document.getElementById('resultado').innerHTML;
            document.getElementById('resultado').innerHTML = resultado.substring(0, resultado.length -1);
        }
        function calcular()
        {
            let resultado = document.getElementById('resultado').innerHTML;
            if(resultado)
            {
                document.getElementById('resultado').innerHTML = eval(resultado);
            }
            else
            {
                document.getElementById('resultado').innerHTML = "Nada..."
            }
        }
    </script>
    </body>
</html>