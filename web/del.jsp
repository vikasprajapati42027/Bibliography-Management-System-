
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="CRUD.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          BookDao dao=new BookDao();
            BookPojo obj=new BookPojo();
    obj.setId(Integer.parseInt(request.getParameter("id")));
    if(dao.Delete(obj.getId())>0)
    {
        out.println("<script>alert('data Deleted');window.location.href='index.jsp';</script>");
    }
    else
    {
            out.println("<script>alert('data not Deleted');window.location.href='index.jsp';</script>");
    
    }
 %>  
    </body>
</html>
