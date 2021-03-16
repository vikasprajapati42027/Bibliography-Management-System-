

    

package CRUD;
import java.sql.*;
import java.util.ArrayList;
public class BookDao {
Connection con;
public Connection getConnection() throws Exception
    {
    Class.forName("com.mysql.jdbc.Driver");
Connection    connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/bibliography","root","");
    return connect;
    }
public ArrayList<BookPojo>Fetch() throws Exception
    {
con=getConnection();
ArrayList<BookPojo> data=new ArrayList<BookPojo>();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from books");
while(rs.next())
{
BookPojo obj=new BookPojo();

obj.setId(rs.getInt(1));
obj.setTitle(rs.getString(2));
obj.setAuthor(rs.getString(3));
obj.setP_year(rs.getString(4));
obj.setPublisher(rs.getString(5));
obj.setPlace(rs.getString(6));
data.add(obj);
}
return data;
}
public ArrayList<BookPojo>getData(int id) throws Exception
    {
con=getConnection();
ArrayList<BookPojo> data=new ArrayList<BookPojo>();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from books where id='"+id+"'");
rs.next();
BookPojo obj=new BookPojo();

obj.setId(rs.getInt(1));
obj.setTitle(rs.getString(2));
obj.setAuthor(rs.getString(3));
obj.setP_year(rs.getString(4));
obj.setPublisher(rs.getString(5));
obj.setPlace(rs.getString(6));
data.add(obj);

return data;
}
public int update(int id,String title,String author, String p_year ,String publisher,String place) throws Exception
{
    con=getConnection();
    int i=0;
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("Update books set title='"+title+"',author='"+author+"',p_year='"+p_year+"',publisher='"+publisher+"',place='"+place+"'  where id='"+id+"'" );
    return i;
}
public int Insert(String title,String author, String p_year ,String publisher,String place) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("insert into books(title,author,p_year,publisher,place) values ('"+title+"','"+author+"','"+p_year+"','"+publisher+"','"+place+"')");
    return i;
}
public int Delete(int id ) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("delete from books where id='"+id+"'");
    return i;
}
}
