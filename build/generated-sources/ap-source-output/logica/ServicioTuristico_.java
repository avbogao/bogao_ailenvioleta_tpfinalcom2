package logica;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.PaqueteTuristico;
import logica.Venta;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-20T21:02:28")
@StaticMetamodel(ServicioTuristico.class)
public class ServicioTuristico_ { 

    public static volatile SingularAttribute<ServicioTuristico, Date> fecha_servicio;
    public static volatile ListAttribute<ServicioTuristico, PaqueteTuristico> lista_paquetes;
    public static volatile SingularAttribute<ServicioTuristico, Double> costo_servicio;
    public static volatile ListAttribute<ServicioTuristico, Venta> ventas;
    public static volatile SingularAttribute<ServicioTuristico, Integer> codigo_servicio;
    public static volatile SingularAttribute<ServicioTuristico, String> nombre;
    public static volatile SingularAttribute<ServicioTuristico, String> descripcion_breve;
    public static volatile SingularAttribute<ServicioTuristico, String> destino_servicio;

}