package logica;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Cliente;
import logica.Usuario;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-19T19:35:14")
@StaticMetamodel(Venta.class)
public class Venta_ { 

    public static volatile SingularAttribute<Venta, Integer> num_venta;
    public static volatile SingularAttribute<Venta, Cliente> cli;
    public static volatile SingularAttribute<Venta, Usuario> usu;
    public static volatile SingularAttribute<Venta, String> medio_pago;
    public static volatile SingularAttribute<Venta, Date> fecha_venta;

}