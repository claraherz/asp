<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
'declarando variaveis'
dim i, intDesloc, strFraseUser, strFraseMaquina, intLetra, strOpcao, intAsc, boolvalida, strMostraNaTela

'atribuindo valores as variaveis'
strFraseMaquina = ""
intDesloc = Request.Form("intDesloc")
strFraseUser = Request.Form("mensagem")
strOpcao = Request.Form("opcao")



'corpo do software'
if intDesloc = "" or strOpcao = "" then

    strMostraNaTela = "Você precisa selecionar o deslocamento e/ou se deseja criptografar ou descriptografar"

else
    if intDesloc =< 25 then
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
                        elseif intAsc > 64 and intAsc < 91 then
                            'Nesse if só entra letra maiuscula'
                            intLetra = intAsc - intDesloc
                            if intLetra < 65 then
                                'Por motivos de bugs, esse if existe para caso a letra seja menor que o valor suportado ela receber a validação e tudo ficar nos conformes'
                                intLetra = intLetra + 26
                            end if
                        end if
                        strFraseMaquina = strFraseMaquina + Chr(intLetra)
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
                        elseif intAsc > 64 and intAsc < 91 then
                            'Nesse if só entra letra maiuscula'
                            intLetra = intAsc + intDesloc
                            if intLetra > 90 then
                                'Por motivos de bugs, esse if existe para caso a letra seja maior que o valor suportado ela receber a validação e tudo ficar nos conformes'
                                intLetra = intLetra - 26
                            end if
                        end if
                        strFraseMaquina = strFraseMaquina + Chr(intLetra)
                    end if
                next
        end select
        boolvalida = true
    else
        strMostraNaTela = "Não é possivel continuar com essa ação, pois o valor minimo para deslocação é 25."
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
        <div class="container">
            <form method="post" action="index.asp">
                <h1>Cifra de Cesar</h1>
                <label>Deslocamento<label>
                <br>
                <input type="number" name="intDesloc" value="" class="intDesloc">
                <br>
                <br>
                <label>Mensagem:</label>
                <input type="radio" name="opcao" value="criptografar"> 
                <label>Criptografar</label>
                <input type="radio" name="opcao" value="descriptografar">
                <label>Descriptografar</label>
                <br>
                <textarea type="text" name="mensagem" rows="10" cols="100" class="mesagem"></textarea>
                <br>
                <button type="submit" class="button">Enviar!</button>
                <br>
                <h2>   
                    <%
                        if boolvalida = true then
                            response.write strFraseMaquina
                        else
                            response.write strMostraNaTela
                        end if
                    %>
                </h2>
            </form>
        </div>
    </body>
</html>