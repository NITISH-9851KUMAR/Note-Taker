package entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.text.SimpleDateFormat;

@Entity
@Table(name= "notes")
public class Note {
    @Id
    @Column(length= 5)
    private int id;

    private String title;

    @Column(length= 1500)
    private String content;

    @Column(length= 20)
    private String addDate;

    public Note(){}

    public Note(String t, String c) throws Exception{
        this.id= new Random().nextInt(1000);
        this.title= t;
        this.content= c;
        Date d= new Date();
        SimpleDateFormat formatter= new SimpleDateFormat("dd-MM-yyyy hh-mm");
        String date=  formatter.format(d);

        this.addDate= date;
    }

    public void setTitle(String title){
        this.title= title;
    }

    public void setContent(String content) {
        this.content= content;
        Date d= new Date();
        SimpleDateFormat formatter= new SimpleDateFormat("dd-MM-yyyy hh-mm");
        this.addDate= formatter.format(d);
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public String getAddDate() {
        return addDate;
    }
}
