<%@page import="devop_sproject.dto.studentdto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
 body {
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        nav {
            top: 0;
            left: 0;
            width: 100%;
            height: 80px;
            padding: 10px 90px;
            box-sizing: border-box;
            border-bottom: 1px solid #fff;
            position:sticky;
            background: #fff;

        }
        nav .logo {
            /* padding: 22px 20px; */
            padding-left: 80px;
            padding-top: 20px;
            height: 80px;
            float: left;
            font-size: 30px;
            font-weight: bold;
            text-transform: uppercase;
            color:black;
        }

        nav .span {
            color: orangered;
        }
        nav ul {
            list-style: none;
            float: right;
            margin: 0;
            padding: 0;
            display: flex;
        }
        
        nav ul li a {
            line-height: 80px;
            padding: 50px 40px;
            color:black;
            text-decoration: none;
            font-size: 15px;
            font-weight: bold;
            text-transform: uppercase;
            transition: 1s;
        }

        nav ul li a:hover {
         /* background:rgb(0,0,0,0.7); */
         /* border-radius: 6px; */
         /* border-bottom: 4px solid black; */
         color: orangered;
     }
     section {
            width: 100%;
            height: 50vh;
            background:rgba(0,0,0,0.7) url("../static/image/company.jpg");
            background-size: cover;
            background-position: center;
            background-blend-mode: darken;
      
        } 
        *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, Helvetica, sans-serif;
      }
      .container{
        height: 100vh;
        padding-top: 200px;
      }
      .text{
        text-align: center;
        color:#fff;
      }
      .text h2{
        font-size: 50px;
        margin-bottom: 10px;
      }
      .class{
        color: orangered;
      }
      div.reg1{
            width:600px;
            margin: 100px auto 0px auto;
            margin-left:90px;
        }
        h1{
            text-align: center;
            padding: 20px;
            font-family: sans-serif;
        }
        div.register{
            background-color: rgba(0,0,0,0.6);
            width: 100%;
            font-size: 18px;
            border-radius: 10px;
            border: 1px solid rgba(255,255,255,0.3);
            box-shadow: 20px 2px 15px rgba(0,0,0,0.4);
            color: #fff;
        }
        .form{
        padding-left:180px;
        padding-bottom:50px;
        }
</style>
</head>
<body>
<nav>
        <div class="logo">COLLEGE <span class="span">MANAGEMENT</span></div>
        <ul>
            <li><a href="home.html">HOME</a></li>

        </ul>
    </nav>

     <section>
    <div class="container">
        <div class="text">
            <h2> COLLEGE <span class="class"> MANAGEMENT</span></h2>
        </div>
    </div>
</section>
<form class="form">
<div class="reg1">
<h1>STUDENT PROFILE</h1>
<h1>BHAVYA</h1>
</div>
<% List<studentdto> l1=(List<studentdto>)request.getAttribute("objects"); %>
<table border="1" width="200" height="150">
<tr>
<th>Id</th>
<th>Name</th>
<th>EMAIL</th>
<th>PHONENO</th>
<th>PASSWORD</th>
<th>CONPASSWORD</th>
<th>GENDER</th>
<th>DOB</th>
<th>ADDRESS</th>
<th>EDIT</th>
<th>UPDATE</th>
</tr>
<% for(studentdto a:l1){ %>
<tr>
<td><%=a.getId()%></td>
<td><%=a.getUsername()%></td>
<td><%=a.getEmail()%></td>
<td><%=a.getPhoneno()%></td>
<td><%=a.getPwd()%></td>
<td><%=a.getCpwd()%></td>
<td><%=a.getGender()%></td>
<td><%=a.getDob()%></td>
<td><%=a.getAddress()%></td>
<td><a href="delete?id=<%=a.getId()%>">Remove</a> </td>
<td><a href="update.jsp?id=<%=a.getId()%>&&username=<%=a.getUsername()%>&&email=<%=a.getEmail()%>&&number=<%=a.getPhoneno()%>&&password=<%=a.getPwd()%>&&cpassword=<%=a.getCpwd()%>&&gender=<%=a.getGender()%>&&dob=<%=a.getDob()%>&&address=<%=a.getAddress()%>">EDIT</a></td>
</tr>
<%} %>

</table>
</form>
</body>
</html>