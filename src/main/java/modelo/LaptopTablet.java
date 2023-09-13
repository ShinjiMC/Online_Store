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
@Table(name = "laptop_tablet")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LaptopTablet.findAll", query = "SELECT l FROM LaptopTablet l"),
    @NamedQuery(name = "LaptopTablet.findBySku", query = "SELECT l FROM LaptopTablet l WHERE l.sku = :sku"),
    @NamedQuery(name = "LaptopTablet.findByBateria", query = "SELECT l FROM LaptopTablet l WHERE l.bateria = :bateria"),
    @NamedQuery(name = "LaptopTablet.findByRgb", query = "SELECT l FROM LaptopTablet l WHERE l.rgb = :rgb"),
    @NamedQuery(name = "LaptopTablet.findBySistOpe", query = "SELECT l FROM LaptopTablet l WHERE l.sistOpe = :sistOpe"),
    @NamedQuery(name = "LaptopTablet.findByAlmacenamiento", query = "SELECT l FROM LaptopTablet l WHERE l.almacenamiento = :almacenamiento"),
    @NamedQuery(name = "LaptopTablet.findByResolucion", query = "SELECT l FROM LaptopTablet l WHERE l.resolucion = :resolucion"),
    @NamedQuery(name = "LaptopTablet.findByProcesador", query = "SELECT l FROM LaptopTablet l WHERE l.procesador = :procesador"),
    @NamedQuery(name = "LaptopTablet.findByPantalla", query = "SELECT l FROM LaptopTablet l WHERE l.pantalla = :pantalla"),
    @NamedQuery(name = "LaptopTablet.findByTipo", query = "SELECT l FROM LaptopTablet l WHERE l.tipo = :tipo")})
public class LaptopTablet implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Sku")
    private String sku;
    @Size(max = 30)
    @Column(name = "Bateria")
    private String bateria;
    @Size(max = 30)
    @Column(name = "Rgb")
    private String rgb;
    @Size(max = 30)
    @Column(name = "Sist_Ope")
    private String sistOpe;
    @Size(max = 30)
    @Column(name = "Almacenamiento")
    private String almacenamiento;
    @Size(max = 30)
    @Column(name = "Resolucion")
    private String resolucion;
    @Size(max = 30)
    @Column(name = "Procesador")
    private String procesador;
    @Size(max = 30)
    @Column(name = "Pantalla")
    private String pantalla;
    @Size(max = 30)
    @Column(name = "Tipo")
    private String tipo;
    @JoinColumn(name = "Sku_Articulo", referencedColumnName = "Sku")
    @ManyToOne
    private Articulo skuArticulo;

    public LaptopTablet() {
    }

    public LaptopTablet(String sku) {
        this.sku = sku;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getBateria() {
        return bateria;
    }

    public void setBateria(String bateria) {
        this.bateria = bateria;
    }

    public String getRgb() {
        return rgb;
    }

    public void setRgb(String rgb) {
        this.rgb = rgb;
    }

    public String getSistOpe() {
        return sistOpe;
    }

    public void setSistOpe(String sistOpe) {
        this.sistOpe = sistOpe;
    }

    public String getAlmacenamiento() {
        return almacenamiento;
    }

    public void setAlmacenamiento(String almacenamiento) {
        this.almacenamiento = almacenamiento;
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

    public String getPantalla() {
        return pantalla;
    }

    public void setPantalla(String pantalla) {
        this.pantalla = pantalla;
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
        if (!(object instanceof LaptopTablet)) {
            return false;
        }
        LaptopTablet other = (LaptopTablet) object;
        if ((this.sku == null && other.sku != null) || (this.sku != null && !this.sku.equals(other.sku))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.LaptopTablet[ sku=" + sku + " ]";
    }
    
}
