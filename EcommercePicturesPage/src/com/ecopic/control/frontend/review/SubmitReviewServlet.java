package com.ecopic.control.frontend.review;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecopic.service.ReviewServices;

@WebServlet("/submit_review")
public class SubmitReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SubmitReviewServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		ReviewServices reviewServices = new ReviewServices(request, response);
		reviewServices.submitReview();
	}

}
