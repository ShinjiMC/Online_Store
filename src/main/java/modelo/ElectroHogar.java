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
@Table(name = "electro_hogar")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ElectroHogar.findAll", query = "SELECT e FROM ElectroHogar e"),
    @NamedQuery(name = "ElectroHogar.findBySku", query = "SELECT e FROM ElectroHogar e WHERE e.sku = :sku"),
    @NamedQuery(name = "ElectroHogar.findByModelo", query = "SELECT e FROM ElectroHogar e WHERE e.modelo = :modelo"),
    @NamedQuery(name = "ElectroHogar.findByCapacidad", query = "SELECT e FROM ElectroHogar e WHERE e.capacidad = :capacidad")})
public class ElectroHogar implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Sku")
    private String sku;
    @Size(max = 70)
    @Column(name = "Modelo")
    private String modelo;
    @Size(max = 30)
    @Column(name = "Capacidad")
    private String capacidad;
    @JoinColumn(name = "Sku_Articulo", referencedColumnName = "Sku")
    @ManyToOne
    private Articulo skuArticulo;

    public ElectroHogar() {
    }

    public ElectroHogar(String sku) {
        this.sku = sku;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(String capacidad) {
        this.capacidad = capacidad;
    }

    public Articulo getSkuArticulo() {
        return skuArticulo;
    }

    public void setSkuArticulo(Articulo skuArticulo) {
        this.skuArticulo = skuArticulo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sku != null ? sku.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ElectroHogar)) {
            return false;
        }
        ElectroHogar other = (ElectroHogar) object;
        if ((this.sku == null && other.sku != null) || (this.sku != null && !this.sku.equals(other.sku))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.ElectroHogar[ sku=" + sku + " ]";
    }
    
}
