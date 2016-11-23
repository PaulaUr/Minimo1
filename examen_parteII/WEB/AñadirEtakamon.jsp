
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
    <form action="/Añadir" method="get">

        <div class="jumbotron">
            <h1>Añadir Etakemon </h1>
        </div>

        <div class="form-group">
            <label for="nombre">Introduce tu nombre: </label>
            <input type= "text" class="form-control" name="num1" id="nombre">
        </div>
        <div class="form-group">
            <label for="nombreEtakemon">Introduce el nombre del etakemon </label>
            <input type= "text" class="form-control" name="num2" id="nombreEtakemon" >
        </div>

        <button type="submit" class="btn btn-default">Enviar</button>
    </form>

    <ul class="pager">
        <li class="previous"><a href="index.jsp">Previous</a> </li>
    </ul>
</div>
</body>
</html>
