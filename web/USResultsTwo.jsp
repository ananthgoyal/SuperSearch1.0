<%--
  Created by IntelliJ IDEA.
  User: ananthgoyal
  Date: 2019-05-16
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.Ananth.se.DocsTeach" %>
<%@ page import="com.gargoylesoftware.htmlunit.BrowserVersion"%>
<%@ page import="com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException"%>
<%@ page import="com.gargoylesoftware.htmlunit.WebClient"%>
<%@ page import="com.gargoylesoftware.htmlunit.html.HtmlPage"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.net.MalformedURLException"%>
<%@ page import="com.Ananth.se.Page" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

<body style="background-color:lightyellow;">
<style>
    img {
        display: block;
        max-width:600px;
        max-height:600px;
        width: auto;
        height: auto;
    }
</style>
<title>US Results2</title>

<center><h1>US Results Two</h1></center>
<br><br><br>
<pre><center><p>



       <%if(DocsTeach.isUS.equals("usa")){
           DocsTeach initial = new DocsTeach("https://www.docsteach.org/documents?rt=" + DocsTeach.phrase + "&start=10&filterDocTypes=1");
           initial.intialRun();
           out.println("---------------------------------------------------------------------");

           for (int i = 0; i < 8; i++) {

               out.println("Searching for Document " + (i + 1));
               out.println();
               //System.out.println(initial.getBody());
               String temp = initial.getBody().substring(initial.getBody().indexOf("/documents/document/"), initial.getBody().indexOf("/documents/document/") + 100);
               temp = temp.substring(0, temp.indexOf("\""));
               //temp = temp.substring(0, temp.indexOf(".asp"));
               //System.out.println(temp);
               out.println(initial.secondRun(temp));
               initial.setBody(initial.getBody().replaceFirst(temp, ""));
               out.println("End of Document" + (i + 1));
               out.println("--------------------------------------------------------------------------------------------------------------------------------------------------------");

       %>


       <meta http-equiv="refresh" content="0">
        <%
            }
            }
            else{
                out.println("None");
            }
        %>

   </p></center></pre>

</head>

</body>
</html>
