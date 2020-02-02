<%@ page import="com.Ananth.se.EyeWitness" %>
<%@ page import="com.Ananth.se.DocsTeach" %><%--
  Created by IntelliJ IDEA.
  User: ananthgoyal
  Date: 2019-05-18
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>General 1</title>
</head>

<center><h1>General Results One </h1></center>
<body style="background-color: lightyellow">

<pre><center><p>

<%
    EyeWitness ew = new EyeWitness("https://www.google.com/search?q=" + DocsTeach.phrase + "&sa=Search&domains=eyewitnesstohistory.com&sitesearch=eyewitnesstohistory.com");
    out.println(ew.intialRun());%>
    </p></center></pre>

</body>
</html>
