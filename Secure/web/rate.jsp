<%-- 
    Document   : test
    Created on : Dec 18, 2014, 1:11:34 PM
    Author     : JP-PC9
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="action.Database"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.net.InetAddress"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                String a1 = null,a2=null,a3=null;
                String email = session.getAttribute("v").toString();
                String n = request.getParameter("uname");
                String p = request.getParameter("pitem");
                String rs = request.getParameter("ratingstatus");
                String r = request.getParameter("radios");
                String c = request.getParameter("comments");
                Calendar cal = Calendar.getInstance();
                SimpleDateFormat dateFormat = new SimpleDateFormat();
                String startD = cal.getTime().toGMTString().replaceAll("GMT", " ");
                InetAddress ip;
                ip = InetAddress.getLocalHost();
                String userip = ip.getHostAddress();
                System.out.println("System Ip " + userip);
                Connection con = Database.getConnection();
                Statement st = con.createStatement();
                ResultSet rs1 = st.executeQuery("select name,ipaddr,feedback from feed");
                while(rs1.next())
                {
                    a1=rs1.getString("name");
                    a2=rs1.getString("ipaddr");
                    a3= rs1.getString("feedback");
                }
                if (rs.equals("Negative")) {
                    
                    st.executeUpdate("insert into blocklist (uname, email, ipaddress, product, rating, ratingvalues) values ('"+n+"','"+userip+"','"+email+"','" + p + "','" + rs + "','" + r + "')");
                    response.sendRedirect("search.jsp?thank you for your feedack");
                    
                } else {
                    int i = st.executeUpdate("insert into feed (feedback, rating, ratingvalues, comments, ipaddr, date_time, name) values('" + p + "','" + rs + "','" + r + "','" + c + "','" + userip + "','" + startD + "','" + n + "')");
                    if (i != 0) {
                        response.sendRedirect("search.jsp?thank you for purchased items");
                    }
                }
            } catch (Exception e) {
                System.out.println("Exception Error in Rate " + e.getMessage());
            }
        %>
    </body>
</html>
