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
@Table(name = "fotografia")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Fotografia.findAll", query = "SELECT f FROM Fotografia f"),
    @NamedQuery(name = "Fotografia.findBySku", query = "SELECT f FROM Fotografia f WHERE f.sku = :sku"),
    @NamedQuery(name = "Fotografia.findByMegapixeles", query = "SELECT f FROM Fotografia f WHERE f.megapixeles = :megapixeles"),
    @NamedQuery(name = "Fotografia.findByResolucion", query = "SELECT f FROM Fotografia f WHERE f.resolucion = :resolucion"),
    @NamedQuery(name = "Fotografia.findByProcesador", query = "SELECT f FROM Fotografia f WHERE f.procesador = :procesador"),
    @NamedQuery(name = "Fotografia.findByTipo", query = "SELECT f FROM Fotografia f WHERE f.tipo = :tipo")})
public class Fotografia implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Sku")
    private String sku;
    @Size(max = 30)
    @Column(name = "Megapixeles")
    private String megapixeles;
    @Size(max = 30)
    @Column(name = "Resolucion")
    private String resolucion;
    @Size(max = 30)
    @Column(name = "Procesador")
    private String procesador;
    @Size(max = 30)
    @Column(name = "Tipo")
    private String tipo;
    @JoinColumn(name = "Sku_Articulo", referencedColumnName = "Sku")
    @ManyToOne
    private Articulo skuArticulo;

    public Fotografia() {
    }

    public Fotografia(String sku) {
        this.sku = sku;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getMegapixeles() {
        return megapixeles;
    }

    public void setMegapixeles(String megapixeles) {
        this.megapixeles = megapixeles;
    }

    public String getResolucion() {
        return resolucion;
    }

    public void setResolucion(String resolucion) {
        this.resolucion = resolucion;
    }

    public String getProcesador() {
        return procesador;
    }

    public void setProcesador(String procesador) {
        this.procesador = procesador;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
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
        if (!(object instanceof Fotografia)) {
            return false;
        }
        Fotografia other = (Fotografia) object;
        if ((this.sku == null && other.sku != null) || (this.sku != null && !this.sku.equals(other.sku))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Fotografia[ sku=" + sku + " ]";
    }
    
}
