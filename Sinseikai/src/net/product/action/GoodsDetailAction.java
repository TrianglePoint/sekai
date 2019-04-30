package net.product.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.product.db.ProductBean;
import net.product.db.ProductDAO;

public class GoodsDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ProductDAO dao = new ProductDAO();
		ProductBean bean = new ProductBean();
		bean.setProductNumber(Integer.parseInt(request.getParameter("productNumber")));
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); 
		
		bean = dao.getProduct(bean);
		dao.close();
		if(bean != null) {
			request.setAttribute("productBean", bean);
			
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
//			forward.setPath(����� ��δ�); // ���� ����.
			return forward;
		}
		
		return null;
	}

}
