package logica;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Venta;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-20T21:02:28")
@StaticMetamodel(Usuario.class)
public class Usuario_ { 

    public static volatile SingularAttribute<Usuario, String> pass;
    public static volatile ListAttribute<Usuario, Venta> ventas;
    public static volatile SingularAttribute<Usuario, Integer> id_user;
    public static volatile SingularAttribute<Usuario, String> user;

}