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

/*import com.spring.service.RouteService;*/
/*import ptithcm.Dao.SearchDao;*/
import ptithcm.entity.*;
@Transactional
@Controller

public class adminkhachhang {

  @Autowired

  SessionFactory factory;

  @RequestMapping(value = "akhachhang", params = "btnAdd")
  public String addKhachhang(ModelMap model, @ModelAttribute("khachhang") Khachhang khachhang) {

    Integer temp = this.insertKhachhang(khachhang);
    if (temp != 0) {
      model.addAttribute("message", "Thêm thành công!");

    } else {
      model.addAttribute("message", "Thêm thất bại!");
    }
    model.addAttribute("akhachhang", this.getKhachhang());
    return "admin/khachhang";
  }

  @RequestMapping(value = "akhachhang", params = "btnEdit")
  public String edit_Khachhang(ModelMap model, @ModelAttribute("khachhang") Khachhang khachhang) {

    Integer temp = this.updateKhachhang(khachhang);
    if (temp != 0) {
      model.addAttribute("message", "Update thành công");

    } else {
      model.addAttribute("message", "Update thất bại");
    }
    model.addAttribute("akhachhang", this.getKhachhang());

    return "admin/khachhang";
  }

  @RequestMapping(value = "/akhachhang/{id}-{ho}-{ten}-{diachi}-{sdt}.htm", params = "linkEdit")
  public String editKhachhang(ModelMap model, @ModelAttribute("khachhang") Khachhang khachhang, @PathVariable("id") int id) {

    model.addAttribute("btnStatus", "btnEdit");
    model.addAttribute("akhachhang", this.getKhachhang(id));
    model.addAttribute("akhachhang", this.getKhachhang());
    return "admin/khachhang";
  }
  @RequestMapping(value = "/akhachhang/{id}.htm", params = "linkDelete")
  public String deleteKhachhang(ModelMap model, @ModelAttribute("khachhang") Khachhang khachhang,
    @PathVariable("id") int id) {

    Session session = factory.getCurrentSession();
    Serializable kh = new Integer(id);
    Object persistentInstance = session.load(Khachhang.class, kh);
    if (persistentInstance != null) {
      session.delete(persistentInstance);
    }
    model.addAttribute("akhachhang", this.getKhachhang());
    return "admin/khachhang";
  }

  @RequestMapping(value = "akhachhang", method = RequestMethod.GET)
  public String indexGet(ModelMap model, @ModelAttribute("khachhang") Khachhang khachhang) {
    model.addAttribute("btnStatus", "btnAdd");
    model.addAttribute("akhachhang", this.getKhachhang());
    return "admin/khachhang";
  }

  @RequestMapping(value = "akhachhang", method = RequestMethod.POST)
  public String indexPost(ModelMap model) {

    return "admin/khachhang";
  }

  public List < Khachhang > getKhachhang() {
    Session session = factory.getCurrentSession();
    String hql = "FROM Khachhang";
    Query query = session.createQuery(hql);
    List < Khachhang > list = query.list();
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

  public Khachhang delete(int id) {
    Session session = factory.getCurrentSession();
    String hql =  "FROM Khachhang where id = :id";
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

  public Integer updateKhachhang(Khachhang khachhang) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.update(khachhang);
      t.commit();
    } catch (Exception e) {
      t.rollback();
      return 0;
    } finally {
      session.close();
    }
    return 1;
  }

  public Integer deleteKhachhang(Khachhang khachhang) {
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();

    try {
      session.delete(khachhang);
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