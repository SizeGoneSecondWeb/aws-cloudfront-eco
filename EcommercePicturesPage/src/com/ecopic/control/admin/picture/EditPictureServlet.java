package com.ecopic.control.admin.picture;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecopic.service.PictureService;

@WebServlet("/admin/edit_picture")
public class EditPictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditPictureServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		PictureService pictureService = new PictureService(request, response);
		pictureService.editPicture();
	}

}
