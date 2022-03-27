package ptithcm.entity;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tuyen")
public class Tuyen {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	@Column(name = "tentuyen")
	private String tentuyen;
	@Column(name = "gio")
	private String gio; 
	@OneToMany(mappedBy = "tuyen", cascade = CascadeType.ALL)
	private Collection<Chuyen> chuyen;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGio() {
		return gio;
	}
	public void setGio(String gio) {
		this.gio = gio;
	}
	public Collection<Chuyen> getChuyen() {
		return chuyen;
	}
	public void setChuyen(Collection<Chuyen> chuyen) {
		this.chuyen = chuyen;
	}
	public String getTentuyen() {
		return tentuyen;
	}
	public void setTentuyen(String tentuyen) {
		this.tentuyen = tentuyen;
	}
	public Tuyen(int id, String tentuyen, String gio, Collection<Chuyen> chuyen) {
		super();
		this.id = id;
		this.tentuyen = tentuyen;
		this.gio = gio;
		this.chuyen = chuyen;
	}
	public Tuyen() {
		super();
	}
}
