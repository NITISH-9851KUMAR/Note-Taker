<%--
  Created by IntelliJ IDEA.
  User: Nitis
  Date: 05-08-2025
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Notes</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container">
    <%@include file="navbar.jsp" %>
    <br>
    <form action="add-notes" method="post">
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

            >
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
            ></textarea>
        </div>
        <div class="container text-center" >
            <button type="submit" class="btn btn-primary">Add Note</button>
        </div>
    </form>


</div>

</body>
</html>
