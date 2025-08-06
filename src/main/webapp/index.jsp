<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Note Taker</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp" %>
</div>

<div class="container mt-3">
    <div class="row align-items-center">
        <!-- Text Content -->
        <div class="col-md-6">
            <h1 class="display-4 mb-4">Welcome to <span class="text-primary">SimpleNote</span></h1>
            <p class="lead">Your personal space to write, save, and organize notes easily.</p>

            <div class="mt-4">
                <h5>Use this app to:</h5>
                <ul class="list-unstyled">
                    <li>✔ Quickly jot down ideas or reminders</li>
                    <li>✔ Organize your notes in one place</li>
                    <li>✔ Access and update your notes anytime</li>
                </ul>
            </div>

            <div class="container text-center">
                <a href="add-notes.jsp"><button class="btn btn-outline-primary">Start here</button></a>
            </div>
        </div>

        <!-- Image Content -->
        <div class="col-md-6 text-center">
            <img src="img/note.png" alt="Note Illustration" class="img-fluid mt-4 mt-md-0" style="max-height: 350px;">
        </div>
    </div>
</div>

</body>
</html>



