<html>
    <head>
        <title>appointment form</title>
        <%@page import="java.sql.* java.util.*"%>
    </head>
    <body>
        <%
        try
        {
            String sname=request.getParameter("cname");
            String regno=request.getParameter("email");
            String course=request.getParameter("cnumber");
            String comb=request.getParameter("doctor");
            String mode=request.getParameter("cdate");
            

            class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/test","root","");
            Statement st=con.createStatement();
            out.println("<h3>Date Saved Successfully!</h3>");
            String s="insert into appointment values('"+cname+"','"+email"','"+cnumber+"','"+doctor+"',"+cdate+");";
            st.executeUpdate(s);
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
    </body>
</html>