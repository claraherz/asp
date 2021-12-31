<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
    dim arrVetor, intMen, intPosMen, intMai, intPosMai, intNumAnt
    dim i, j
    dim temp
    dim arrVetor1

    redim arrVetor1(3)
    arrVetor1(0) = 45
    arrVetor1(1) = -3
    arrVetor1(2) = 10

    redim arrVetor(10)
    arrVetor(0) = 78
    arrVetor(1) = 2
    arrVetor(2) = 13
    arrVetor(3) = 789
    arrVetor(4) = 1
    arrVetor(5) = 5
    arrVetor(6) = 22
    arrVetor(7) = 0
    arrVetor(8) = -23
    arrVetor(9) = 7
%>
<%
    sub retornaOMenor()
    for i = 0 to 10 -1
        if arrVetor(i) < intMen then
        intMen = arrVetor(i)
        intPosMen = i
        end if
    next
    response.write "Menor numero "&intMen
    response.write "<br>Posicao do menor numero "&intPosMen
    end sub

    sub retornaOMaior()
    for i = 0 to 10 -1
        if arrVetor(i) > intMai then
        intMai = arrVetor(i)
        intPosMai = i
        end if
    next
    response.write "Maior numero "&intMai
    response.write "<br>Posicao do maior numero "&intPosMai
    end sub





     

%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
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
        }
    </style>
    <body>
        <h2>
            <%
                call retornaOMaior()
                response.write "<br>"
                call retornaOMenor()
                response.write "<br>"
                for i = 0 to 8
                  for j = i+1 to 9
                    if arrVetor(j) > arrVetor(i) then
                    temp = arrVetor(i)
                    arrVetor(i) = arrVetor(j)
                    arrVetor(j) = temp
                    end if 
                   next
                next 

                for i=0 to 9
                  response.write(arrVetor(i)&" ")
                next
                
                response.write "<br>"
                for i = 0 to 8
                  for j = i+1 to 9
                    if arrVetor(j) < arrVetor(i) then
                    temp = arrVetor(i)
                    arrVetor(i) = arrVetor(j)
                    arrVetor(j) = temp
                    end if 
                   next
                next 

                for i=0 to 9
                  response.write(arrVetor(i)&" ")
                next
            %>
        </h2>
    </body>
</html>