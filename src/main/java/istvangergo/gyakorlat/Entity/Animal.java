package istvangergo.gyakorlat.Entity;

import jakarta.persistence.*;
@Entity
public class Animal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ID;
    private String name;

    @ManyToOne
    @JoinColumn(name = "ValueID", referencedColumnName = "ValueID")
    private Value value;

    @ManyToOne
    @JoinColumn(name = "CategoryID", referencedColumnName = "CategoryID")
    private Category category;

    private Integer year;

    public Integer getID() {
        return ID;
    }

    public void setId(Integer ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Value getValue() {
        return value;
    }

    public void setValue(Value value) {
        this.value = value;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }
}