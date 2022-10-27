package com.ecopic.control.admin.category;

import com.ecopic.control.BaseServlet;
import com.ecopic.service.CategoryServices;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/edit_category")
public class EditCategoryServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

    public EditCategoryServlet() {
    	super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		CategoryServices catServices = new CategoryServices(entityManager,request, response);
		catServices.editCategory();
	}

}
