package com.ecopic.control.frontend.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecopic.service.OrderServices;
import com.ecopic.service.PaymentServices;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;

@WebServlet("/execute_payment")
public class ExecutePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ExecutePaymentServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PaymentServices paymentServices = new PaymentServices(request, response);
		try {
			Payment payment = paymentServices.executePayment();
			
			OrderServices orderServices = new OrderServices(request, response);
			Integer orderId = orderServices.placeOrderPaypal(payment);
			
			String reviewPage ="thanks.jsp";
			request.getRequestDispatcher(reviewPage).forward(request, response);
			
		} catch (PayPalRESTException e) {
			e.printStackTrace();
			throw new ServletException("Error in executing payment.");
		}
	}

}
