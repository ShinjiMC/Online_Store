/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.io.Serializable;
import java.math.BigDecimal;
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
@Table(name = "oferta")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Oferta.findAll", query = "SELECT o FROM Oferta o"),
    @NamedQuery(name = "Oferta.findByIdoferta", query = "SELECT o FROM Oferta o WHERE o.idoferta = :idoferta"),
    @NamedQuery(name = "Oferta.findByAprobacion", query = "SELECT o FROM Oferta o WHERE o.aprobacion = :aprobacion"),
    @NamedQuery(name = "Oferta.findByCostooriginal", query = "SELECT o FROM Oferta o WHERE o.costooriginal = :costooriginal"),
    @NamedQuery(name = "Oferta.findByCostodescuento", query = "SELECT o FROM Oferta o WHERE o.costodescuento = :costodescuento")})
public class Oferta implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "Id_oferta")
    private String idoferta;
    @Column(name = "Aprobacion")
    private Boolean aprobacion;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "Costo_original")
    private BigDecimal costooriginal;
    @Column(name = "Costo_descuento")
    private BigDecimal costodescuento;
    @JoinColumn(name = "Sku_Articulo", referencedColumnName = "Sku")
    @ManyToOne
    private Articulo skuArticulo;

    public Oferta() {
    }

    public Oferta(String idoferta) {
        this.idoferta = idoferta;
    }

    public String getIdoferta() {
        return idoferta;
    }

    public void setIdoferta(String idoferta) {
        this.idoferta = idoferta;
    }

    public Boolean getAprobacion() {
        return aprobacion;
    }

    public void setAprobacion(Boolean aprobacion) {
        this.aprobacion = aprobacion;
    }

    public BigDecimal getCostooriginal() {
        return costooriginal;
    }

    public void setCostooriginal(BigDecimal costooriginal) {
        this.costooriginal = costooriginal;
    }

    public BigDecimal getCostodescuento() {
        return costodescuento;
    }

    public void setCostodescuento(BigDecimal costodescuento) {
        this.costodescuento = costodescuento;
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
        hash += (idoferta != null ? idoferta.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Oferta)) {
            return false;
        }
        Oferta other = (Oferta) object;
        if ((this.idoferta == null && other.idoferta != null) || (this.idoferta != null && !this.idoferta.equals(other.idoferta))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Oferta[ idoferta=" + idoferta + " ]";
    }
    
}
