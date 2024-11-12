package com.pk.webserver;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterUserServlet")
public class RegisterUserServlet extends HttpServlet {

	protected final String url = "jdbc:postgresql://localhost:5432/login_project";
	protected final String dbUsername = "postgres";
	protected final String dbPassword = "ADMINPK123";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// creating instance of model class User.java to set the values

		User user = new User();

		user.setName(name);
		user.setAge(age);
		user.setUsername(username);
		user.setPassword(password);

		boolean isAdded = saveUserToDB(user);

		if (isAdded) {
			request.setAttribute("name", user.getName());
			request.setAttribute("age", user.getAge());
			request.setAttribute("username", user.getUsername());

			try {
				request.getRequestDispatcher("logInSuccess.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				response.sendRedirect("error.jsp");
			}
		} else {
			response.sendRedirect("error.jsp");
		}

	}

	private boolean saveUserToDB(User user) {
		// TODO Auto-generated method stub
		String insertQuery = "insert into users values (?,?,?,?)";

		try {
			Class.forName("org.postgresql.Driver");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		try (Connection connection = DriverManager.getConnection(url, dbUsername, dbPassword);
				PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {

			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getAge());
			preparedStatement.setString(3, user.getUsername());
			preparedStatement.setString(4, user.getPassword());

			int insertCount = preparedStatement.executeUpdate();

			return insertCount > 0;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
