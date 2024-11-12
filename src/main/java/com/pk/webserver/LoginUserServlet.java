package com.pk.webserver;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoginUserServlet")
public class LoginUserServlet extends HttpServlet {
	protected final String url = "jdbc:postgresql://localhost:5432/login_project";
	protected final String dbUsername = "postgres";
	protected final String dbPassword = "ADMINPK123";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User();
		boolean isValid = validateUser(username, password, user);
		if (isValid) {
			request.setAttribute("username", username);
			request.setAttribute("name", user.getName());
			request.setAttribute("age", user.getAge());

			try {
				request.getRequestDispatcher("display.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		} else {
			response.sendRedirect("error.jsp");
		}

	}

	boolean validateUser(String username, String password, User user) {
		String validateQuery = "select * from users where username = ? and password = ?";

		try {
			Class.forName("org.postgresql.Driver");
		} catch (Exception e) {
			// TODO: handle exception
		}

		try (Connection connection = DriverManager.getConnection(url, dbUsername, dbPassword);
				PreparedStatement preparedStatement = connection.prepareStatement(validateQuery)) {

			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);

			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				user.setName(resultSet.getString("name"));
				user.setAge(resultSet.getString("age"));
				user.setUsername(username);
				return true;
			}
			else {
				return false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

}
