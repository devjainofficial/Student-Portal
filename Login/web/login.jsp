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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>
<title>Insert title here</title>
 <style>
     body{
    margin: 0;
    padding: 0;
    font-family: 'Courier New', Courier, monospace;
    background: linear-gradient(45deg, #0d1637aa 55%, #21397d70 55%);
    height: 100vh;
    overflow: hidden;
     }
    .log{
    position: absolute;
    top:50%;
    left:50%;
    transform:translate(-50%,-50%);
    width:400px;
    background: white;
    border-radius: 10px;
    padding: 40px 20px;
    }
    .center {
        text-align: center;
        width: 100%;
        background: #bababa;
        width: 100px;
        height: 100px;
        margin: 0 30%;
        border-radius: 50%;
        text-align: center;
        line-height: 100px;
        vertical-align: middle;
        padding: 30px;
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
    width:80%;
    height:50px;
    margin: 5% 10%;
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
    color: #fff ;
    background: #21397d;
    transition: .5s;
}
</style>
</head>

<body>  
 <div class="log">
     <form action="<%=request.getContextPath()%>/login" method="post">
         <div><i class="fa fa-user fa-5x center" aria-hidden="true" ></i></div>       
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
            <input type="submit" value="Login"/>
     </form>
</div>
        
</body>
</html>


