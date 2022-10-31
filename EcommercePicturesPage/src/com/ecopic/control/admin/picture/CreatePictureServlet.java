package com.ecopic.control.admin.picture;

import com.ecopic.control.BaseServlet;
import com.ecopic.service.PictureService;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/create_picture")
@MultipartConfig(
		fileSizeThreshold = 1024*10, //10Kb
		maxFileSize = 1024 * 1024 *16, //16MB
		maxRequestSize = 1024 * 1024 *16	//16MB
)
public class CreatePictureServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

    public CreatePictureServlet() {
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		PictureService pictureService = new PictureService(entityManager, request, response);
		try {
			pictureService.createPictures();
		} catch (ParseException | ServletException e) {
			e.printStackTrace();
		}
	}
}
