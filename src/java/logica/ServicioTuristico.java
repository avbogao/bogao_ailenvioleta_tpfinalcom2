package logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
@Entity
public class ServicioTuristico implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int codigo_servicio;
    @Basic
    public String nombre;
    public String descripcion_breve;
    public String destino_servicio;
    public Date fecha_servicio;    //ver si anda el date
    public double costo_servicio;  //ver si son private
    @ManyToMany
    public List<PaqueteTuristico> lista_paquetes;
    @OneToMany
    public List<Venta> ventas;

    public ServicioTuristico() {
    }

    public List<PaqueteTuristico> getLista_paquetes() {
        return lista_paquetes;
    }

    public void setLista_paquetes(List<PaqueteTuristico> lista_paquetes) {
        this.lista_paquetes = lista_paquetes;
    }

    public List<Venta> getVentas() {
        return ventas;
    }

    public void setVentas(List<Venta> ventas) {
        this.ventas = ventas;
    }

    public ServicioTuristico(int codigo_servicio, String nombre, String descripcion_breve, String destino_servicio, Date fecha_servicio, double costo_servicio) {
        this.codigo_servicio = codigo_servicio;
        this.nombre = nombre;
        this.descripcion_breve = descripcion_breve;
        this.destino_servicio = destino_servicio;
        this.fecha_servicio = fecha_servicio;
        this.costo_servicio = costo_servicio;
    }

    public int getCodigo_servicio() {
        return codigo_servicio;
    }

    public void setCodigo_servicio(int codigo_servicio) {
        this.codigo_servicio = codigo_servicio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion_breve() {
        return descripcion_breve;
    }

    public void setDescripcion_breve(String descripcion_breve) {
        this.descripcion_breve = descripcion_breve;
    }

    public String getDestino_servicio() {
        return destino_servicio;
    }

    public void setDestino_servicio(String destino_servicio) {
        this.destino_servicio = destino_servicio;
    }

    public Date getFecha_servicio() {
        return fecha_servicio;
    }

    public void setFecha_servicio(Date fecha_servicio) {
        this.fecha_servicio = fecha_servicio;
    }

    public double getCosto_servicio() {
        return costo_servicio;
    }

    public void setCosto_servicio(double costo_servicio) {
        this.costo_servicio = costo_servicio;
    }
    
    
}
