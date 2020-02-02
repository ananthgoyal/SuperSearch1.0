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
    <title>US Results</title>

    <center><h1>US Results</h1></center>
    <br><br><br>
   <pre><center><p>



       <%
               DocsTeach initial = new DocsTeach("https://www.docsteach.org/documents/?filter_searchterm=" + DocsTeach.phrase + "&searchType=1&filterEras=&filterDocTypes=&filter_order=&filter_order_Dir=&rt=a5dsCEaYNpQD");
               initial.intialRun();
               out.println("---------------------------------------------------------------------");

               for (int i = 0; i < 10; i++) {

                   out.println("Searching for Document " + (i + 1));
                   out.println();
                   //System.out.println(initial.getBody());
                   String temp = initial.getBody().substring(initial.getBody().indexOf("/documents/document/"), initial.getBody().indexOf("/documents/document/") + 1000);
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

        %>

   </p></center></pre>

</head>

</body>
</html>
