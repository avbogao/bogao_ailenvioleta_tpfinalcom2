package logica;

import java.sql.Date;
import java.util.List;
import persistencia.ControladoraPersistencia;
import persistencia.exceptions.NonexistentEntityException;

public class Controladora {
    ControladoraPersistencia controlp = new ControladoraPersistencia();
    //empleado
    public void crearEmpleado(String nombre, String apellido, String direccion, String dni, Date fecha_nac, String nacionalidad, String celular, String email, String cargo, Double sueldo, String user, String password) {
        Empleado empleado = new Empleado();
        Usuario usu = new Usuario();
        
        empleado.setNombre(nombre);
        empleado.setApellido(apellido);
        empleado.setDirección(direccion);
        empleado.setDni(dni);
        empleado.setFecha_nac(fecha_nac);
        empleado.setNacionalidad(nacionalidad);
        empleado.setCelular(celular);
        empleado.setEmail(email);
        empleado.setCargo(cargo);
        empleado.setSueldo(sueldo);
        
        usu.setUser(user);
        usu.setPass(password);
        
        empleado.setUsu(usu);
        
        controlp.crearEmpleado(empleado,usu);
    }
    
    public List<Empleado> traerEmpleados(){
        return controlp.traerEmpleados(); 
    }

    public void eliminarEmpleado(int id){
        controlp.eliminarEmpleado(id);
    }

    public Empleado buscarEmpleado(int id) {
        return controlp.buscarEmpleado(id);
    }

    public void modificarEmpleado(Empleado emple) {
        controlp.modificarEmpleado(emple);
    }
    
    public boolean verificarUsuario(String user, String pass) {
        List<Usuario> listaUsuarios = controlp.traerUsuarios();
        
        if(!listaUsuarios.isEmpty()){
            for(Usuario u : listaUsuarios){
                if(u.getUser().equalsIgnoreCase(user) && u.getPass().equalsIgnoreCase(pass)){
                    return true;
                }
            }
        }
         return false;
    }
    

    //usuario
    public List<Usuario> traerUsuarios(){
        return controlp.traerUsuarios();
    }

    public void eliminarUsuario(int id) {
        controlp.eliminarUsuario(id);
    }

    public Usuario buscarUsuario(int id) {
        return controlp.buscarUsuario(id);
    }

    public void modificarUsuario(Usuario usu) {
        controlp.modificarUsuario(usu);
    }
    
    //clientes
    public List<Cliente> traerClientes(){
        return controlp.traerClientes();
    }

    public void eliminarCliente(int id) {
        controlp.eliminarCliente(id);
    }

    public void crearCliente(String nombre, String apellido, String direccion, String dni, Date fecha_nac, String nacionalidad, String celular, String email) {
        Cliente cli = new Cliente();
        
        cli.setNombre(nombre);
        cli.setApellido(apellido);
        cli.setDirección(direccion);
        cli.setDni(dni);
        cli.setFecha_nac(fecha_nac);
        cli.setNacionalidad(nacionalidad);
        cli.setCelular(celular);
        cli.setEmail(email);
        
        controlp.crearCliente(cli);
    }

    public Cliente buscarCliente(int id) {
        return controlp.buscarCliente(id);
    }

    public void modificarCliente(Cliente cli) {
        controlp.modificarCliente(cli);
    }
    
    //servicios
    public void crearServicio(String nombre,String descripcion,String destino,Date fecha,double costo){
    ServicioTuristico st = new ServicioTuristico();
        
        st.setNombre(nombre);
        st.setDescripcion_breve(descripcion);
        st.setDestino_servicio(destino);
        st.setFecha_servicio(fecha);
        st.setCosto_servicio(costo);
        
        controlp.crearServicio(st);
        
    }
    public List<ServicioTuristico> traerServicios(){
        return controlp.traerServicios();
    }

    public void eliminarServicio(int id) {
        controlp.eliminarServicio(id);
    }

    public ServicioTuristico buscarServicio(int id) {
        return controlp.buscarServicio(id);
    }

    public void modificarServicio(ServicioTuristico st) {
        controlp.modificarServicio(st);
    }
    
    //paquetes
    public void eliminarPaquete(int id) {
        controlp.eliminarPaquete(id);
    }

    public List<PaqueteTuristico> traerPaquetes() {
        return controlp.buscarPaquetes();
    }

    public PaqueteTuristico buscarPaquete(int id) {
        return controlp.buscarPaquetes(id);
    }

    public void modificarPaquete(PaqueteTuristico p) {
        controlp.modificarPaquete(p);
    }

    public void crearPaquete(double costo, List<ServicioTuristico> servicios) {
        PaqueteTuristico p = new PaqueteTuristico();
        
        p.setCosto_paquete(costo);
        p.setLista_servicios_incluidos(servicios);
        
        controlp.crearPaquete(p);
    }

    //ventas
    
    public void crearVenta(Date fecha, String medio) {
        Venta v = new Venta();
        
        v.setFecha_venta(fecha);
        v.setMedio_pago(medio);
        
        controlp.crearVenta(v);
    }

    public void eliminarVenta(int id) {
        controlp.eliminarVenta(id);
    }

    public List<Venta> traerVentas() {
        return controlp.traerVentas();
    }

    public Venta buscarVenta(int id) {
        return controlp.buscarVenta(id);
    }

    public void modificarVenta(Venta v) {
        controlp.modificarVenta(v);
    }
}
