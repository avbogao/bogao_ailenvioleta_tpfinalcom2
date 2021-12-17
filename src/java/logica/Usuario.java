package logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
@Entity
public class Usuario implements Serializable {
    @Id 
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id_user;
    @Basic
    private String user;
    private String pass;
    @OneToMany
    private List<Venta> ventas;

    public Usuario() {
    }

    public Usuario(int id_user, String user, String pass) {
        this.id_user = id_user;
        this.user = user;
        this.pass = pass;
    }

    public List<Venta> getVentas() {
        return ventas;
    }

    public void setVentas(List<Venta> ventas) {
        this.ventas = ventas;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    
}
