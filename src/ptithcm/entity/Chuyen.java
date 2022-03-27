package ptithcm.entity;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;

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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "chuyen")
public class Chuyen {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	@Column(name = "ngay")
	@Temporal(TemporalType.DATE)

	@DateTimeFormat(pattern = "DD/MM/YYYY")

	private Date ngay;
	/* private String ngay; */
	@ManyToOne
	@JoinColumn(name = "matuyen")
	private Tuyen tuyen;
	@ManyToOne
	@JoinColumn(name = "maxe")
	private Xe xe;
	@OneToMany(mappedBy = "chuyen", cascade = CascadeType.ALL)
	private Collection<Ve> ve;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Collection<Ve> getVe() {
		return ve;
	}

	public void setVe(Collection<Ve> ve) {
		this.ve = ve;
	}

	public Tuyen getTuyen() {
		return tuyen;
	}

	public Date getNgay() {

		return ngay;
	}

	/*
	 * public void setNgay(String ngayy) {
	 * 
	 * 
	 * try {
	 * 
	 * DateFormat df = new SimpleDateFormat("yyyy-mm-dd"); Date date =
	 * df.parse(ngayy);
	 * 
	 * 
	 * Date date = new SimpleDateFormat("YYYY-MM-DD").parse(ngayy); this.ngay=date;
	 * } catch(Exception e) { System.out.println("Lỗi "+e); }
	 * 
	 * }
	 */
	public void setNgay(Date ngay) {
		this.ngay = ngay;
	}
	

	/*
	 * public String getNgay() { return ngay; } public void setNgay(String ngay) {
	 * this.ngay = ngay; }
	 */
	public void setTuyen(Tuyen tuyen) {
		this.tuyen = tuyen;
	}

	public Xe getXe() {
		return xe;
	}

	public void setXe(Xe xe) {
		this.xe = xe;
	}

	public Chuyen(int id, Date ngay, Tuyen tuyen, Xe xe, Collection<Ve> ve) {
		super();
		this.id = id;
		this.ngay = ngay;
		this.tuyen = tuyen;
		this.xe = xe;
		this.ve = ve;
	}

	public Chuyen() {
		super();
	}

}
