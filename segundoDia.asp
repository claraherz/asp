<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>

<%
    dim strVar1
    dim intVar2
    dim arrStrTeste, x
    dim i
    dim tamArr
    dim strEmails
    dim arrEmails
    dim strColors
    dim arrColors
    dim strExer, strExerStr

    sub comparador()
        if strExer = strExerStr then
        response.write "Sao iguais"
        else
        response.write "Sao diferentes"
        end if
    end sub

    strExer = "arara"
    response.write "palavra trans: "&strreverse(strExer)&"<br>"

    response.write "Palavra: "&strExer&"<br>"
    response.write "tamanho: "&len(strExer)&"<br>"

    for i=1 to len(strExer)
        response.write "posicao: "&mid(strExer,i,1)&"<br>"
    next
    response.write "<br>"
    for i=len(strExer) to 1 step -1
        response.write "posicao: "&mid(strExer,i,1)&"<br>"
    next

    for i=len(strExer) to 1 step -1
        'response.write mid(strExer,i,1)
        strExerStr = strExerStr + mid(strExer,i,1)
    next
    response.write "<br> Palavra ao contrario: "&strExerStr&"<br>"

    call comparador()

    response.end

    strColors = "azul;verde;roxo;preto;amarelo;vermelho;branco;magenta;rosa;marrom;"
    arrColors = split(strColors,";")

    for i = 0 to ubound(arrColors) - 1
    response.write "posicao " &i+1&": "&arrColors(i)&"<br>"
    if arrColors(i) = "magenta" then
    response.write "posicao da cor magenta: "&i+1&"<br>"
    else
    verificar = verificar + 1
    end if
    next

    if verificar = 10 then
    response.write "esssa cor nao existe na lista"
    elseif verificar = 9 then
    response.write " "
    end if

    

    strEmails = "teste@teste.com.br;bala@teste.com.br;gola@teste.com.br;rafaela@teste.com;"
    arrEmails = split(strEmails,";")
    response.write "tamanho "&ubound(arrEmails)&"<br>"

    for i = 0 to ubound(arrEmails) - 1
    response.write "posicao " &i&": "&arrEmails(i)&"<br>"
    if arrEmails(i) = "bala@teste.com.br" then
    response.write "posicao email: "&i&"<br>"
    end if
    next
    
    redim arrStrTeste(10)
    arrStrTeste(0)="Cafe"
    arrStrTeste(1)="Arroz"
    arrStrTeste(2)="Feijao"
    arrStrTeste(3)="Farinha de trigo"
    arrStrTeste(4)="Leite"
    arrStrTeste(5)="Lentilha"
    arrStrTeste(6)="Macarrao"
    arrStrTeste(7)="Pepino"
    arrStrTeste(8)="Berinjela"
    arrStrTeste(9)="Cerveja"

    'strVar1= "Minha Primeira Página Fim: "
    'intVar2 = 0
    tamArr = ubound(arrStrTeste)
    response.write("For <br>")
    For i = 0 to tamArr - 1
        'if trim(arrStrTeste(i)) ="Giliarde" then
        'exit for
        'end if'
        response.write("posicao "&i+1&": "&arrStrTeste(i)&"<br>")
    next
    response.write("<br>")
    response.write("For Each <br>")
    for each x in arrStrTeste
        response.write x&"<br>" 
    next
    response.write("Do While <br>")
    i=0
    do while i<=tamArr - 1
        response.write("posicao "&i+1&": "&arrStrTeste(i)&"<br>")
        i=i+1
    loop
    response.write("<br>")
    response.write("Do... while <br>")
    i=0
    do 
        response.write("posicao "&i+1&": "&arrStrTeste(i)&"<br>")
        i=i+1
    loop while i<=tamArr - 1
    response.write("<br>")
    response.write("Do until <br>")
    i=0
    tamArr = ubound(arrStrTeste)
    do until i>=tamArr 
        response.write("posicao "&i+1&": "&arrStrTeste(i)&"<br>")
        i=i+1
    loop 
    response.write("<br>")
    response.write("Do... until <br>")
    i=0
    tamArr = ubound(arrStrTeste)
    do 
        response.write("posicao "&i+1&": "&arrStrTeste(i)&"<br>")
        i=i+1
    loop until i>=tamArr


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Primeira Página</title>
    </head>
    <body>
        <!--<p><%=strVar1%><h2><%=intVar2%></h2></p>-->
        <!--<p>balalalakakaaka</p>-->
        
        <%
        'if intVar2=1 and strVar1="Minha Primeira Página Fim: "then
         'strVar1= "Minha Primeira Página Fim: "
        ' intVar2 = 2
        'elseif intVar2=0 then
        '' strVar1="Minha Primeira Página Meio: "
       ''  intVar2=4
        'else
        '' strVar1="Minha Primeria Página sem definição: "
        '' intVar2=5
        'end if

        'select case intVar2
          'case 1 
           'strVar1= "Minha Primeira Página Fim: "
           'intVar2 = 2
          'case 0
           'strVar1="Minha Primeira Página Meio: "
           'intVar2=4
          'case else
           'strVar1="Minha Primeria Página sem definição: "
           'intVar2=5
        'end select
        %>
        <p><%=strVar1%><h2><%=intVar2%></h2></p>
    </body>
</html>