<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.Database"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Word Co-extraction</title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <div id="container" class="container">
            <div style="width: 1200px;margin: 30px;color: white">
                <center><h1>Co-Extracting Opinion Targets and Opinion Words from Online Reviews Based on the Word Alignment Model</h1></center>
            </div>
            <div> 
                <ul class="nav nav-justified">
                    <li class="active"><a href="uview.jsp">Home</a></li>
                    <li><a href="cartdetails.jsp">Cart</a></li>
                    <li><a href="search.jsp">Product Search</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div><br />
            <div style="border:1px solid red;width: 600px;height: 400px;margin-left: 400px;border-radius: 40px;background-color: white;background-image: url('images/feed.jpg')">
              <!-- <%
                    String uname = session.getAttribute("n1").toString();
                    %> -->
                <div style="height: 60px;border-top-left-radius: 40px;border-top-right-radius: 40px">
                    <center> <h1 style="margin-top: 3px">Feedback</h1></center>
                </div>
                <div style="height: 338px;border-bottom-left-radius: 40px;border-bottom-right-radius: 40px;">
                    <form action="rate.jsp" method="post" style="margin: 20px;margin-top: -10px;margin-left: 60px">
                        <label style="font-size: 20px">Name</label>&nbsp;&nbsp;<input type="text" value="<%=uname%>" name="uname" style="margin-left: 70px" class="textbox1" readonly=""/><br /><br />
                        <label style="font-size: 20px">Product Item</label>&nbsp;&nbsp;<input type="text" value="" name="pitem" style="margin-left: 10px" class="textbox1"/><br /><br />
                        <label style="font-size: 20px">Rating Status</label>&nbsp;&nbsp;
                        <select style="width: 100px;height: 30px;font-size: 18px" name="ratingstatus">
                            <option selected="">Select</option>
                            <option>Positive</option>
                            <option>Negative</option>
                            <option>Neutral</option>
                        </select><br /><br />
                        <label style="font-size: 20px">Rating</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" id="radio1" name="radios" value="Excellent" checked>
                        <label for="radio1">Excellent</label>
                        <input type="radio" id="radio2" name="radios" value="Very Good">
                        <label for="radio2">Very Good</label>
                        <input type="radio" id="radio3" name="radios" value="Good">
                        <label for="radio3">Good</label> 
                        <input type="radio" id="radio4" name="radios" value="Poor">
                        <label for="radio4">Poor</label> 
                        <input type="radio" id="radio5" name="radios" value="Very Poor">
                        <label for="radio5">Very Poor</label> <br /><br />
                        <label style="font-size: 20px">Comments :</label><br /><br />
                        <textarea cols="30" rows="3" style="margin-left: 130px;margin-top: -40px;font-size: 18px" name="comments"></textarea><br /><br />
                        <input type="submit" value="Submit" style="margin-left: 200px;margin-top: -10px" class="button"/>
                        </form>
                </div>

            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 550px;color: red">Copyright © 2015&nbsp;<a href="" style="text-decoration: none;color: red"></a></p>
        </div>
    </body>
</html>