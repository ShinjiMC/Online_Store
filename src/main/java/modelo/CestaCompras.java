/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Braulio
 */
@Entity
@Table(name = "cesta_compras")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CestaCompras.findAll", query = "SELECT c FROM CestaCompras c"),
    @NamedQuery(name = "CestaCompras.findByIdshop", query = "SELECT c FROM CestaCompras c WHERE c.idshop = :idshop"),
    @NamedQuery(name = "CestaCompras.findByCantidad", query = "SELECT c FROM CestaCompras c WHERE c.cantidad = :cantidad")})
public class CestaCompras implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Id_shop")
    private String idshop;
    @Column(name = "Cantidad")
    private Integer cantidad;
    @JoinColumn(name = "Sku", referencedColumnName = "Sku")
    @ManyToOne
    private Articulo sku;
    @JoinColumn(name = "Id_cliente_Cliente", referencedColumnName = "Id_cliente")
    @ManyToOne
    private Cliente idclienteCliente;

    public CestaCompras() {
    }

    public CestaCompras(String idshop) {
        this.idshop = idshop;
    }

    public String getIdshop() {
        return idshop;
    }

    public void setIdshop(String idshop) {
        this.idshop = idshop;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public Articulo getSku() {
        return sku;
    }

    public void setSku(Articulo sku) {
        this.sku = sku;
    }

    public Cliente getIdclienteCliente() {
        return idclienteCliente;
    }

    public void setIdclienteCliente(Cliente idclienteCliente) {
        this.idclienteCliente = idclienteCliente;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idshop != null ? idshop.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CestaCompras)) {
            return false;
        }
        CestaCompras other = (CestaCompras) object;
        if ((this.idshop == null && other.idshop != null) || (this.idshop != null && !this.idshop.equals(other.idshop))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.CestaCompras[ idshop=" + idshop + " ]";
    }
    
}
