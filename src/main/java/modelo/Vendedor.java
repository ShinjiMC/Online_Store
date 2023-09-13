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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "vendedor")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Vendedor.findAll", query = "SELECT v FROM Vendedor v"),
    @NamedQuery(name = "Vendedor.findByIdvendedor", query = "SELECT v FROM Vendedor v WHERE v.idvendedor = :idvendedor"),
    @NamedQuery(name = "Vendedor.findBySueldo", query = "SELECT v FROM Vendedor v WHERE v.sueldo = :sueldo"),
    @NamedQuery(name = "Vendedor.findByCargo", query = "SELECT v FROM Vendedor v WHERE v.cargo = :cargo")})
public class Vendedor implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "Id_vendedor")
    private Integer idvendedor;
    @Column(name = "Sueldo")
    private Integer sueldo;
    @Size(max = 30)
    @Column(name = "Cargo")
    private String cargo;
    @JoinColumn(name = "Id_usuario", referencedColumnName = "Id_usuario")
    @ManyToOne
    private Usuario idusuario;
    @OneToMany(mappedBy = "idvendedor")
    private Collection<Articulo> articuloCollection;

    public Vendedor() {
    }

    public Vendedor(Integer idvendedor) {
        this.idvendedor = idvendedor;
    }

    public Integer getIdvendedor() {
        return idvendedor;
    }

    public void setIdvendedor(Integer idvendedor) {
        this.idvendedor = idvendedor;
    }

    public Integer getSueldo() {
        return sueldo;
    }

    public void setSueldo(Integer sueldo) {
        this.sueldo = sueldo;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public Usuario getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(Usuario idusuario) {
        this.idusuario = idusuario;
    }

    @XmlTransient
    public Collection<Articulo> getArticuloCollection() {
        return articuloCollection;
    }

    public void setArticuloCollection(Collection<Articulo> articuloCollection) {
        this.articuloCollection = articuloCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idvendedor != null ? idvendedor.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Vendedor)) {
            return false;
        }
        Vendedor other = (Vendedor) object;
        if ((this.idvendedor == null && other.idvendedor != null) || (this.idvendedor != null && !this.idvendedor.equals(other.idvendedor))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Vendedor[ idvendedor=" + idvendedor + " ]";
    }
    
}
