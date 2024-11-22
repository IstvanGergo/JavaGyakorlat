package istvangergo.gyakorlat.Entity;

import jakarta.persistence.*;

@Entity
@Table(name="category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int CategoryID;
    private String CategoryName;

    public int getCategoryID() {
        return CategoryID;
    }

    public void setCategoryID(int categoryID) {
        CategoryID = categoryID;
    }

    public String getCategoryName() {
        return CategoryName;
    }

    public void setCategoryName(String categoryName) {
        CategoryName = categoryName;
    }
}
