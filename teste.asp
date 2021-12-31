<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%


dim i, j
dim strTeste123 
dim intTeste456, intTeste789
strTeste123 = "Maria Clara"
intTeste456 = 8
intTeste789 = 2

dim mtzArrayTeste
dim arrTelefones
dim arrRuas
dim strFunction

redim mtzArrayTeste(2,5)
mtzArrayTeste(0,0) = "teste"
mtzArrayTeste(0,1) = 12
mtzArrayTeste(0,2) = 89.45
mtzArrayTeste(0,3) = "ggg"
mtzArrayTeste(0,4) = 45

mtzArrayTeste(1,0) = "teste 1"
mtzArrayTeste(1,1) = 13
mtzArrayTeste(1,2) = 56.45
mtzArrayTeste(1,3) = "ggg 1"
mtzArrayTeste(1,4) = 6

redim arrTelefones(3)
arrTelefones(0) = 4758412542
arrTelefones(1) = 4725146985
arrTelefones(2) = 4798665412

redim arrRuas(4)
arrRuas(0) = "Rua Ignês Erthal"
arrRuas(1) = "Rua 7 de Setembro"
arrRuas(2) = "Rua Urussanga"
arrRuas(3) = "Rua Alan Nascimento Silva"

%>
<!DOCTYPE html>
<html>
    <body>
        <%
            sub testesub()
             response.write("resultado: "&intTeste456+intTeste789)
            end sub
            
            function testefunction()
             strFunction = "teste function"
             testefunction = strFunction
            end function

        
        %>
        <h2>
            <%
               Response.Write(strTeste123&"<br>")

               Response.Write(intTeste456)

               Response.Write("<br>pos 1: "&mtzArrayTeste(0,0)&"<br>")
               Response.Write("pos 1,2: "&mtzArrayTeste(0,1)&"<br>")
               Response.Write("pos 1,3: "&mtzArrayTeste(0,2)&"<br>")
               Response.Write("pos 1,4: "&mtzArrayTeste(0,3)&"<br>")
               Response.Write("pos 1,5: "&mtzArrayTeste(0,4)&"<br>")

               Response.Write("pos 2: "&mtzArrayTeste(1,0)&"<br>")
               Response.Write("pos 2,2: "&mtzArrayTeste(1,1)&"<br>")
               Response.Write("pos 2,3: "&mtzArrayTeste(1,2)&"<br>")
               Response.Write("pos 2,4: "&mtzArrayTeste(1,3)&"<br>")
               Response.Write("pos 2,5: "&mtzArrayTeste(1,4)&"<br>")
               
               Response.Write("teste tamanho:"&ubound(mtzArrayTeste,1)&"<br>")
               for i = 0 to ubound(mtzArrayTeste,1)-1
                    for j = 0 to ubound(mtzArrayTeste,2)-1
                    response.write "pos:" &i&","&j&mtzArrayTeste(i,j)&"<br>"
                    next

               next

               call testesub()
               response.write(testefunction())


               
               'redim Preserve arrArrayTeste(6)
               'arrArrayTeste(5)=789
               'Response.Write("pos 1:"&arrArrayTeste(0)&"<br>")
               'Response.Write("pos 2:"&arrArrayTeste(1)&"<br>")
               'Response.Write("pos 3:"&arrArrayTeste(2)&"<br>")
               'Response.Write("pos 4:"&arrArrayTeste(3)&"<br>")
               'Response.Write("pos 5:"&arrArrayTeste(4)&"<br>")
               'Response.Write("pos 6:"&arrArrayTeste(5)&"<br>")

               'Response.Write("teste tamanho:"&ubound(arrArrayTeste)&"<br>")

               'Response.Write("Tel 1: "&arrTelefones(0)&"<br>")
               'Response.Write("Tel 2: "&arrTelefones(1)&"<br>")
               'Response.Write("Tel 3: "&arrTelefones(2)&"<br>")
               'Response.Write("teste tamanho:"&ubound(arrTelefones)&"<br>")

               'redim Preserve arrTelefones(4)
               'arrTelefones(3) = arrTelefones(1) + arrTelefones(2)
               'Response.Write("Tel 1: "&arrTelefones(0)&"<br>")
               'Response.Write("Tel 2: "&arrTelefones(1)&"<br>")
               'Response.Write("Tel 3: "&arrTelefones(2)&"<br>")
               'Response.Write("Tel 4: "&arrTelefones(3)&"<br>")
               'Response.Write("tamanho do array: "&ubound(arrTelefones)&"<br>")
               
               'Response.Write("Rua principal: "&arrRuas(0)&"<br>")
               'Response.Write("Rua filial: "&arrRuas(1)&"<br>")
               'Response.Write("Rua filial: "&arrRuas(2)&"<br>")
               'Response.Write("Rua filial: "&arrRuas(3)&"<br>")
               'Response.Write("tamanho do array: "&ubound(arrRuas)&"<br>")
               'Response.end
            %>
        </h2>
    </body>
</html>



