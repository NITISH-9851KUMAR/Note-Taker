<%--
  Created by IntelliJ IDEA.
  User: Nitish
  Date: 04-08-2025
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Home Page</title>
    <%@ include file="all_js_css.jsp" %>
</head>
<body>

<div class="container fluid">
    <%@ include file="navbar.jsp" %>
    <br>

    <div class="card p-4">
        <img class="img-fluid mx-auto" style="max-width: 200px" src="img/note.png" alt="">
        <h1 class="text-primary text-uppercase text-center mt-3">Start Taking Your Notes</h1>

        <div class="container text-center">
            <a href="add-notes.jsp">
                <button class="btn btn-outline-primary">Start here</button>
            </a>
        </div>

    </div>

</div>

</body>

</html>
