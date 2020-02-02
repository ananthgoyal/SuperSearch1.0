<%--
  Created by IntelliJ IDEA.
  User: ananthgoyal
  Date: 2019-05-15
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.Ananth.se.DocsTeach" %>
<%@ page import="com.Ananth.se.Phrase" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Source Extractor</title>
  </head>




  <body style="background-color:lightyellow;">
  <h1><center>Primary Source Search Engine</center></h1>
  <center><p>By Ananth  Goyal</p></center>


  <form action="Notice.jsp" method="GET">
    <center>
      <br><br><br><br><br><br><br><br><br><br>
      <center>
        <input type="checkbox" name="General" value="general"> General Search (Three Sources) (Recommend)<br>
        <input type="checkbox" name="USA" value="usa"> Related to US<br>
        <input type="checkbox" name="Images" value="image"> Images<br>
        <input type="checkbox" name="Cartoons" value="cart"> Political Cartoons<br>

      </center><br>

      <%--<%=DocsTeach.check()%>--%>

      <div class="SearchBar">
        <form>
    Search Sources: <input type="text" name="fname"></form>
      <br>
      <br>

      <script>{
          var doc = document.getElementById("fname").value;
      }
          </script>

      <img src="horseImg.jpeg" alt="horse" style="width:378px;height:212px;position:absolute; top: 10px;left: 10px">
      <img src="terraCotta.jpg" alt="terra" style="width:378px;height:212px;position:absolute; top: 10px;right: 10px">
      <img src="worldMap.jpeg" alt="worldMap" style=";width:390px;height:220px;position:absolute; bottom: 10px;right: 10px">
      <img src="pyramidImg.jpeg" alt="worldMap" style=";width:378px;height:212px;position:absolute; bottom: 10px;left: 10px">



      Spice Categories: <select>
        <option value="social">Social</option>
        <option value="political">Political</option>
        <option value="interaction">Interaction</option>
        <option value="cultural">Cultural</option>
        <option value="economic">Economic</option>

    </select>
      <br>
      <br><input type="submit" value="Submit">
    </center>

  </body>
</html>
