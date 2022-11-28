<%--
    Document   : login
    Created on : 23-Nov-2022, 3:42:49 pm
    Author     : Lenovo
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
     body{
    margin: 0;
    padding: 0;
    font-family: 'Courier New', Courier, monospace;
    background: linear-gradient(45deg, #E6E9F0 50%, #bccbde 50%);
    height: 100vh;
    overflow: hidden;
     }
    .log{
    position: absolute;
    top:50%;
    left:80%;
    transform:translate(-50%,-50%);
    width:400px;
    background: white;
    border-radius: 10px;
    }
    .center form{
    padding: 0 40px;
    box-sizing: border-box;
    }
    form .txt{
    position: relative;
    border-bottom: 2px solid #adadad;
    margin: 30px 0;
    }
    .txt input{
    width: 100%;
    padding: 0 5px;
    height: 40px;
    font-size: 16px;
    border:none;
    background: none;
    outline: none;
}
    .txt label{
    position: absolute;
    top:50%;
    left: 5px;
    color: #adadad;
    transform: translateY(-50%);
    font-size: 16px;
    pointer-events: none;
    transition: .5s;
}
    .txt span::before{
    content:'';
    position: absolute;
    top:40px;
    left: 0;
    width: 0%;
    height: 2px;
    background: #2691d9;
    transition: .5s;
}
    .txt input:focus ~ label,
.txt input:valid ~ label
{
    top:-5px;
    color: #2691d9;
}
.txt input:focus~span::before,
.txt input:focus~span::before{
    width:100%;

}
.forget{
    margin: -5px 0 20px 5px;
    color:grey;
    cursor: pointer;
}
.forget:hover{
    text-decoration: underline;
}
input[type="submit"]{
    width:100%;
    height:50px;
    border:1px solid;
    background: #2691d9;
    border-radius: 25px;
    font-size: 18px;
    color:aqua;
    font-weight: 700;
    cursor: pointer;
    outline:none;
}
input[type="submit"]:hover{
    border-color: #2691d9;
    transition: .5s;
}
</style>
</head>


 <div class="log">
     <form action="<%=request.getContextPath()%>/login" method="post">
                <div class="txt" name="username">
                <input type="text" required>
                <span></span>
                <label>UserName</label>
                </div>
                <div class="txt" name="password">
                <input type="password" required>
                <span></span>
                <label>Password</label>
                </div>

            <div class="forget">Forgot Password</div>
            <input type="submit" value="Submit"/>
     </form>
</div>


</html>
