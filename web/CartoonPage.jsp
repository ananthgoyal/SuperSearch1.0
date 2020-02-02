<%@ page import="com.Ananth.se.EyeWitness" %>
<%@ page import="com.Ananth.se.DocsTeach" %>
<%@ page import="com.Ananth.se.Cartoon" %><%--
  Created by IntelliJ IDEA.
  User: ananthgoyal
  Date: 2019-05-19
  Time: 00:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cartoons</title>
</head>

<center><h1>Poltical Cartoons</h1></center>
<body style="background-color: lightyellow">

<pre><center><p>




    <% Cartoon a = new Cartoon("https://politicalcartoons.com/?s="+ DocsTeach.phrase);
        out.println(a.intialRun());

        for(int i = 0;  i < 15; i++){
            out.println(a.nameList.get(i));
            //out.println(a.nameList.get(i));
    %>

    <img src="<%out.println(a.imageList.get(i));%>" alt="img">

    <%

            out.println();

            out.println();out.println();out.println();
        }


    %>
</p></center></pre>
</body>
</html>
