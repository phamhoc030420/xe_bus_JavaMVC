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

public class adminloai {

  @Autowired

  SessionFactory factory;

  @RequestMapping(value = "aloai", params = "btnAdd")
  public String addLoai(ModelMap model, @ModelAttribute("loai") Loai loai) {

    Integer temp = this.insertLoai(loai);
    if (temp != 0) {
      model.addAttribute("message", "Thêm thành công!");
    } else {
      model.addAttribute("message", "Thêm thất bại!");
    }
    model.addAttribute("aloai", this.getLoai());

    return "admin/loai";
  }

  @RequestMapping(value = "aloai", params = "btnEdit")
  public String edit_Loai(ModelMap model, @ModelAttribute("loai") Loai loai) {

    Integer temp = this.updateLoai(loai);
    if (temp != 0) {
      model.addAttribute("message", "Update thành công");
    } else {
      model.addAttribute("message", "Update thất bại");
    }
    model.addAttribute("aloai", this.getLoai());

    return "admin/loai";
  }

  @RequestMapping(value = "/aloai/{id}-{ten}-{gia}.htm", params = "linkEdit")
  public String editLoai(ModelMap model, @ModelAttribute("loai") Loai loai, @PathVariable("id") int id) {

    model.addAttribute("btnStatus", "btnEdit");
    model.addAttribute("aloai", this.getLoai(id));
    model.addAttribute("aloai", this.getLoai());
    return "admin/loai";
  }

  @RequestMapping(value = "/aloai/{id}.htm", params = "linkDelete")
  public String deleteLoai(ModelMap model, @ModelAttribute("loai") Loai loai, @PathVariable("id") int id) {

    Session session = factory.getCurrentSession();
    Serializable l = new Integer(id);
    Object persistentInstance = session.load(Loai.class, l);
    if (persistentInstance != null) {
      session.delete(persistentInstance);
    }
    model.addAttribute("aloai", this.getLoai());
    return "admin/loai";
  }

  @RequestMapping(value = "aloai", method = RequestMethod.GET)
  public String indexGet(ModelMap model, @ModelAttribute("loai") Loai loai) {
    model.addAttribute("btnStatus", "btnAdd");
    model.addAttribute("aloai", this.getLoai());
    return "admin/loai";
  }

  @RequestMapping(value = "aloai", method = RequestMethod.POST)
  public String indexPost(ModelMap model) {

    return "admin/loai";
  }

  public List < Loai > getLoai() {
    Session session = factory.getCurrentSession();
    String hql = "FROM Loai";
    Query query = session.createQuery(hql);
    List < Loai > list = query.list();
    return list;
  }

  public Loai getLoai(int id) {
    Session session = factory.getCurrentSession();
    String hql = "FROM Loai where id = :id";
    Query query = session.createQuery(hql);
    query.setParameter("id", id);
    Loai list = (Loai) query.list().get(0);

    return list;
  }

  public Integer insertLoai(Loai loai) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.save(loai);
      t.commit();
    } catch (Exception e) {
      t.rollback();
      return 0;
    } finally {
      session.close();
    }
    return 1;
  }

  public Integer updateLoai(Loai loai) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.update(loai);
      t.commit();
    } catch (Exception e) {
      t.rollback();
      return 0;
    } finally {
      session.close();
    }
    return 1;
  }

  public Integer deleteLoai(Loai loai) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.delete(loai);
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