<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Database"%>
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
                    <li><a href="ahome.jsp">Home</a></li>
                    <li><a href="additems.jsp">Add New Item</a></li>
                    <li><a href="pviewdetails.jsp">Product Details</a></li>
                    <li><a href="block.jsp">Negative Ratings</a></li>
                    <li><a href="arating.jsp">Rating</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div><br />
            <div class="abstract" style="background: "><br><br>
                <center><h1 style="color: white;margin-top: -10px">Product Details</h1></center>
                <br><table style="margin-left: 280px;margin-top: -20px">
                    <tr>
                        <th style="background-color: blue">Product Name</th>
                        <th style="background-color: blue">Product Item</th>
                        <th style="background-color: blue">Brand Name</th>
                        <th style="background-color: blue">Price</th>
                        <th style="background-color: blue">Validity</th>
                        <th style="background-color: blue">Delete</th>
                        <th style="background-color: blue">Update</th>
                    </tr>
                    <tr>
                        <%
                            try {
                                Connection con = Database.getConnection();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from product");
                                while (rs.next()) {%>
                        <td><%=rs.getString("pname")%></td>
                        <td><%=rs.getString("pitems")%></td>
                        <td><%=rs.getString("bname")%></td>
                        <td><%=rs.getString("price")%></td>
                        <td><%=rs.getString("validity")%></td>
                        <td><a href="pdelete.jsp?<%=rs.getString("pitems")%>,<%=rs.getString("bname")%>">Remove</a></td>
                        <td><a href="pedit.jsp?<%=rs.getString("pitems")%>,<%=rs.getString("bname")%>">Edit</a></td>
                    </tr>
                    <% }
                        } catch (Exception e) {
                            e.printStackTrace();
                            System.out.println("Admin product details Page" + e.getMessage());
                        }
                    %>
                </table>
            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 550px;color: red">Copyright © 2015&nbsp;<a href="" style="text-decoration: none;color: red"></a></p>
        </div>
    </body>
</html>