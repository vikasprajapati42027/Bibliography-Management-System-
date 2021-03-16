
<%@page import="CRUD.*,java.util.*"%>
<html>
  <head>
   
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>

      <form action="Update.jsp" method="POST">
          <center>
              <%
                  BookDao dao=new BookDao();
                   int id=Integer.parseInt(request.getParameter("id"));
                   ArrayList<BookPojo> data=dao.getData(id);
                   for(BookPojo  obj:data)
                   {
                       
                   %>
                      <h1>Update New Books</h1>
                     <table border="1">
                  
                  <tr>
                      <td>Title</td>
                      <td><input type="text" value="<%=obj.getTitle()%>" name="txttitle"/></td>
                  </tr>


                  <tr>
                      <td>Author</td>
                      <td><input type="text" value="<%=obj.getAuthor()%>" name="txtauthor"/></td>
                  </tr>


                  <tr>
                      <td>Publisher Year</td>
                      <td><input type="text" value="<%=obj.getP_year()%>" name="txtp_year"/></td>
                  </tr>
                   <tr>
                      <td>Publisher</td>
                      <td><input type="text" value="<%=obj.getPublisher()%>" name="txtpublisher"/></td>
                  </tr>
                   <tr>
                      <td>Place</td>
                      <td><input type="text" value="<%=obj.getPlace()%>" name="txtplace"/></td>
                  </tr>
                  <tr>
                      <tr>
                      <td></td>
                      <td><input type="submit" value="Insert"/></td>
                  </tr>
              </table>
                <input type="hidden" value="<%=id%>" name="hf" />  
                  <% } %>
                  
          </center>

      </form>
  </body>
</html>
