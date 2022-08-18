<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Animal"%>
<%@ page import="dao.AnimalRepository"%>
<%
	String id = request.getParameter("id");

	if (id == null || id.trim().equals("")) {
		response.sendRedirect("products_animal.jsp");
		return;
	}

	AnimalRepository dao = AnimalRepository.getInstance();

	Animal product = dao.getProductById(id);
	if (product == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}

	ArrayList<Animal> goodsList = dao.getAllProducts();
	Animal goods = new Animal();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Animal> animallist = (ArrayList<Animal>) session.getAttribute("animallist");
	if (animallist == null) { 
		animallist = new ArrayList<Animal>();
		session.setAttribute("animallist", animallist);
	}

	int cnt = 0;
	Animal goodsQnt = new Animal();
	for (int i = 0; i < animallist.size(); i++) {
		goodsQnt = animallist.get(i);
		if (goodsQnt.getId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		animallist.add(goods);
	}

	response.sendRedirect("product_animal.jsp?id=" + id);
%>