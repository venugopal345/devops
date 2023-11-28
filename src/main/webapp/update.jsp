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
        form#register{
            margin: 40px;
        }
        label{
            font-family: sans-serif;
            font-size: 18px;
            font-style: italic;
        }
        input#name{
            width: 300px;
            border: 1px solid #ddd;
            border-radius: 3px;
            outline: 0;
            padding: 7px;
            background-color: #fff;
            box-shadow: inset 1px 1px 5px rgba(0,0,0,0.3);
            
        }
        input#submit{
              width: 200px;
              padding: 7px;
              font-size: 16px;
              font-family: sans-serif;
              font-weight: 600;
              border: none;
              border-radius: 10px;
              background-color:tomato;
              color: #fff;
              cursor: pointer;
              border: 1px solid rgba(255,255,255,0.3);
              box-shadow: 1px 1px 5px rgba(0,0,0,0.3);
              margin-bottom: 20px;
              margin-left: 150px;
              margin-top: 50px;
        }
        label,h2{
            text-shadow: 1px 1px 5px rgba(0,0,0,0.3);

        }
        .inp{
            margin-left: 90px;
        }
        .inp1{
            margin-left: 137px;
        }
        .inp3{
			margin-left: 162px;
		}
		.inp4{
			margin-top: 20px;
			margin-left: 56px;
		}
		.inp5{
			margin-top: 20px;
			margin-left: 106px;
		}
		
        .an{
            padding-left: 120px;
            padding-top: 20px;
        }
        .ph{
            margin-left: 45px;
        }
        .action{
          color: orangered;
        }
        #rad{
			margin-top: 30px;
			
			margin-left: 122px;
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
            <li><a href="register.html" class="action">REGISTRATION</a></li> 
            <li><a href="login.html">LOGIN</a></li>
        </ul>
    </nav>

     <section>
    <div class="container">
        <div class="text">
            <h2> COLLEGE <span class="class"> MANAGEMENT</span></h2>
        </div>
    </div>
</section>
    
    

    <div class="reg1">
      <div class="register">
  <h1>UPDATE</h1>
  <form action="update" method="POST" id="register">
       
       
       <b><label for="">SID :</label></b>
      <input type="number" placeholder="ENTER  SID" id="name" name="id" value="<%=request.getParameter("id")%>" readonly = "readonly"required class="inp3"/><br><br>
      <b><label for="">USERNAME :</label></b>
      <input type="text" placeholder="ENTER  USERNAME" id="name" name ="username" value="<%=request.getParameter("username")%>"required class="inp"/><br><br>
      <b><label for="">EMAIL :</label></b>
      <input type="mail" placeholder="ENTER YOUR EMAIL ADDRESS" id="name"  name="email" value="<%=request.getParameter("email")%>" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" class="inp1"/><br><br>
      <b><label for="">PHONE NUMBER :</label></b>
      <input type="number" placeholder="ENTER  YOUR PHNO" id="name"  pattern="[0-9]{10}"  name="number" value="<%=request.getParameter("number")%>" required class="ph"/><br><br>
      <b><label for="">PASSWORD :</label></b>
      <input type="password" placeholder="ENTER PASSWORD"  id="name" pattern="[a-zA-Z0-9@]{6,12}" name="password"required value="<%=request.getParameter("password")%>"  class="inp"/><br><br>
      <b><label for=""> CONFIRM PASSWORD :</label></b>
      <input type="password" placeholder="REPEAT PASSWORD" id="name"  name="cpassword" value="<%=request.getParameter("cpassword")%>" class="inp2"/><br>
           <b><label for=""> GENDER:</label></b>
      <input type="radio"  id="rad" required class="" name="gender" value="<%=request.getParameter("gender")%>"readonly = "readonly"style="margin-right: 0px;"/> MALE
      <input type="radio"  id="rad" required class="" name="gender" value="<%=request.getParameter("gender")%>"readonly = "readonly"style="margin-right: 0px;"/> FEMALE
      <b><label for=""> DATE OF BIRTH :</label></b>
      <input type="date" placeholder="ENTER DOB" id="name" name="dob" value="<%=request.getParameter("dob")%>"readonly = "readonly"required class="inp4"/><br>
      <b><label for=""> ADDRESS :</label></b>
      <input type="text" placeholder="ENTER ADDRESS" id="name" name="address" value="<%=request.getParameter("address")%>" required class="inp5"/><br>
      
      <br><br>
      <input type="submit" name="register" id="submit" class="sub" value="update"/><br>
      
      
    
    </div>
  </div>
</form>

</body>
</html>