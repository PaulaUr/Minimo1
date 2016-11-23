<%--
  Created by IntelliJ IDEA.
  User: pauli
  Date: 18/11/2016
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
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
    <div class="jumbotron">
        <h1>Mi lista de Etakemons</h1>
    </div>
    <div class="form-group">
        <c:forEach items="${Result1}" var="objeto">
            <tr>
                <td><c:out value="${objeto.atributo}"/></td>
            </tr>
        </c:forEach>
        <h2><%=request.getAttribute("Result1")%></h2>
    </div>
    <button type="submit" class="btn btn-default">Enviar</button>


</body>
</html>
