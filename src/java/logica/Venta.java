package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
public class Venta implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int num_venta;
    @Basic
    @Temporal(TemporalType.DATE)
    private Date fecha_venta;
    private String medio_pago;
    @ManyToOne
    private Usuario usu;
    @ManyToOne
    private Cliente cli;
    public Venta() {
    }

    public Venta(int num_venta, Date fecha_venta, String medio_pago,Usuario usu, Cliente cli) {
        this.num_venta = num_venta;
        this.fecha_venta = fecha_venta;
        this.medio_pago = medio_pago;
        this.usu = usu;
        this.cli = cli;
    }

    public Usuario getUsu() {
        return usu;
    }


    public void setUsu(Usuario usu) {
        this.usu = usu;
    }

    public Cliente getCli() {
        return cli;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
    }


    public int getNum_venta() {
        return num_venta;
    }

    public void setNum_venta(int num_venta) {
        this.num_venta = num_venta;
    }

    public Date getFecha_venta() {
        return fecha_venta;
    }

    public void setFecha_venta(Date fecha_venta) {
        this.fecha_venta = fecha_venta;
    }

    public String getMedio_pago() {
        return medio_pago;
    }

    public void setMedio_pago(String medio_pago) {
        this.medio_pago = medio_pago;
    }
    
    
}