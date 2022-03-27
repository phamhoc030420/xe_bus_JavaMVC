package ptithcm.admin;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.*;

@Transactional
@Controller

public class adminchuyenxe {

	@Autowired

	SessionFactory factory;

	@RequestMapping(value = "achuyen", params = "btnAdd")
	public String addVe(ModelMap model, @ModelAttribute("chuyen") Chuyen chuyen,
			@RequestParam("ngay") @DateTimeFormat(pattern = "YYYY-MM-DD") Date date) {
		System.out.println(date);
	
		Integer temp = this.insertChuyen(chuyen);
		if (temp != 0) {
			model.addAttribute("message", "Thêm thành công");
		}
		model.addAttribute("achuyen", this.getChuyen());

		return "admin/chuyenxe";
	}

	@RequestMapping(value = "achuyen", params = "btnEdit")
	public String edit_Ve(ModelMap model, @ModelAttribute("chuyen") Chuyen chuyen) {

		Integer temp = this.updateChuyen(chuyen);
		if (temp != 0) {
			model.addAttribute("message", "Update thành công");

		} else {
			model.addAttribute("message", "Update thất bại");
		}

		model.addAttribute("achuyen", this.getChuyen());

		return "admin/chuyenxe";
	}

	@RequestMapping(value = "/achuyen/{id}-{tuyen.id}-{xe.id}.htm", params = "linkEdit")
	public String editVe(ModelMap model, @ModelAttribute("chuyen") Chuyen chuyen, @PathVariable("id") int id) {

		model.addAttribute("btnStatus", "btnEdit");
		model.addAttribute("achuyen", this.getChuyen(id));
		model.addAttribute("achuyen", this.getChuyen());

		return "admin/chuyenxe";
	}

	@RequestMapping(value = "/achuyen/{id}.htm", params = "linkDelete")
	public String deleteVe(ModelMap model, @ModelAttribute("chuyen") Chuyen chuyen, @PathVariable("id") int id) {

		Session session = factory.getCurrentSession();
		Serializable c = new Integer(id);
		Object persistentInstance = session.load(Chuyen.class, c);
		if (persistentInstance != null) {
			session.delete(persistentInstance);
		}

		model.addAttribute("achuyen", this.getChuyen());

		return "admin/chuyenxe";
	}

	@RequestMapping(value = "achuyen", method = RequestMethod.GET)
	public String indexGet(ModelMap model, @ModelAttribute("chuyen") Chuyen chuyen) {
		model.addAttribute("btnStatus", "btnAdd");
		model.addAttribute("achuyen", this.getChuyen());
		return "admin/chuyenxe";
	}

	@RequestMapping(value = "achuyen", method = RequestMethod.POST)
	public String indexPost(ModelMap model) {

		return "admin/chuyenxe";
	}

	public List<Chuyen> getChuyen() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Chuyen";
		Query query = session.createQuery(hql);
		List<Chuyen> list = query.list();
		return list;
	}

	public Chuyen getChuyen(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Chuyen where id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		Chuyen list = (Chuyen) query.list().get(0);

		return list;
	}

	public Integer insertChuyen(Chuyen chuyen) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(chuyen);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}

	public Integer updateChuyen(Chuyen chuyen) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.update(chuyen);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}

	public Integer deleteChuyen(Chuyen chuyen) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.delete(chuyen);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;

	}

}