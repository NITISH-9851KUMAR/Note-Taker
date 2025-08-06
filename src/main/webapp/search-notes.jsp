<%--
  Created by IntelliJ IDEA.
  User: nitis
  Date: 06-08-2025
  Time: 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.persistence.Query" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.query.*" %>
<%@ page import="org.FactoryProvider" %>
<%@ page import="org.Note" %>
<%@ page import="javax.persistence.NoResultException" %>
<html>
<head>
    <title>Search Notes</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp" %>
    <br>
</div>

<%
    String note_title = request.getParameter("search_val").trim().toUpperCase();

    // Hibernate Query
    Session session2 = FactoryProvider.getFactory().openSession();
    String sql = "SELECT * FROM notes_taker WHERE title= :no_title";
    NativeQuery<Note> query = session2.createNativeQuery(sql, Note.class);
    query.setParameter("no_title", note_title);

    Note note = null;

    try {
        note = query.getSingleResult();
    } catch (NoResultException e) {
    }

    if (note == null) { %>
<div class="container ">
    <div class="card">
        <img class="card-img-top m-4" style="max-width: 50px;" src="img/note.png" alt="Card image cap">
        <div class="card-body">
            <h3 class="card-title">Title: <%=note_title%></h3>
            <h3>Not Found</h3>
        </div>
    </div>
    <br>
</div>
<% } else { %>

<div class="container ">
    <div class="card">
        <img class="card-img-top m-4" style="max-width: 50px;" src="img/note.png" alt="Card image cap">
        <div class="card-body">
            <h3 class="card-title"><%=note.getTitle()%>
            </h3>
            <h5 class="card-title"><%=note.getAddDate()%>
            </h5>
            <p class="card-text"><%=note.getDescription()%>
            </p>
            <div class="container text-center ">
                <a href="delete-notes?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
                <a href="update-notes.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
            </div>
        </div>
    </div>
    <br>
</div>

<%
    }
    session2.close();
%>


</body>
</html>
