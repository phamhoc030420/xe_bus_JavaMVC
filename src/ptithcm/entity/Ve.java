package ptithcm.entity;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="ve")
public class Ve {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	@GeneratedValue
	@ManyToOne
	@JoinColumn(name = "makhach") 
	private Khachhang khachhang;
	@ManyToOne
	@JoinColumn(name = "machuyen")
	private Chuyen chuyen;
	@Column(name = "vitri")
	private int vitri;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Khachhang getKhachhang() {
		return khachhang;
	}
	public void setKhachhang(Khachhang khachhang) {
		this.khachhang = khachhang;
	}
	public Chuyen getChuyen() {
		return chuyen;
	}
	public void setChuyen(Chuyen chuyen) {
		this.chuyen = chuyen;
	}
	public int getVitri() {
		return vitri;
	}
	public void setVitri(int vitri) {
		this.vitri = vitri;
	}
	public Ve(int id, Khachhang khachhang, Chuyen chuyen, int vitri) {
		super();
		this.id = id;
		this.khachhang = khachhang;
		this.chuyen = chuyen;
		this.vitri = vitri;
	}
	public Ve() {
		super();
	}
}
