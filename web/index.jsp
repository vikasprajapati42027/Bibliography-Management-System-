
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="CRUD.*,java.util.ArrayList" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css" rel="stylesheet">
         <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body >
        <center>
            <h1>Book Data</h1>
            <table id="example" border="1" >

                <tr>
                    <td>Id NO</td>
                    <td>Title</td>
                    <td>Author</td>
                    <td>Publisher Year</td>
                      <td>Publisher</td
                       <td>Place</td>
                       <td>Place</td>
                       <td>Create</td>
                    <td>Edit</td>
                    <td>delete</td>
                </tr>
                <%
                BookDao dao=new BookDao();
                ArrayList<BookPojo> data=dao.Fetch();     

                for(BookPojo obj:data)
                    {
                %>
                <tr>
                    <td><%=obj.getId()%></td>
                    <td><%=obj.getTitle()%></td>
                    <td><%=obj.getAuthor()%></td>
                    <td><%=obj.getP_year()%></td>
                     <td><%=obj.getPublisher()%></td>
                      <td><%=obj.getPlace()%></td>
                    <td><a href="create.html" >Create</a></td>
                    <td><a href="edit.jsp?id=<%=obj.getId()%>">Edit</a></td>
                    <td><a href="del.jsp?id=<%=obj.getId()%>">delete</a></td>
                </tr>
                <% }%>
            </table>
        </center>
            <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
            <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
            <script>
                
         $(document).ready(function() {
    $('#example').DataTable();
} );
            </script>
    </body>
</html>
