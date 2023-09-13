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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Braulio
 */
@Entity
@Table(name = "tienda_cliente")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TiendaCliente.findAll", query = "SELECT t FROM TiendaCliente t"),
    @NamedQuery(name = "TiendaCliente.findByIdcliente", query = "SELECT t FROM TiendaCliente t WHERE t.idcliente = :idcliente")})
public class TiendaCliente implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "Id_cliente")
    private Integer idcliente;
    @JoinColumn(name = "Id_cliente", referencedColumnName = "Id_cliente", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Cliente cliente;
    @JoinColumn(name = "Id_tienda", referencedColumnName = "Id_tienda")
    @ManyToOne
    private Tienda idtienda;

    public TiendaCliente() {
    }

    public TiendaCliente(Integer idcliente) {
        this.idcliente = idcliente;
    }

    public Integer getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(Integer idcliente) {
        this.idcliente = idcliente;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Tienda getIdtienda() {
        return idtienda;
    }

    public void setIdtienda(Tienda idtienda) {
        this.idtienda = idtienda;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcliente != null ? idcliente.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TiendaCliente)) {
            return false;
        }
        TiendaCliente other = (TiendaCliente) object;
        if ((this.idcliente == null && other.idcliente != null) || (this.idcliente != null && !this.idcliente.equals(other.idcliente))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.TiendaCliente[ idcliente=" + idcliente + " ]";
    }
    
}
