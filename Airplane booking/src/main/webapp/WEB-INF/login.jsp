<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="servlets.Login"%>
<% Login.isLoggedIn = false; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin - Login FlyAway Airlines</title>
</head>
<body>
<div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="/index.jsp" class="w3-bar-item w3-button w3-wide">  FlyAway</a>
    <div class="w3-right w3-hide-small">
        <a href="/login.jsp" class="w3-bar-item w3-button"><i class="fa fa-gear"></i> Admin Login</a>
    </div>
</div>
    <section class="container-fluid bg">
        <section class="row justify-content-center">
            <div class="row">
                <div class="col">
                    <h2 align="center" style="color:whitesmoke;"><b>Login</b></h2>
                    <br>
                </div>
            </div>
            <section class="col-sm-6 col-md-3">
                <form action="login" method="post" class="form-container">
                    <div class="form-group mb-2">
                        <label for="inputEmail" class="sr-only">Email address</label>
                        <input type="email" name="emailEntered" class="form-control" id="inputEmail" aria-describedby="emailHelp" placeholder="Enter email">
                        <br><small id="emailHelp" class="form-text text-muted">&nbsp;&nbsp;Email : admin@flyaway.com</small>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input type="password" name="passwordEntered" class="form-control" id="inputPassword" placeholder="Password">
                        <br><small id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp; Current Password :&nbsp;<%= Login.password %></small>
                    </div>
                    <button type="submit" class="btn btn-success btn-block" value="Submit">Login</button>
                </form>
            </section>
        </section>
    </section>
<div class="footer" align="center">
    FlyAway by shubham kumar nimje
</div>

</body>
</html>