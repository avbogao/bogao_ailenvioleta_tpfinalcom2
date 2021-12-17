package logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
@Entity
public class PaqueteTuristico implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int codigo_paquete;
    @Basic
    public double costo_paquete;
    @ManyToMany
    public List<ServicioTuristico> lista_servicios_incluidos;
    @OneToMany
    public List<Venta> ventas;

    public PaqueteTuristico() {
    }

    public PaqueteTuristico(int codigo_paquete, List<ServicioTuristico> lista_servicios_incluidos, double costo_paquete) {
        this.codigo_paquete = codigo_paquete;
        this.lista_servicios_incluidos = lista_servicios_incluidos;
        this.costo_paquete = costo_paquete;
    }

    public List<Venta> getVentas() {
        return ventas;
    }

    public void setVentas(List<Venta> ventas) {
        this.ventas = ventas;
    }

    public int getCodigo_paquete() {
        return codigo_paquete;
    }

    public void setCodigo_paquete(int codigo_paquete) {
        this.codigo_paquete = codigo_paquete;
    }

    public List<ServicioTuristico> getLista_servicios_incluidos() {
        return lista_servicios_incluidos;
    }

    public void setLista_servicios_incluidos(List<ServicioTuristico> lista_servicios_incluidos) {
        this.lista_servicios_incluidos = lista_servicios_incluidos;
    }

    public double getCosto_paquete() {
        return costo_paquete;
    }

    public void setCosto_paquete(double costo_paquete) {
        this.costo_paquete = costo_paquete;
    }
    
    
}