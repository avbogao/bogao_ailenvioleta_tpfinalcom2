package logica;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Usuario;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2021-12-19T19:35:14")
@StaticMetamodel(Empleado.class)
public class Empleado_ { 

    public static volatile SingularAttribute<Empleado, Date> fecha_nac;
    public static volatile SingularAttribute<Empleado, String> dirección;
    public static volatile SingularAttribute<Empleado, Usuario> usu;
    public static volatile SingularAttribute<Empleado, String> apellido;
    public static volatile SingularAttribute<Empleado, Double> sueldo;
    public static volatile SingularAttribute<Empleado, String> celular;
    public static volatile SingularAttribute<Empleado, String> cargo;
    public static volatile SingularAttribute<Empleado, String> nombre;
    public static volatile SingularAttribute<Empleado, String> dni;
    public static volatile SingularAttribute<Empleado, String> email;
    public static volatile SingularAttribute<Empleado, Integer> id_empleado;
    public static volatile SingularAttribute<Empleado, String> nacionalidad;

}