package com.ecopic.control.admin.picture;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecopic.control.BaseServlet;
import com.ecopic.service.PictureService;

@WebServlet("/admin/list_pictures")
public class ListPictureServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		PictureService pictureService = new PictureService(entityManager, request, response);
		pictureService.listPictures();
	}
}
