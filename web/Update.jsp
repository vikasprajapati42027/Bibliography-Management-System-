

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="CRUD.*,java.util.ArrayList" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             BookDao dao=new BookDao();
            BookPojo obj=new BookPojo();
            obj.setTitle(request.getParameter("txttitle"));
            obj.setAuthor(request.getParameter("txtauthor"));
             obj.setP_year(request.getParameter("txtp_year"));
              obj.setPublisher(request.getParameter("txtpublisher"));
               obj.setPlace(request.getParameter("txtplace"));
            if(dao.update(obj.getId(),obj.getTitle(),obj.getAuthor(),obj.getP_year(),obj.getPublisher(),obj.getPlace())>0)
            {
                out.println("<script>alert('Data update ');window.location.href='index.jsp';</script>");
            }
            else
            {
                    out.println("<script>alert('Data not update');window.location.href='create.html';</script>");
            
            }
            %>
    </body>
</html>
