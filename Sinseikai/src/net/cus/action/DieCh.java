package net.cus.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.action.Action;
import net.action.ActionForward;
import net.cus.db.DieBean;
import net.cus.db.DieDAO;

public class DieCh implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		DieDAO dieDAO= new DieDAO();
		DieBean dieBean= new DieBean();
		ActionForward forward = new ActionForward();
		boolean result = false;
		List boardlist=new ArrayList();
		try {
			dieBean.setEmail(session.getAttribute("Email")+"");
			boardlist = dieDAO.getList(dieBean);
			dieDAO.close();
			
			request.setAttribute("boardlist", boardlist);
			if (boardlist==null) {
				System.out.println("보드가 없네");
				return null;
			}
			forward.setRedirect(false);
			forward.setPath("./member/DieCh.jsp");
			return forward;
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

}
