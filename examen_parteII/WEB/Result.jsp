
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
    </script>
</head>
<body>
<div class="container">
<form action="/Login" method="get">
        <div class="jumbotron">
            <h1>User Web</h1>
        </div>
        <h2>BIENVENIDO: <%=request.getAttribute("Result")%></h2>

    <div class="row">
        <div class="col-md-6">
            <a href="Etakemon.jsp " target="_blank" class="img-cercle">
                <h3>Lista de Etakemons</h3>
                 </a>
        </div>
        <div class="col-md-6">
            <a href="AñadirEtakamon.jsp" target="_blank" class="img-cercle">
                <h3>Añadir Etakemon</h3>
          </a>
        </div>
    </div>
</form>

    <ul class="pager">
        <li class="previous"><a href="index.jsp">Previous</a> </li>
    </ul>
</div>
</body>
</html>
