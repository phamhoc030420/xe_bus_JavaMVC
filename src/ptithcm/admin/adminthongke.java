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

public class adminthongke {

	@Autowired

	SessionFactory factory;

	@RequestMapping("athongke")
	public String thongke(ModelMap model) {
		
		Session session = factory.getCurrentSession();
		String hql1 = "SELECT COUNT(c) FROM Chuyen c";
		Query query1 = session.createQuery(hql1);
		/* List<Chuyen> c = query1.list(); */
		Long c = (Long) query1.uniqueResult();
		model.addAttribute("chuyen", c);

		String hql2 = "SELECT COUNT(kh) FROM Khachhang kh";
		Query query2 = session.createQuery(hql2);
		Long kh = (Long) query2.uniqueResult();
		model.addAttribute("khachhang", kh);

		String hql3 = "SELECT COUNT(t) FROM Tuyen t";
		Query query3 = session.createQuery(hql3);
		Long t = (Long) query3.uniqueResult();
		model.addAttribute("tuyen", t);

		String hql4 = "SELECT COUNT(v) FROM Ve v";
		Query query4 = session.createQuery(hql4);
		Long v = (Long) query4.uniqueResult();
		model.addAttribute("ve", v);

		String hql5 = "SELECT COUNT(x) FROM Xe x";
		Query query5 = session.createQuery(hql5);
		Long x = (Long) query5.uniqueResult();
		model.addAttribute("xe", x);

		String hql6 = "SELECT COUNT(l) FROM Loai l";
		Query query6 = session.createQuery(hql6);
		Long l = (Long) query6.uniqueResult();
		model.addAttribute("loai", l);

		return "admin/thongke";

	}

}