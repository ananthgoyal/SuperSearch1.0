<%@ page import="com.Ananth.se.DocsTeach" %>
<%@ page import="javax.print.Doc" %><%--
  Created by IntelliJ IDEA.
  User: ananthgoyal
  Date: 2019-05-16
  Time: 18:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<body style="background-color:lightyellow;"; onload="load()";>

<%DocsTeach.phrase = request.getParameter("fname");
DocsTeach.isUS  = request.getParameter("USA");
DocsTeach.isImage =  request.getParameter("Images");
DocsTeach.isGeneral =  request.getParameter("General");
DocsTeach.isCartoon  =  request.getParameter("Cartoons");

if(DocsTeach.isUS==null)
    DocsTeach.isUS  = "";
if(DocsTeach.isImage==null)
    DocsTeach.isImage  = "";
if(DocsTeach.isGeneral==null)
    DocsTeach.isGeneral  = "";
if(DocsTeach.isCartoon==null)
    DocsTeach.isCartoon="";


%>

<script type="text/javascript">
    function load()
    {

        setTimeout(function () {

            <%if(DocsTeach.isUS.equals("usa")){%>
                window.open('/SourceExtractor_war_exploded/Results.jsp','_blank');
            <%}
            if(DocsTeach.isImage.equals("image")) {
                %>
                window.open('/SourceExtractor_war_exploded/imagePage.jsp','_blank');
            <%}
            if(DocsTeach.isGeneral.equals("general")){
                %>
                window.open('/SourceExtractor_war_exploded/YaleOut.jsp','_blank');
                window.open('/SourceExtractor_war_exploded/AncientEuro.jsp','_blank');
                window.open('/SourceExtractor_war_exploded/Ancient.jsp','_blank');
            <%
        }
        if(DocsTeach.isCartoon.equals("cart")){
            %>
            window.open('/SourceExtractor_war_exploded/CartoonPage.jsp','_blank');
            <%
        }
    %>

        },2000);


    }
</script>

    <title>Fetching</title>
    <center><h1>Fetching Data</h1></center>
    <br>
    <center><p>Documents will constantly be uploaded</p></center><br>
    <center><p>US sources specifically are higher quality but take longer (please have patience)</p></center>



</head>

</body>

</html>
