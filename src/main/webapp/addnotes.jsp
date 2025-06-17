<html>
<head>
    <title>Add Notes</title>
    <%@ include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">

    <%@ include file="navbar.jsp" %>
    <br>

<h1 style="align-items: center">Please fill your notes details</h1>
    <br>

<form action="SaveNote" method="post">
    <div class="mb-3">
        <label for="title" class="form-label" >Note Title</label>
        <input type="text" name="title" class="form-control" required  id="title">
    </div>
    <div class="mb-3">
        <label for="content" class="form-label">Note Content</label> <br>
        <textarea id="content" required
        class="form-control"
        name="content"
        style="height: 100px">
        </textarea>
    </div>
    <button type="submit" class="btn btn-primary">Add</button>
</form>

</div>


</body>
</html>
