<%--
Created by IntelliJ IDEA.
User: Nitis
Date: 05-08-2025
Time: 16:06
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.FactoryProvider" %>
<%@ page import="org.Note" %>
<%@ page import="javax.persistence.Query" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>Update Note</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container">
    <!-- Java Code Fetching note title and note description -->
    <%
        // Hibernate Code
        Session session1 = FactoryProvider.getFactory().openSession();

        // Declare Variable
        int note_id = Integer.parseInt(request.getParameter("note_id"));

        Note note = session1.get(Note.class, note_id);

    %>
    <%@include file="navbar.jsp" %>
    <br>
    <h3>Update Notes</h3>
    <form action="update-notes" method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Note Title</label>
            <input
                    name="notes_title"
                    type="text"
                    placeholder="Enter your title"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    required
                    value="<%=note.getTitle()%>"
            >
            <input type="hidden" value="<%=note_id%>" name="note_id">
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Note Description</label>
            <textarea
                    name="notes_description"
                    id="description"
                    class="form-control"
                    placeholder="Enter your description"
                    style="height:200px;"
                    required
            ><%=note.getDescription()%></textarea>
        </div>
        <div class="container text-center">
            <button type="submit" class="btn btn-success">Submit</button>
        </div>
    </form>

</div>

</body>
</html>
