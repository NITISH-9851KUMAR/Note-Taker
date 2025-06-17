<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <!-- Required meta tags -->--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>

<%--    <title>Note Taker: Home Page</title>--%>
<%--    <%@include file="all_js_css.jsp"%>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="container">--%>
<%--    <%@include file="navbar.jsp"%>--%>
<%--</div>--%>
<%--<br>--%>


<%--</body>--%>
<%--</html>--%>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Note Taker: Home Page</title>
    <%@include file="all_js_css.jsp"%>
    <style>
        .hero-section {
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            padding: 60px 0;
            text-align: center;
        }
        .hero-section h1 {
            font-size: 3rem;
            font-weight: bold;
        }
        .hero-section p {
            font-size: 1.2rem;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

<div class="container">
    <%@include file="navbar.jsp"%>
</div>

<br><br>

<div class="hero-section" style="background: linear-gradient(135deg, #f5f7fa, #c3cfe2); padding: 60px 0; text-align: center;">
    <div class="container">
        <img src="img/note.jpeg" alt="Note Taking" style="max-width: 200px; margin-bottom: 20px; border-radius: 10px;">

        <h1 style="font-size: 3rem; font-weight: bold;">Welcome to Note Taker</h1>

        <p style="font-size: 1.2rem; max-width: 600px; margin: 20px auto;">
            Capture your thoughts, ideas, and reminders in one place. Stay organized and never lose a note again.
        </p>

        <p style="font-style: italic; color: #555;">
            The shortest pencil is better than the longest memory
        </p>
    </div>
</div>



</body>
</html>
