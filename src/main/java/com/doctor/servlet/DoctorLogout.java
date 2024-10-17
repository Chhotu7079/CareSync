package com.doctor.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/doctorLogout")
public class DoctorLogout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		 * System.out.println("doctor log out me gaya"); HttpSession session =
		 * req.getSession(); System.out.println("doctor remove me gaya");
		 * 
		 * session.removeAttribute("doctObj"); ;
		 * 
		 * System.out.println("doctor remove hua gaya");
		 * 
		 * session.setAttribute("succMsg", "Doctor Logout Sucessfully");
		 * System.out.println("doctor log ho gya gaya");
		 * 
		 * System.out.println("doctor login me gaya");
		 * 
		 * resp.sendRedirect("doctor_login.jsp");
		 * System.out.println("doctor login me hai ");
		 */

		HttpSession session = req.getSession();

		session.removeAttribute("doctObj");
		session.setAttribute("succMsg", "Doctor Logout Sucessfully");
		resp.sendRedirect("doctor_login.jsp");

	}

}
