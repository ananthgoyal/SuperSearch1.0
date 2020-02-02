<%@ page import="com.Ananth.se.Yale" %>
<%@ page import="com.Ananth.se.Yale" %>
<%@ page import="com.Ananth.se.DocsTeach" %><%--
  Created by IntelliJ IDEA.
  User: ananthgoyal
  Date: 2019-05-17
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>General 2</title>
</head>


<center><h1>General Results Two</h1></center>
<br><br><br>
<body style="background-color: lightyellow">
<pre><center><p>

<%
    Yale yaleSource = new Yale("https://www.google.com/search?domains=yale.edu&sitesearch=avalon.law.yale.edu%2F&q=" + DocsTeach.phrase + "&x=0&y=0");
    out.println(yaleSource.intialRun());%>
    </p></center></pre>


</body>
</html>
