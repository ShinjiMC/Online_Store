/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Braulio
 */
@Entity
@Table(name = "tienda")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tienda.findAll", query = "SELECT t FROM Tienda t"),
    @NamedQuery(name = "Tienda.findByIdtienda", query = "SELECT t FROM Tienda t WHERE t.idtienda = :idtienda"),
    @NamedQuery(name = "Tienda.findByDepartamento", query = "SELECT t FROM Tienda t WHERE t.departamento = :departamento"),
    @NamedQuery(name = "Tienda.findByCiudad", query = "SELECT t FROM Tienda t WHERE t.ciudad = :ciudad"),
    @NamedQuery(name = "Tienda.findByDistrito", query = "SELECT t FROM Tienda t WHERE t.distrito = :distrito"),
    @NamedQuery(name = "Tienda.findByCalle", query = "SELECT t FROM Tienda t WHERE t.calle = :calle")})
public class Tienda implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "Id_tienda")
    private Integer idtienda;
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
    @OneToMany(mappedBy = "idtienda")
    private Collection<TiendaCliente> tiendaClienteCollection;

    public Tienda() {
    }

    public Tienda(Integer idtienda) {
        this.idtienda = idtienda;
    }

    public Integer getIdtienda() {
        return idtienda;
    }

    public void setIdtienda(Integer idtienda) {
        this.idtienda = idtienda;
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

    @XmlTransient
    public Collection<TiendaCliente> getTiendaClienteCollection() {
        return tiendaClienteCollection;
    }

    public void setTiendaClienteCollection(Collection<TiendaCliente> tiendaClienteCollection) {
        this.tiendaClienteCollection = tiendaClienteCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idtienda != null ? idtienda.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tienda)) {
            return false;
        }
        Tienda other = (Tienda) object;
        if ((this.idtienda == null && other.idtienda != null) || (this.idtienda != null && !this.idtienda.equals(other.idtienda))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Tienda[ idtienda=" + idtienda + " ]";
    }
    
}
