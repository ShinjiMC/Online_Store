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
@Table(name = "cuidado_personal")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CuidadoPersonal.findAll", query = "SELECT c FROM CuidadoPersonal c"),
    @NamedQuery(name = "CuidadoPersonal.findBySku", query = "SELECT c FROM CuidadoPersonal c WHERE c.sku = :sku"),
    @NamedQuery(name = "CuidadoPersonal.findByPeso", query = "SELECT c FROM CuidadoPersonal c WHERE c.peso = :peso"),
    @NamedQuery(name = "CuidadoPersonal.findByExtras", query = "SELECT c FROM CuidadoPersonal c WHERE c.extras = :extras"),
    @NamedQuery(name = "CuidadoPersonal.findByMaterial", query = "SELECT c FROM CuidadoPersonal c WHERE c.material = :material"),
    @NamedQuery(name = "CuidadoPersonal.findByFuenteAlimenta", query = "SELECT c FROM CuidadoPersonal c WHERE c.fuenteAlimenta = :fuenteAlimenta"),
    @NamedQuery(name = "CuidadoPersonal.findByDimension", query = "SELECT c FROM CuidadoPersonal c WHERE c.dimension = :dimension")})
public class CuidadoPersonal implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Sku")
    private String sku;
    @Size(max = 30)
    @Column(name = "Peso")
    private String peso;
    @Size(max = 30)
    @Column(name = "Extras")
    private String extras;
    @Size(max = 30)
    @Column(name = "Material")
    private String material;
    @Size(max = 30)
    @Column(name = "Fuente_Alimenta")
    private String fuenteAlimenta;
    @Size(max = 30)
    @Column(name = "Dimension")
    private String dimension;
    @JoinColumn(name = "Sku_Articulo", referencedColumnName = "Sku")
    @ManyToOne
    private Articulo skuArticulo;

    public CuidadoPersonal() {
    }

    public CuidadoPersonal(String sku) {
        this.sku = sku;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getExtras() {
        return extras;
    }

    public void setExtras(String extras) {
        this.extras = extras;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getFuenteAlimenta() {
        return fuenteAlimenta;
    }

    public void setFuenteAlimenta(String fuenteAlimenta) {
        this.fuenteAlimenta = fuenteAlimenta;
    }

    public String getDimension() {
        return dimension;
    }

    public void setDimension(String dimension) {
        this.dimension = dimension;
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
        if (!(object instanceof CuidadoPersonal)) {
            return false;
        }
        CuidadoPersonal other = (CuidadoPersonal) object;
        if ((this.sku == null && other.sku != null) || (this.sku != null && !this.sku.equals(other.sku))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.CuidadoPersonal[ sku=" + sku + " ]";
    }
    
}
