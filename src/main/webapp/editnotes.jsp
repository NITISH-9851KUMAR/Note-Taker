<%@ page import="org.hibernate.Session" %>
<%@ page import="hibernate.FactoryProvider" %>
<%@ page import="entities.Note" %>
<%--
  Created by IntelliJ IDEA.
  User: nitis
  Date: 17-06-2025
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Note Edit: Note Taker</title>
    <%@include file="all_js_css.jsp"%>
</head>
<body>

<div class="container">
    <%@include file="navbar.jsp"%>
    <h1>Edit you Notes</h1>

    <%
        // Fetch the note_id form editnotes.jsp
        int note_id= Integer.parseInt(request.getParameter("note_id").trim());

        // Hibernate Program
        Session session1= FactoryProvider.getSessionFactory().openSession();
        Note note= session1.get(Note.class, note_id);

    %>
    <form action="UpdateNote" method="post">
        <input type="hidden" value="<%=note.getId()%>" name="note_id">
        <div class="mb-3">
            <label for="title" class="form-label" >Title</label>
            <input type="text" value="<%=note.getTitle()%>" name="title" class="form-control" required  id="title">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Content</label> <br>
            <textarea id="content" required
                      class="form-control"
                      name="content"
                      style="height: 100px"><%=note.getContent()%>
        </textarea>
        </div>
        <button type="submit" class="btn btn-success">Save Note</button>
    </form>
</div>

</body>
</html>
