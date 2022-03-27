package ptithcm.entity;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="xe")

public class Xe {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int  id;
	@Column(name = "soghe")
	private int soghe;
	@ManyToOne
	@JoinColumn(name = "maloai")
	private Loai loai;
	@Column(name = "trangthai")
	private Boolean trangthai;
	@OneToMany(mappedBy = "xe", cascade = CascadeType.ALL)
	private Collection<Chuyen> chuyen;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSoghe() {
		return soghe;
	}
	public void setSoghe(int soghe) {
		this.soghe = soghe;
	}
	public Loai getLoai() {
		return loai;
	}
	public void setLoai(Loai loai) {
		this.loai = loai;
	}
	public Boolean getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(Boolean trangthai) {
		this.trangthai = trangthai;
	}
	public Collection<Chuyen> getChuyen() {
		return chuyen;
	}
	public void setChuyen(Collection<Chuyen> chuyen) {
		this.chuyen = chuyen;
	}
	public Xe(int id, int soghe, Loai loai, Boolean trangthai, Collection<Chuyen> chuyen) {
		super();
		this.id = id;
		this.soghe = soghe;
		this.loai = loai;
		this.trangthai = trangthai;
		this.chuyen = chuyen;
	}
	public Xe() {
		super();
	}
	
	
	

}
