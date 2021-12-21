package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Cliente;
import logica.Empleado;
import logica.PaqueteTuristico;
import logica.ServicioTuristico;
import logica.Usuario;
import logica.Venta;
import persistencia.exceptions.NonexistentEntityException;

public class ControladoraPersistencia {

    EmpleadoJpaController emplejpa = new EmpleadoJpaController();
    UsuarioJpaController usujpa = new UsuarioJpaController();
    ClienteJpaController clijpa = new ClienteJpaController();
    ServicioTuristicoJpaController servjpa = new ServicioTuristicoJpaController();
    PaqueteTuristicoJpaController paqjpa = new PaqueteTuristicoJpaController();
    VentaJpaController vjpa = new VentaJpaController();

    public void crearEmpleado(Empleado empleado, Usuario usu) {
       usujpa.create(usu);
       emplejpa.create(empleado);
    }

    
    //empleados
    public List<Empleado> traerEmpleados() {
            return emplejpa.findEmpleadoEntities();
    }

    public void eliminarEmpleado(int id){
        try {
            emplejpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Empleado buscarEmpleado(int id) {
       return emplejpa.findEmpleado(id);
    }

    public void modificarEmpleado(Empleado emple) {
        try {
            emplejpa.edit(emple);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
       //usuarios
    
    public List<Usuario> traerUsuarios() {
        return usujpa.findUsuarioEntities();
    }
    
    public void eliminarUsuario(int id) {
        try {
            usujpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario buscarUsuario(int id) {
        return usujpa.findUsuario(id);
    }

    public void modificarUsuario(Usuario usu) {
        try {
            usujpa.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    //clientes

    public List<Cliente> traerClientes() {
        return clijpa.findClienteEntities();
    }

    public void eliminarCliente(int id) {
        try {
            clijpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearCliente(Cliente cli) {
        try {
            clijpa.create(cli);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Cliente buscarCliente(int id) {
        return clijpa.findCliente(id);
    }

    public void modificarCliente(Cliente cli) {
        try {
            clijpa.edit(cli);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    //servicios
    
    public List<ServicioTuristico> traerServicios() {
        return servjpa.findServicioTuristicoEntities();
    }

    public void eliminarServicio(int id) {
        try {
            servjpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ServicioTuristico buscarServicio(int id) {
        return servjpa.findServicioTuristico(id);
    }

    public void modificarServicio(ServicioTuristico st) {
        try {
            servjpa.edit(st);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearServicio(ServicioTuristico st) {
        servjpa.create(st);
    }
    
    //paquetes
    
    public void eliminarPaquete(int id) {
        try {
            paqjpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<PaqueteTuristico> buscarPaquetes() {
        return paqjpa.findPaqueteTuristicoEntities();
    }

    public PaqueteTuristico buscarPaquetes(int id) {
        return paqjpa.findPaqueteTuristico(id);
    }

    public void modificarPaquete(PaqueteTuristico p) {
        try {
            paqjpa.edit(p);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearPaquete(PaqueteTuristico p) {
        paqjpa.create(p);
    }

    //ventas
    
    public void crearVenta(Venta v) {
        vjpa.create(v);    
    }

    public void eliminarVenta(int id) {
        try {
            vjpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Venta> traerVentas() {
        return vjpa.findVentaEntities();
    }

    public Venta buscarVenta(int id) {
        return vjpa.findVenta(id);
    }

    public void modificarVenta(Venta v) {
        try {
            vjpa.edit(v);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
   
}
