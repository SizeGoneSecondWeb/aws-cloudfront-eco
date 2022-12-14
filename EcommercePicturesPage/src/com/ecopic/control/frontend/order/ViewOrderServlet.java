package com.ecopic.control.frontend.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecopic.service.OrderServices;

@WebServlet("/view_orders")
public class ViewOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewOrderServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		OrderServices orderServices = new OrderServices(request, response);
		orderServices.listOrderByCustomer();
	}

}
