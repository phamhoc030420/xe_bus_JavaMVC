package ptithcm.entity;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "loai")
public class Loai {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	@Column(name = "ten")
	private String ten;
	@Column(name = "gia")
	private BigDecimal gia;
	@Column(name = "ngay") 
	private String ngay; 
	@OneToMany(mappedBy = "loai", cascade = CascadeType.ALL)
	private Collection<Xe> xe;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Collection<Xe> getXe() {
		return xe;
	}
	public void setXe(Collection<Xe> xe) {
		this.xe = xe;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public BigDecimal getGia() {
		return gia;
	}
	public void setGia(BigDecimal gia) {
		this.gia = gia;
	}
	public Loai() {
		super();
	}
	public String getNgay() {
		return ngay;
	}
	public void setNgay(String ngay) {
		this.ngay = ngay;
	}
	public Loai(int id, String ten, BigDecimal gia, String ngay, Collection<Xe> xe) {
		super();
		this.id = id;
		this.ten = ten;
		this.gia = gia;
		this.ngay = ngay;
		this.xe = xe;
	}
}
