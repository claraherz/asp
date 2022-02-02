<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
'declarando variaveis'
dim i, intDesloc, strFraseUser, strFraseMaquina, intLetra, strOpcao, intAsc, boolvalida, strMostraNaTela, strResult

'atribuindo valores as variaveis'
strFraseMaquina = ""
intDesloc = Request.Form("intDesloc")
strFraseUser = Request.Form("mensagem")
strOpcao = Request.Form("opcao")



'corpo do software'
if intDesloc = "" or strOpcao = ""  or strFraseUser = "" then

    strMostraNaTela = "Você precisa selecionar o deslocamento ou/e colocar um texto ou/e se deseja criptografar ou descriptografar"

else
    if intDesloc =< 25  and intDesloc >= 1 then
        select case (strOpcao)
            case "criptografar"

                for i = 1 to len(strFraseUser)
                    if mid(strFraseUser,i,1) = " " then
                        'aqui pergunta a maquina se o caracter inserido pelo usuario é espaço, se for, ele entra no if e é mantido no corpo da frase'
                        intLetra = mid(strFraseUser,i,1)
                        strFraseMaquina = strFraseMaquina + intLetra
                    else
                        intAsc = Asc(mid(strFraseUser,i,1))
                        if intAsc > 96 and intAsc < 123 then
                            'Nesse if só entra letra minuscula'
                            intLetra = intAsc - intDesloc
                            if intLetra < 97 then
                                'Por motivos de bugs, esse if existe para caso a letra seja menor que o valor suportado ela receber a validação e tudo ficar nos conformes'
                                intLetra = intLetra + 26
                            end if
                            strFraseMaquina = strFraseMaquina + Chr(intLetra)
                        elseif intAsc > 64 and intAsc < 91 then
                            'Nesse if só entra letra maiuscula'
                            intLetra = intAsc - intDesloc
                            if intLetra < 65 then
                                'Por motivos de bugs, esse if existe para caso a letra seja menor que o valor suportado ela receber a validação e tudo ficar nos conformes'
                                intLetra = intLetra + 26
                            end if
                            strFraseMaquina = strFraseMaquina + Chr(intLetra)
                        else
                            intLetra = mid(strFraseUser,i,1)
                            strFraseMaquina = strFraseMaquina + intLetra
                        end if
                        
                    end if
                next

            case "descriptografar"
                for i = 1 to len(strFraseUser)
                    if mid(strFraseUser,i,1) = " " then
                        'aqui pergunta a maquina se o caracter inserido pelo usuario é espaço, se for, ele entra no if e é mantido no corpo da frase'
                        intLetra = mid(strFraseUser,i,1)
                        strFraseMaquina = strFraseMaquina + intLetra
                    else
                        'Caso o caracter não seja espaço, ele entra no else e ocorre o momento de criptografar a letra.'
                        intAsc = Asc(mid(strFraseUser,i,1))
                        if intAsc > 96 and intAsc < 123 then
                            'Nesse if só entra letra minuscula'
                            intLetra = intAsc + intDesloc
                            if intLetra > 122 then
                                'Por motivos de bugs, esse if existe para caso a letra seja maior que o valor suportado ela receber a validação e tudo ficar nos conformes'
                                intLetra = intLetra - 26
                            end if
                            strFraseMaquina = strFraseMaquina + Chr(intLetra)
                        elseif intAsc > 64 and intAsc < 91 then
                            'Nesse if só entra letra maiuscula'
                            intLetra = intAsc + intDesloc
                            if intLetra > 90 then
                                'Por motivos de bugs, esse if existe para caso a letra seja maior que o valor suportado ela receber a validação e tudo ficar nos conformes'
                                intLetra = intLetra - 26
                            end if
                            strFraseMaquina = strFraseMaquina + Chr(intLetra)
                        else
                            intLetra = mid(strFraseUser,i,1)
                            strFraseMaquina = strFraseMaquina + intLetra
                        end if
                    end if
                next
        end select
        boolvalida = true
    else
        if intDesloc > 25 then
        strMostraNaTela = "Não é possivel continuar com essa ação, pois o valor maximo para deslocação é 25."
        elseif intDesloc <= 0 then
        strMostraNaTela = "Não é possivel continuar com essa ação, pois o valor minimo para deslocação é 1."
        end if 
         boolvalida = false
    end if
end if
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" href="style.css">
        <title>Cifra de Cesar</title>
    </head>
    <body>
        <div class="main">   
        <div class="container">
            <form method="post" action="index.asp" class="form">
                <h1>Cifra de Cesar</h1>
                <label>Deslocamento<label>
                <br>
                <input type="number" name="intDesloc" value="" class="intDesloc">
                <br>
                <br>
                <label class="message">Mensagem:</label>
                <input type="radio" name="opcao" value="criptografar" class="radioButton"> 
                <label>Criptografar</label>
                <input type="radio" name="opcao" value="descriptografar" class="radioButton">
                <label>Descriptografar</label>
                <br>
                <textarea type="text" name="mensagem" rows="10" cols="100" class="mesagem"><%=strFraseMaquina%></textarea>
                <br>
                <button type="submit" class="button">Enviar!</button>
                <br>
                <h2>
                    <%
                        if boolvalida = false then
                            response.write strMostraNaTela
                        end if
                    %>
                </h2>
            </form>
        </div>
        </div>
    </body>
</html>