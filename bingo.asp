<%@LANGUAGE="VBSCRIPT" LCID=1046 CODEPAGE="65001"%>
<%Option Explicit%>
<%
Dim max,min,mtzBingo, i, j, qtd, numdel, veri, k, l, qtd2
qtd=0
max=75
min=1
redim mtzBingo(5,5)

Randomize()
function verIgual(numdel)
  dim igual 
  igual = false
  for k = 0 to ubound(mtzBingo,1)-1
      for l=0 to ubound(mtzBingo,2)-1
          if numdel=mtzBingo(k,l) then
             igual=true
             exit for
          end if
      next
      if igual=true then
       exit for
      end if
  next
verIgual = igual
end function


            Randomize()
            for i = 0 to ubound(mtzBingo,1)-1
                for j=0 to ubound(mtzBingo,2)-1
                    
                    Randomize()
                    if j=0 then
                    max=15
                    min=1
                    else 
                    max=75
                    min=16
                    end if
                    numdel = (Int((max-min+1)*Rnd+min))
                    if verIgual(numdel)=true then
                        do while verIgual(numdel)=true
                            Randomize()
                            numdel = (Int((max-min+1)*Rnd+min))
                        loop
                    end if
                    mtzBingo(i,j)=numdel
                    if i = 2 and j = 2 then
                    mtzBingo(i,j) = " ★ "
                    end if
                next
            next
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
    background-color: #fff;
    align-items: center;
    justify-content: center;
    text-align: center;
}
    </style>
    <body>
        <h2>
            <%
                response.write "<table border = 1>"
                response.write "<tr>"
                response.write "<td>B</td>"
                response.write "<td>I</td>"
                response.write "<td>N</td>"
                response.write "<td>G</td>"
                response.write "<td>O</td>"
                response.write "</tr>"
                response.write "<tr>"
                for i = 0 to 4 
                    for j = 0 to 4
                        qtd = qtd + 1
                        response.write "<td>"&mtzBingo(i,j)&"</td>"
                        if qtd = 5 then
                        qtd = 0 
                        response.write "</tr>"
                        'qtd2 = qtd2 + 1
                            'if qtd2 < 5 then
                                'response
                            'end if
                        end if
                    next
                next
                response.write "<table>"
            %>
        </h2>
    </body>
</html>