package org;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.time.LocalDateTime;
import java.util.Random;

@Entity
@Table(name="Notes_Taker")
public class Note {

    @Id
    private int id;

    private String title;

    @Column(length= 1500)
    private String description;

    private String addDate;

    public Note(String title, String description, String addDate) {
        super();
        this.id = new Random().nextInt(10000);
        this.title = title;
        this.description = description;
        this.addDate = addDate;
    }

    public Note() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddDate() {
        return addDate;
    }

    public void setAddDate(String  addDate) {
        this.addDate = addDate;
    }


}
