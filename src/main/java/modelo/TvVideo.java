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
@Table(name = "tv_video")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TvVideo.findAll", query = "SELECT t FROM TvVideo t"),
    @NamedQuery(name = "TvVideo.findBySku", query = "SELECT t FROM TvVideo t WHERE t.sku = :sku"),
    @NamedQuery(name = "TvVideo.findByResolucion", query = "SELECT t FROM TvVideo t WHERE t.resolucion = :resolucion"),
    @NamedQuery(name = "TvVideo.findByPulgadas", query = "SELECT t FROM TvVideo t WHERE t.pulgadas = :pulgadas"),
    @NamedQuery(name = "TvVideo.findByTipo", query = "SELECT t FROM TvVideo t WHERE t.tipo = :tipo")})
public class TvVideo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Sku")
    private String sku;
    @Size(max = 30)
    @Column(name = "Resolucion")
    private String resolucion;
    @Size(max = 30)
    @Column(name = "Pulgadas")
    private String pulgadas;
    @Size(max = 30)
    @Column(name = "Tipo")
    private String tipo;
    @JoinColumn(name = "Sku_Articulo", referencedColumnName = "Sku")
    @ManyToOne
    private Articulo skuArticulo;

    public TvVideo() {
    }

    public TvVideo(String sku) {
        this.sku = sku;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getResolucion() {
        return resolucion;
    }

    public void setResolucion(String resolucion) {
        this.resolucion = resolucion;
    }

    public String getPulgadas() {
        return pulgadas;
    }

    public void setPulgadas(String pulgadas) {
        this.pulgadas = pulgadas;
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
        if (!(object instanceof TvVideo)) {
            return false;
        }
        TvVideo other = (TvVideo) object;
        if ((this.sku == null && other.sku != null) || (this.sku != null && !this.sku.equals(other.sku))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.TvVideo[ sku=" + sku + " ]";
    }
    
}
