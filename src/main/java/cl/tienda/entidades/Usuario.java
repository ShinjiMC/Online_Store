package cl.tienda.entidades;

public class Usuario {
    private int Id_usuario;
    private String Nombre;
    private String P_apel;
    private String S_apel;
    private String F_nac;
    private int Telefono;
    private String Departamento;
    private String Ciudad;
    private String Distrito;
    private String Calle;
    private String Correo;
    private String Contrasena;

    public Usuario() {
    }

    public Usuario(int Id_usuario, String Nombre, String P_apel, String S_apel, String F_nac, int Telefono, String Departamento, String Ciudad, String Distrito, String Calle, String Correo, String Contrasena) {
        this.Id_usuario = Id_usuario;
        this.Nombre = Nombre;
        this.P_apel = P_apel;
        this.S_apel = S_apel;
        this.F_nac = F_nac;
        this.Telefono = Telefono;
        this.Departamento = Departamento;
        this.Ciudad = Ciudad;
        this.Distrito = Distrito;
        this.Calle = Calle;
        this.Correo = Correo;
        this.Contrasena = Contrasena;
    }

    public int getId_usuario() {
        return Id_usuario;
    }

    public void setId_usuario(int Id_usuario) {
        this.Id_usuario = Id_usuario;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getP_apel() {
        return P_apel;
    }

    public void setP_apel(String P_apel) {
        this.P_apel = P_apel;
    }

    public String getS_apel() {
        return S_apel;
    }

    public void setS_apel(String S_apel) {
        this.S_apel = S_apel;
    }

    public String getF_nac() {
        return F_nac;
    }

    public void setF_nac(String F_nac) {
        this.F_nac = F_nac;
    }

    public int getTelefono() {
        return Telefono;
    }

    public void setTelefono(int Telefono) {
        this.Telefono = Telefono;
    }

    public String getDepartamento() {
        return Departamento;
    }

    public void setDepartamento(String Departamento) {
        this.Departamento = Departamento;
    }

    public String getCiudad() {
        return Ciudad;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }

    public String getDistrito() {
        return Distrito;
    }

    public void setDistrito(String Distrito) {
        this.Distrito = Distrito;
    }

    public String getCalle() {
        return Calle;
    }

    public void setCalle(String Calle) {
        this.Calle = Calle;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }
    
    
}
