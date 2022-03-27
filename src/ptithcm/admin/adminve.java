package ptithcm.admin;

import java.util.List;

/*import javax.servlet.http.HttpSession;*/

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
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
public class adminve {

  @Autowired

  SessionFactory factory;
  @RequestMapping(value = "ave", params = "btnAdd")
  public String addVe(ModelMap model, @ModelAttribute("ve") Ve ve) {
	 
	
    Integer temp = this.insertVe(ve);
    if (temp != 0) {
      model.addAttribute("message", "Thêm thành công!");

    } else {
      model.addAttribute("message", "Thêm thất bại!");
    }
    model.addAttribute("ave", this.getVe());
    return "admin/ve";
  }

  @RequestMapping(value = "ave", params = "btnEdit")
  public String edit_Ve(ModelMap model, @ModelAttribute("ve") Ve ve) {
    Integer temp = this.updateVe(ve);
    if (temp != 0) {
      model.addAttribute("message", "Update thành công");
    } else {
      model.addAttribute("message", "Update thất bại");
    }
    model.addAttribute("ave", this.getVe());

    return "admin/ve";
  }

  @RequestMapping(value = "/ave/{id}-{khachhang.id}-{chuyen.id}-{vitri}.htm", params = "linkEdit")
  public String editVe(ModelMap model, @ModelAttribute("ve") Ve ve, @PathVariable("id") int id) {

    model.addAttribute("btnStatus", "btnEdit");
    model.addAttribute("ave", this.getVe(id));
    model.addAttribute("ave", this.getVe());
    return "admin/ve";
  }

  @RequestMapping(value = "/ave/{id}.htm", params = "linkDelete")
  public String deleteVe(ModelMap model, @ModelAttribute("ve") Ve ve, @PathVariable("id") int id) {

    Integer temp = this.deleteVe(this.getVe(id));
    if (temp != 0) {
      model.addAttribute("message", "Delete thành công");
    } else {
      model.addAttribute("message", "Delete thất bại!");
    }
    model.addAttribute("ave", this.getVe());

    return "admin/ve";
  }

  @RequestMapping(value = "ave", method = RequestMethod.GET)
  public String indexGet(ModelMap model, @ModelAttribute("ve") Ve ve) {
		/* System.out.println("Ma khach"+ ve.getKhachhang().getId()); */
    model.addAttribute("btnStatus", "btnAdd");
    model.addAttribute("ave", this.getVe());
    return "admin/ve";
  }

  @RequestMapping(value = "ave", method = RequestMethod.POST)
  public String indexPost(ModelMap model) {

    return "admin/ve";
  }

  public List < Ve > getVe() {
    Session session = factory.getCurrentSession();
    String hql = "FROM Ve";
    Query query = session.createQuery(hql);
    List < Ve > list = query.list();
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