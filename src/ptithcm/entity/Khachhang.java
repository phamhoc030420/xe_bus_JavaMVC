package ptithcm.entity;
import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
@Table(name="khachhang")
public class Khachhang  {
	@Id
	@GeneratedValue
	@Column(name = "id") 
	private int id; 
	@Column(name = "ho")
	private String ho;
	
	@Column(name = "ten")
	private String ten;
	@Column(name = "diachi")
	private String diachi;
	@Column(name = "sdt")
	private String sdt;
	@OneToMany(mappedBy = "khachhang", cascade = CascadeType.ALL)
	private Collection<Ve> ve;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHo() {
		return ho;
	}
	public void setHo(String ho) {
		this.ho = ho;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public Collection<Ve> getVe() {
		return ve;
	}
	public void setVe(Collection<Ve> ve) {
		this.ve = ve;
	}
	public Khachhang() {
		super();
	}
	public Khachhang(int id, String ho, String ten, String diachi, String sdt, Collection<Ve> ve) {
		super();
		this.id = id;
		this.ho = ho;
		this.ten = ten;
		this.diachi = diachi;
		this.sdt = sdt;
		this.ve = ve;
	}
}
