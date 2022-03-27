package ptithcm.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.*;  
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ptithcm.entity.*;

@Transactional
@Controller

public class WelcomeController {
	@Autowired
	SessionFactory factory;

	/*
	 * @RequestMapping("admin") public String hello() { return "admin/admin"; }
	 */
	@RequestMapping(value = "login" ,method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.put("tk", new taikhoan());
		return "login";
	}
	@RequestMapping(value = "login" ,method = RequestMethod.POST)
	public String login1(ModelMap model, @ModelAttribute(value = "tk") taikhoan tk, HttpSession session) {
		if (tk.getUsername().equals("hoc") && tk.getPass().equals("030420")) {
			session.setAttribute("username", tk.getUsername());
			return "check";
		} else {
			model.put("message", "Sai tài khoản hoặc mật khẩu!");
			return "login";
		}

	}
	@RequestMapping("test")
	public String bootrap(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Chuyen";
		Query query = session.createQuery(hql);
		List<Chuyen> listc = query.list();
		model.addAttribute("chuyen", listc);
		return "testBootrap";
	}
	
	@RequestMapping(value = "test1", params = "btnAdd")
	public String addKhachhang1(ModelMap model, @ModelAttribute("khachhang") Khachhang khachhang , @ModelAttribute("ve") Ve ve) {

		Integer temp = this.insertKhachhang(khachhang);
		Integer temp1 = this.insertVe(ve);
		if (temp != 0 && temp1 !=0) {

			model.addAttribute("message", "Thêm thành công");
		} else {
			model.addAttribute("message", "Thêm thất bại!");

		}
		model.addAttribute("test1", this.getKhachhang());
		model.addAttribute("test2",this.getVe());				
		return "test";
	}

	@RequestMapping(value = "test1", method = RequestMethod.GET)
	public String get1(ModelMap model, @ModelAttribute("khachhang") Khachhang khachhang, @ModelAttribute("ve") Ve ve) {
		model.addAttribute("btnStatus", "btnAdd");
		model.addAttribute("test1", this.getKhachhang());
		model.addAttribute("test2",this.getVe());	
		return "test";
	}
	@RequestMapping(value = "test1", method = RequestMethod.POST)
	public String Post1(ModelMap model) {		
		return "test";
	}	
	public List<Khachhang> getKhachhang() {	
		Session session = factory.getCurrentSession();
		String hql = "FROM Khachhang";
		Query query = session.createQuery(hql);
		List<Khachhang> list = query.list();
		return list;
	}
	public Khachhang getKhachhang(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Khachhang where id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		Khachhang list = (Khachhang) query.list().get(0);
		return list;
	}
	public Integer insertKhachhang(Khachhang khachhang) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(khachhang);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}
	@RequestMapping("test3")
	public String bootrap3() {
		return "header";
	}
	@RequestMapping(value = "ves", params = "btnAdd")
	public String addVe(ModelMap model, @ModelAttribute("ve") Ve ve) {

		Integer temp = this.insertVe(ve);
		if (temp != 0) {
			 model.addAttribute("message", "Thêm thành công"); 
		} else {
			model.addAttribute("message", "Thêm thất bại!");	
		}
		model.addAttribute("ves", this.getVe());
		return "tra_cuu";
	}
	@RequestMapping(value = "ves", params = "btnEdit")
	public String edit_Ve(ModelMap model, @ModelAttribute("ve") Ve ve) {

		Integer temp = this.updateVe(ve);
		if (temp != 0) {
			model.addAttribute("message", "Update thành công");

		} else {
			model.addAttribute("message", "Update thất bại");
		}
		model.addAttribute("ves", this.getVe());
		return "tra_cuu";
	}

	
	@RequestMapping(value = "/ves/{id}.htm", params = "linkEdit")
	public String editVe(ModelMap model, @ModelAttribute("ve") Ve ve, @PathVariable("id") int id) {
		/* model.addAttribute("btnStatus", "btnEdit"); */
		model.addAttribute("ves", this.getVe(id));
		model.addAttribute("ves", this.getVe());
		return "tra_cuu";
	}
	

	@RequestMapping(value = "/ves/{id}.htm", params = "linkDelete")
	public String deleteVe(ModelMap model, @ModelAttribute("ve") Ve ve, @PathVariable("id") int id) {

		Integer temp = this.deleteVe(this.getVe(id));
		if (temp != 0) {
			model.addAttribute("message", "Delete thành công");
		} else {
			model.addAttribute("message", "Delete thất bại!");
		}
		model.addAttribute("ves", this.getVe());
		return "tra_cuu";
	}
	

	@RequestMapping(value = "ves", method = RequestMethod.GET)
	public String indexGet(ModelMap model, @ModelAttribute("ve") Ve ve) {
		model.addAttribute("btnStatus", "btnAdd");
		model.addAttribute("ves", this.getVe());
		return "tra_cuu";
	}
	@RequestMapping(value = "ves", method = RequestMethod.POST)
	public String indexPost(ModelMap model) {
		return "tra_cuu";
	}
	
	/*
	 * @RequestMapping(value = "ves") public String search_Ve(ModelMap
	 * model, @ModelAttribute("ve") Ve ve,HttpSession session) { Integer id =
	 * (Integer) session.getAttribute("id"); model.addAttribute("ves",
	 * this.getVe()); return "tra_cuu"; }
	 */

	public List<Ve> getVe() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Ve";
		Query query = session.createQuery(hql);
		List<Ve> list = query.list();
		return list;
	}

	public Ve getVe(int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Ve where id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		Ve list = (Ve) query.list().get(0);

		return list;
	}

	public Integer insertVe(Ve ve) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.save(ve);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}

	public Integer updateVe(Ve ve) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.update(ve);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			return 0;
		} finally {
			session.close();
		}
		return 1;
	}

	public Integer deleteVe(Ve ve) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.delete(ve);
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
