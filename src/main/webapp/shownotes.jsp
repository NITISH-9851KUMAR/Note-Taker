<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Query" %>
<%@ page import="entities.Note" %>
<%@ page import="java.util.List" %>
<%@ page import="hibernate.FactoryProvider" %>

<%--
  Created by IntelliJ IDEA.
  User: nitis
  Date: 17-06-2025
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Notes: Note Taker</title>
    <%@ include file="all_js_css.jsp" %>
</head>

<body>

<div class="container">
    <%@include file="navbar.jsp" %>
    <br>
    <!-- Fetching Data -->
    <%
        Session session1 = FactoryProvider.getSessionFactory().openSession();

        Query q = session1.createQuery("from Note");
        List<Note> list = q.list();
        for (Note note : list) {

    %>

    <div class="card mt-3">
        <div class="card-body">
            <h5 class="card-title"><%= note.getTitle()%></h5>
            <small><%= note.getAddDate()%></small>
            <p class="card-text"><p><%= note.getContent() %></p>
            <a href="DeleteNote?note_id=<%= note.getId()%>" class="btn btn-danger">Delete</a>
            <a href="editnotes.jsp?note_id=<%= note.getId()%>" class="btn btn-primary">Update</a>
        </div>
    </div>

    <%
        }
        session1.close();
    %>


</div>

</body>
</html>