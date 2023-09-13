/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
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
@Table(name = "articulo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Articulo.findAll", query = "SELECT a FROM Articulo a"),
    @NamedQuery(name = "Articulo.findBySku", query = "SELECT a FROM Articulo a WHERE a.sku = :sku"),
    @NamedQuery(name = "Articulo.findByPrecio", query = "SELECT a FROM Articulo a WHERE a.precio = :precio"),
    @NamedQuery(name = "Articulo.findByMarca", query = "SELECT a FROM Articulo a WHERE a.marca = :marca"),
    @NamedQuery(name = "Articulo.findByNombre", query = "SELECT a FROM Articulo a WHERE a.nombre = :nombre"),
    @NamedQuery(name = "Articulo.findByColor", query = "SELECT a FROM Articulo a WHERE a.color = :color")})
public class Articulo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Sku")
    private String sku;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "Precio")
    private BigDecimal precio;
    @Size(max = 30)
    @Column(name = "Marca")
    private String marca;
    @Size(max = 70)
    @Column(name = "Nombre")
    private String nombre;
    @Size(max = 30)
    @Column(name = "Color")
    private String color;
    @Lob
    @Column(name = "Img")
    private byte[] img;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<CuidadoPersonal> cuidadoPersonalCollection;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<Computo> computoCollection;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<Oferta> ofertaCollection;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<Automotriz> automotrizCollection;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<LaptopTablet> laptopTabletCollection;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<TvVideo> tvVideoCollection;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<Fotografia> fotografiaCollection;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<Oficina> oficinaCollection;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<ElectroHogar> electroHogarCollection;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<Gamer> gamerCollection;
    @JoinColumn(name = "Id_vendedor", referencedColumnName = "Id_vendedor")
    @ManyToOne
    private Vendedor idvendedor;
    @OneToMany(mappedBy = "skuArticulo")
    private Collection<Stock> stockCollection;
    @OneToMany(mappedBy = "sku")
    private Collection<CestaCompras> cestaComprasCollection;

    public Articulo() {
    }

    public Articulo(String sku) {
        this.sku = sku;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public byte[] getImg() {
        return img;
    }

    public void setImg(byte[] img) {
        this.img = img;
    }

    @XmlTransient
    public Collection<CuidadoPersonal> getCuidadoPersonalCollection() {
        return cuidadoPersonalCollection;
    }

    public void setCuidadoPersonalCollection(Collection<CuidadoPersonal> cuidadoPersonalCollection) {
        this.cuidadoPersonalCollection = cuidadoPersonalCollection;
    }

    @XmlTransient
    public Collection<Computo> getComputoCollection() {
        return computoCollection;
    }

    public void setComputoCollection(Collection<Computo> computoCollection) {
        this.computoCollection = computoCollection;
    }

    @XmlTransient
    public Collection<Oferta> getOfertaCollection() {
        return ofertaCollection;
    }

    public void setOfertaCollection(Collection<Oferta> ofertaCollection) {
        this.ofertaCollection = ofertaCollection;
    }

    @XmlTransient
    public Collection<Automotriz> getAutomotrizCollection() {
        return automotrizCollection;
    }

    public void setAutomotrizCollection(Collection<Automotriz> automotrizCollection) {
        this.automotrizCollection = automotrizCollection;
    }

    @XmlTransient
    public Collection<LaptopTablet> getLaptopTabletCollection() {
        return laptopTabletCollection;
    }

    public void setLaptopTabletCollection(Collection<LaptopTablet> laptopTabletCollection) {
        this.laptopTabletCollection = laptopTabletCollection;
    }

    @XmlTransient
    public Collection<TvVideo> getTvVideoCollection() {
        return tvVideoCollection;
    }

    public void setTvVideoCollection(Collection<TvVideo> tvVideoCollection) {
        this.tvVideoCollection = tvVideoCollection;
    }

    @XmlTransient
    public Collection<Fotografia> getFotografiaCollection() {
        return fotografiaCollection;
    }

    public void setFotografiaCollection(Collection<Fotografia> fotografiaCollection) {
        this.fotografiaCollection = fotografiaCollection;
    }

    @XmlTransient
    public Collection<Oficina> getOficinaCollection() {
        return oficinaCollection;
    }

    public void setOficinaCollection(Collection<Oficina> oficinaCollection) {
        this.oficinaCollection = oficinaCollection;
    }

    @XmlTransient
    public Collection<ElectroHogar> getElectroHogarCollection() {
        return electroHogarCollection;
    }

    public void setElectroHogarCollection(Collection<ElectroHogar> electroHogarCollection) {
        this.electroHogarCollection = electroHogarCollection;
    }

    @XmlTransient
    public Collection<Gamer> getGamerCollection() {
        return gamerCollection;
    }

    public void setGamerCollection(Collection<Gamer> gamerCollection) {
        this.gamerCollection = gamerCollection;
    }

    public Vendedor getIdvendedor() {
        return idvendedor;
    }

    public void setIdvendedor(Vendedor idvendedor) {
        this.idvendedor = idvendedor;
    }

    @XmlTransient
    public Collection<Stock> getStockCollection() {
        return stockCollection;
    }

    public void setStockCollection(Collection<Stock> stockCollection) {
        this.stockCollection = stockCollection;
    }

    @XmlTransient
    public Collection<CestaCompras> getCestaComprasCollection() {
        return cestaComprasCollection;
    }

    public void setCestaComprasCollection(Collection<CestaCompras> cestaComprasCollection) {
        this.cestaComprasCollection = cestaComprasCollection;
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
        if (!(object instanceof Articulo)) {
            return false;
        }
        Articulo other = (Articulo) object;
        if ((this.sku == null && other.sku != null) || (this.sku != null && !this.sku.equals(other.sku))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Articulo[ sku=" + sku + " ]";
    }
    
}
