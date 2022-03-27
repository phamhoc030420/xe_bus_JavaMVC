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
public class adminxe {

  @Autowired

  SessionFactory factory;
  @RequestMapping(value = "axe", params = "btnAdd")
  public String addXe(ModelMap model, @ModelAttribute("xe") Xe xe) {
    Integer temp = this.insertXe(xe);
    if (temp != 0) {
      model.addAttribute("message", "Thêm thành công!");
    } else {
      model.addAttribute("message", "Thêm thất bại!");
    }
    model.addAttribute("axe", this.getXe());
    return "admin/xe";
  }

  @RequestMapping(value = "axe", params = "btnEdit")
  public String edit_xe(ModelMap model, @ModelAttribute("xe") Xe xe) {
    Integer temp = this.updateXe(xe);
    if (temp != 0) {
      model.addAttribute("message", "Update thành công");
    } else {
      model.addAttribute("message", "Update thất bại");
    }
    model.addAttribute("axe", this.getXe());
    return "admin/xe";
  }

  @RequestMapping(value = "/axe/{id}-{soghe}-{loai.id}-{trangthai}.htm", params = "linkEdit")
  public String editXe(ModelMap model, @ModelAttribute("xe") Xe xe, @PathVariable("id") int id) {

    model.addAttribute("btnStatus", "btnEdit");
    model.addAttribute("axe", this.getXe(id));
    model.addAttribute("axe", this.getXe());
    return "admin/xe";
  }

  @RequestMapping(value = "/axe/{id}.htm", params = "linkDelete")
  public String deleteXe(ModelMap model, @ModelAttribute("xe") Xe xe, @PathVariable("id") int id) {
    Session session = factory.getCurrentSession();
    Serializable x = new Integer(id);
    Object persistentInstance = session.load(Xe.class, x);
    if (persistentInstance != null) {
      session.delete(persistentInstance);
    }
    model.addAttribute("axe", this.getXe());
    return "admin/xe";
  }

  @RequestMapping(value = "axe", method = RequestMethod.GET)
  public String indexGet(ModelMap model, @ModelAttribute("xe") Xe xe) {
    model.addAttribute("btnStatus", "btnAdd");
    model.addAttribute("axe", this.getXe());
    return "admin/xe";
  }

  @RequestMapping(value = "axe", method = RequestMethod.POST)
  public String indexPost(ModelMap model) {

    return "admin/xe";
  }

  public List < Xe > getXe() {
    Session session = factory.getCurrentSession();
    String hql = "FROM Xe";
    Query query = session.createQuery(hql);
    List < Xe > list = query.list();
    return list;
  }

  public Xe getXe(int id) {
    Session session = factory.getCurrentSession();
    String hql = "FROM Xe where id = :id";
    Query query = session.createQuery(hql);
    query.setParameter("id", id);
    Xe list = (Xe) query.list().get(0);

    return list;
  }

  public Integer insertXe(Xe xe) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.save(xe);
      t.commit();
    } catch (Exception e) {
      t.rollback();
      return 0;
    } finally {
      session.close();
    }
    return 1;
  }

  public Integer updateXe(Xe xe) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.update(xe);
      t.commit();
    } catch (Exception e) {
      t.rollback();
      return 0;
    } finally {
      session.close();
    }
    return 1;
  }

  public Integer deleteXe(Xe xe) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.delete(xe);
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