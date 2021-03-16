/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CRUD;

/**
 *
 * @author Vikas
 */
public class BookPojo {
    

    private int id;
private String title,author,p_year,publisher,place;
    

   public int getId()
   {
       return id;
   }
   public void setId(int id)
   {
       this.id=id;
   }
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getP_year() {
        return p_year;
    }

    public void setP_year(String p_year) {
        this.p_year = p_year;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }


  

}
