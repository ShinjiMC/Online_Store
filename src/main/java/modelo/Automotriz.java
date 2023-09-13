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
@Table(name = "automotriz")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Automotriz.findAll", query = "SELECT a FROM Automotriz a"),
    @NamedQuery(name = "Automotriz.findBySku", query = "SELECT a FROM Automotriz a WHERE a.sku = :sku"),
    @NamedQuery(name = "Automotriz.findByPeso", query = "SELECT a FROM Automotriz a WHERE a.peso = :peso"),
    @NamedQuery(name = "Automotriz.findByMaterial", query = "SELECT a FROM Automotriz a WHERE a.material = :material"),
    @NamedQuery(name = "Automotriz.findByBateria", query = "SELECT a FROM Automotriz a WHERE a.bateria = :bateria"),
    @NamedQuery(name = "Automotriz.findByNumLlantas", query = "SELECT a FROM Automotriz a WHERE a.numLlantas = :numLlantas")})
public class Automotriz implements Serializable {

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
    @Column(name = "Material")
    private String material;
    @Size(max = 70)
    @Column(name = "Bateria")
    private String bateria;
    @Column(name = "num_llantas")
    private Integer numLlantas;
    @JoinColumn(name = "Sku_Articulo", referencedColumnName = "Sku")
    @ManyToOne
    private Articulo skuArticulo;

    public Automotriz() {
    }

    public Automotriz(String sku) {
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

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getBateria() {
        return bateria;
    }

    public void setBateria(String bateria) {
        this.bateria = bateria;
    }

    public Integer getNumLlantas() {
        return numLlantas;
    }

    public void setNumLlantas(Integer numLlantas) {
        this.numLlantas = numLlantas;
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
        if (!(object instanceof Automotriz)) {
            return false;
        }
        Automotriz other = (Automotriz) object;
        if ((this.sku == null && other.sku != null) || (this.sku != null && !this.sku.equals(other.sku))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Automotriz[ sku=" + sku + " ]";
    }
    
}
