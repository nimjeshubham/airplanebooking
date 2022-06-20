<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="model.Booking" %>
<%@ page import="model.Search" %>
<%
    Booking.passenger_name = request.getParameter("pname");
    Booking.passenger_email= request.getParameter("email");
    Booking.passenger_phone= request.getParameter("phone");
    if (Booking.passenger_name.equals("")
            || Booking.passenger_email.equals("")
            || Booking.passenger_phone.equals("")) {
        out.println("Please enter valid passenger details");
    }
    else {}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details - FlyAway Airlines</title>
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
                    <h1 align="center" style="color:whitesmoke;"><b>Checkout</b></h1>
                    <p align="center" style="color:whitesmoke;"><span><strong>Enter Payment Details</strong></span></p><br>
                </div>
            </div>
           <section class="col-sm-6 col-md-3">
               <form action="${pageContext.request.contextPath}/thank-you.jsp" method="post" class="form-container">
                   <div class="form-group">
                       <label for="card_details">Name on Card</label>
                       <input type="text" class="form-control" id="name_on_card" name="name_on_card" placeholder="Enter Name on Card">
                   </div>
                   <div class="form-group">
                       <label for="card_details">Card Number</label>
                       <input type="number" class="form-control" id="card_details" name="card_details" placeholder="Enter Card Number">
                   </div>
                   <br>
                   <p align="left"><span><strong>Total fare = <br> <%=Booking.ticket_price%> X <%=Search.persons%> persons = Rs.<%=Booking.ticket_price*Search.persons%></strong></span></p>
                   <button type="submit" class="btn btn-success btn-block" value="Submit">Confirm Payment</button>
               </form>
          </section>
        </section>
    </section>
</body>
<div class="footer" align="center">
    FlyAway by shubham kumar nimje
</div>
</body>
</html>