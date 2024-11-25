package istvangergo.gyakorlat.Entity;

import jakarta.persistence.*;

@Entity
@Table(name="value")
public class Value {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ValueID;
    @Column(name="Forint")
    private Integer Forint;
    @Override
    public String toString() {
        return Integer.toString(Forint);
    }
    public int getForint() {
        return Forint;
    }

    public void setForint(int forint) {
        Forint = forint;
    }

    public int getValueID() {
        return ValueID;
    }

    public void setValueID(int valueID) {
        ValueID = valueID;
    }
}
