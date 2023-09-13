/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Braulio
 */
@Entity
@Table(name = "usuario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuario.findAll", query = "SELECT u FROM Usuario u"),
    @NamedQuery(name = "Usuario.findByIdusuario", query = "SELECT u FROM Usuario u WHERE u.idusuario = :idusuario"),
    @NamedQuery(name = "Usuario.findByNombre", query = "SELECT u FROM Usuario u WHERE u.nombre = :nombre"),
    @NamedQuery(name = "Usuario.findByPapel", query = "SELECT u FROM Usuario u WHERE u.papel = :papel"),
    @NamedQuery(name = "Usuario.findBySapel", query = "SELECT u FROM Usuario u WHERE u.sapel = :sapel"),
    @NamedQuery(name = "Usuario.findByFnac", query = "SELECT u FROM Usuario u WHERE u.fnac = :fnac"),
    @NamedQuery(name = "Usuario.findByTelefono", query = "SELECT u FROM Usuario u WHERE u.telefono = :telefono"),
    @NamedQuery(name = "Usuario.findByDepartamento", query = "SELECT u FROM Usuario u WHERE u.departamento = :departamento"),
    @NamedQuery(name = "Usuario.findByCiudad", query = "SELECT u FROM Usuario u WHERE u.ciudad = :ciudad"),
    @NamedQuery(name = "Usuario.findByDistrito", query = "SELECT u FROM Usuario u WHERE u.distrito = :distrito"),
    @NamedQuery(name = "Usuario.findByCalle", query = "SELECT u FROM Usuario u WHERE u.calle = :calle"),
    @NamedQuery(name = "Usuario.findByCorreo", query = "SELECT u FROM Usuario u WHERE u.correo = :correo"),
    @NamedQuery(name = "Usuario.findByContrasena", query = "SELECT u FROM Usuario u WHERE u.contrasena = :contrasena")})
public class Usuario implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "Id_usuario")
    private Integer idusuario;
    @Size(max = 30)
    @Column(name = "Nombre")
    private String nombre;
    @Size(max = 30)
    @Column(name = "P_apel")
    private String papel;
    @Size(max = 30)
    @Column(name = "S_apel")
    private String sapel;
    @Column(name = "F_nac")
    @Temporal(TemporalType.DATE)
    private Date fnac;
    @Column(name = "Telefono")
    private Integer telefono;
    @Size(max = 30)
    @Column(name = "Departamento")
    private String departamento;
    @Size(max = 30)
    @Column(name = "Ciudad")
    private String ciudad;
    @Size(max = 30)
    @Column(name = "Distrito")
    private String distrito;
    @Size(max = 30)
    @Column(name = "Calle")
    private String calle;
    @Size(max = 70)
    @Column(name = "Correo")
    private String correo;
    @Size(max = 30)
    @Column(name = "Contrasena")
    private String contrasena;
    @OneToMany(mappedBy = "idusuario")
    private Collection<Vendedor> vendedorCollection;
    @OneToMany(mappedBy = "idusuario")
    private Collection<Cliente> clienteCollection;

    public Usuario() {
    }

    public Usuario(Integer idusuario) {
        this.idusuario = idusuario;
    }

    public Integer getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(Integer idusuario) {
        this.idusuario = idusuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPapel() {
        return papel;
    }

    public void setPapel(String papel) {
        this.papel = papel;
    }

    public String getSapel() {
        return sapel;
    }

    public void setSapel(String sapel) {
        this.sapel = sapel;
    }

    public Date getFnac() {
        return fnac;
    }

    public void setFnac(Date fnac) {
        this.fnac = fnac;
    }

    public Integer getTelefono() {
        return telefono;
    }

    public void setTelefono(Integer telefono) {
        this.telefono = telefono;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getDistrito() {
        return distrito;
    }

    public void setDistrito(String distrito) {
        this.distrito = distrito;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public Usuario(Integer idusuario, String nombre, String papel, String sapel, Date fnac, Integer telefono, String departamento, String ciudad, String distrito, String calle, String correo, String contrasena) {
        this.idusuario = idusuario;
        this.nombre = nombre;
        this.papel = papel;
        this.sapel = sapel;
        this.fnac = fnac;
        this.telefono = telefono;
        this.departamento = departamento;
        this.ciudad = ciudad;
        this.distrito = distrito;
        this.calle = calle;
        this.correo = correo;
        this.contrasena = contrasena;
    }
    
    

    @XmlTransient
    public Collection<Vendedor> getVendedorCollection() {
        return vendedorCollection;
    }

    public void setVendedorCollection(Collection<Vendedor> vendedorCollection) {
        this.vendedorCollection = vendedorCollection;
    }

    @XmlTransient
    public Collection<Cliente> getClienteCollection() {
        return clienteCollection;
    }

    public void setClienteCollection(Collection<Cliente> clienteCollection) {
        this.clienteCollection = clienteCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idusuario != null ? idusuario.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.idusuario == null && other.idusuario != null) || (this.idusuario != null && !this.idusuario.equals(other.idusuario))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Usuario[ idusuario=" + idusuario + " ]";
    }
    
}
