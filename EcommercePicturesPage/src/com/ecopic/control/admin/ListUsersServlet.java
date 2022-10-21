package com.ecopic.control.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecopic.entity.Users;
import com.ecopic.service.UserServices;

@WebServlet("/admin/list_users")
public class ListUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ListUsersServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserServices userServices = new UserServices();
		
		List<Users> listUsers = userServices.listUser();
		request.setAttribute("listUsers", listUsers);
		
		String listPage = "usertables.jsp";
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(listPage);
		
		requestDispatcher.forward(request,response);
	}
	
	public static void main(String[] args) {
		UserServices userServices = new UserServices();
		List<Users> listUsers = userServices.listUser();
		for (Users user : listUsers) {
			System.out.println(user.getFullName());
		}
	}
}
