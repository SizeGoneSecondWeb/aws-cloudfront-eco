package com.ecopic.control.frontend;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecopic.control.BaseServlet;
import com.ecopic.dao.CategoryDAO;
import com.ecopic.entity.Category;

@WebServlet("/home")
public class HomeServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoryDAO categoryDAO = new CategoryDAO(entityManager);
		List<Category> categories = categoryDAO.listAll();
		request.setAttribute("categories", categories);
		String homepage ="index.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(homepage);
		dispatcher.forward(request, response);
	}
}
