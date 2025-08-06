<%@ page import="org.hibernate.Session" %>
<%@ page import="org.FactoryProvider" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="org.Note" %>
<%@ page import="javax.persistence.Query" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Nitis
  Date: 05-08-2025
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Note</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container">
    <%@include file="navbar.jsp" %>
    <br>
    <h1>All Notes</h1>
    <!-- Java Code -->
    <%
        // Hibernate Code
        Session session1 = FactoryProvider.getFactory().openSession();

        // Declare Variable
        int id;
        String date;
        String title, description;

        Query query = session1.createQuery("FROM Note");
        List<Note> list = query.getResultList();
        for (Note note : list) {

    %>

    <div class="card">
        <img class="card-img-top m-4" style="max-width: 50px;" src="img/note.png" alt="Card image cap">
        <div class="card-body">
            <h3 class="card-title"><%=note.getTitle()%> </h3>
            <h5 class="card-title"> <%=note.getAddDate()%></h5>
            <p class="card-text"><%=note.getDescription()%>
            </p>
          <div class="container text-center ">
              <a href="delete-notes?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
              <a href="update-notes.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
          </div>
        </div>
    </div>
    <br>

    <%

        }
        session1.close();
    %>

</div>

</body>
</html>
