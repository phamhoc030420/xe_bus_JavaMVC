package ptithcm.admin;

import java.io.Serializable;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.*;
@Transactional
@Controller
public class admintuyenxe {

  @Autowired

  SessionFactory factory;
  @RequestMapping(value = "atuyen", params = "btnAdd")
  public String addTuyen(ModelMap model, @ModelAttribute("tuyen") Tuyen tuyen) {
    Integer temp = this.insertTuyen(tuyen);
    if (temp != 0) {
      model.addAttribute("message", "Thêm thành công!");

    } else {
      model.addAttribute("message", "Thêm thất bại!");
    }
    model.addAttribute("atuyen", this.getTuyen());
    return "admin/tuyenxe";
  }

  @RequestMapping(value = "atuyen", params = "btnEdit")
  public String edit_Tuyen(ModelMap model, @ModelAttribute("tuyen") Tuyen tuyen) {
    Integer temp = this.updateTuyen(tuyen);
    if (temp != 0) {
      model.addAttribute("message", "Update thành công");
    } else {
      model.addAttribute("message", "Update thất bại");
    }
    model.addAttribute("atuyen", this.getTuyen());

    return "admin/tuyenxe";
  }

  @RequestMapping(value = "/atuyen/{id}-{tentuyen}-{gio}.htm", params = "linkEdit")
  public String editTuyen(ModelMap model, @ModelAttribute("tuyen") Tuyen tuyen, @PathVariable("id") int id) {

    model.addAttribute("btnStatus", "btnEdit");
    model.addAttribute("atuyen", this.getTuyen(id));
    model.addAttribute("atuyen", this.getTuyen());
    return "admin/tuyenxe";
  }

  @RequestMapping(value = "/atuyen/{id}.htm", params = "linkDelete")
  public String deleteTuyen(ModelMap model, @ModelAttribute("tuyen") Tuyen tuyen, @PathVariable("id") int id) {

    Session session = factory.getCurrentSession();
    Serializable t = new Integer(id);
    Object persistentInstance = session.load(Tuyen.class, t);
    if (persistentInstance != null) {
      session.delete(persistentInstance);
    }
    model.addAttribute("atuyen", this.getTuyen());

    return "admin/tuyenxe";
  }

  @RequestMapping(value = "atuyen", method = RequestMethod.GET)
  public String indexGet(ModelMap model, @ModelAttribute("tuyen") Tuyen tuyen) {
    model.addAttribute("btnStatus", "btnAdd");
    model.addAttribute("atuyen", this.getTuyen());
    return "admin/tuyenxe";
  }

  @RequestMapping(value = "atuyen", method = RequestMethod.POST)
  public String indexPost(ModelMap model) {

    return "admin/tuyenxe";
  }

  public List < Tuyen > getTuyen() {
    Session session = factory.getCurrentSession();
    String hql = "FROM Tuyen";
    Query query = session.createQuery(hql);
    List < Tuyen > list = query.list();
    return list;
  }

  public Tuyen getTuyen(int id) {
    Session session = factory.getCurrentSession();
    String hql = "FROM Tuyen where id = :id";
    Query query = session.createQuery(hql);
    query.setParameter("id", id);
    Tuyen list = (Tuyen) query.list().get(0);

    return list;
  }

  public Integer insertTuyen(Tuyen tuyen) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.save(tuyen);
      t.commit();
    } catch (Exception e) {
      t.rollback();
      return 0;
    } finally {
      session.close();
    }
    return 1;
  }

  public Integer updateTuyen(Tuyen tuyen) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.update(tuyen);
      t.commit();
    } catch (Exception e) {
      t.rollback();
      return 0;
    } finally {
      session.close();
    }
    return 1;
  }

  public Integer deleteTuyen(Tuyen tuyen) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.delete(tuyen);
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