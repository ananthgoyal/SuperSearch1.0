<%@ page import="com.Ananth.se.Ancient" %>
<%@ page import="com.Ananth.se.DocsTeach" %><%--
  Created by IntelliJ IDEA.
  User: ananthgoyal
  Date: 2019-05-19
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>General 3</title>
</head>

<style>img{
    width:100%;
    max-width:600px;
}
</style>
<body style="background-color: lightyellow">
<pre><center><p>

<%
    Ancient ancient = new Ancient("https://www.ancient.eu/search/?q=" + DocsTeach.phrase + "&s=Search");
    out.println(ancient.intialRun());
    for(int i = 0; i < ancient.images.size(); i++){
        %>

    <img src="<%out.println(ancient.images.get(i));%>" alt="img">

    <%

        out.println(ancient.citImages.get(i));
    }


%>
    </p></center></pre>

</body>
</html>
