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
            <div style="border:1px solid red;width: 400px;height: 400px;margin-left: 450px;border-radius: 40px;background-color: white">
                <%
                    InputStream n1 = null;
                    String logo = null;
                    int i = 1;
                    String s = request.getQueryString();
                    Connection con = Database.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from product where iname='" + s + "'");
                    while (rs.next()) {
                        String len = rs.getString("image");
                        int len1 = len.length();
                        byte[] b1 = new byte[len1];
                        n1 = rs.getBinaryStream("image");
                        int index = n1.read(b1, 0, len1);
                        String putFile = request.getRealPath(request.getContextPath()).substring(0, request.getRealPath(request.getContextPath()).lastIndexOf(File.separator) + 1) + "images" + File.separator;
                        File file = new File(putFile + rs.getString("iname"));
                        logo = rs.getString("iname");
                        if (file.exists()) {
                            file.delete();
                        } else {
                            OutputStream out1 = new FileOutputStream(file);
                            while (index != -1) {
                                out1.write(b1, 0, index);
                                index = n1.read(b1, 0, len1);
                            }
                            out1.close();
                            i++;
                        }
                %>
                <div style="height: 60px;border-top-left-radius: 40px;border-top-right-radius: 40px">
                    <center> <h1 style="margin-top: 3px">Order Summary</h1></center>
                </div>
                <div style="height: 338px;border-bottom-left-radius: 40px;border-bottom-right-radius: 40px">
                    <form style="margin: 15px;margin-top: -10px" action="scart.jsp" method="post">
                        <label style="font-size: 20px">Product Name</label>&nbsp;&nbsp;<input type="text" value="<%=rs.getString("pname")%>" name="pname" class="textbox1" style="margin-left: 5px" readonly=""/><br /><br />
                        <label style="font-size: 20px">Product Item</label>&nbsp;&nbsp;<input type="text" value="<%=rs.getString("pitems")%>" name="pitems" class="textbox1" style="margin-left: 20px" readonly=""/><br /><br />
                        <label style="font-size: 20px">Brand Name</label>&nbsp;&nbsp;<input type="text" value="<%=rs.getString("bname")%>" name="bname" class="textbox1" style="margin-left: 20px" readonly=""/><br /><br />
                        <label style="font-size: 20px">Price</label>&nbsp;&nbsp;<input type="text" value="<%=rs.getString("price")%>" name="price" class="textbox1" style="margin-left: 85px" readonly=""/><br /><br />
                        <label style="font-size: 20px">Product Image</label>&nbsp;&nbsp;<img src="images/<%=logo%>" style="width: 230px;height: 50px;margin-top: -20px;margin-left: 140px;"></img><br />
                        <label style="font-size: 20px">Quantity</label>&nbsp;&nbsp;<input type="text" value="" class="textbox1" name="qty" style="margin-left: 55px"/><br /><br />
                        <center><input type="submit" value="Add Cart" class="button"/></center>
                    </form>
                </div>
                <%
                    }
                %>
            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 550px;color: red">Copyright © 2015&nbsp;<a href="" style="text-decoration: none;color: red"></a></p>
        </div>
    </body>
</html>