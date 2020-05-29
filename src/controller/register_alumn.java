package controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Alumno;
import util.JPAUtil;

/**
 * Servlet implementation class register_alumn
 */
@WebServlet("/register_alumn")
public class register_alumn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register_alumn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("register_alumn.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codigo = request.getParameter("codigo");
		String nombre = request.getParameter("nombre");
		String email = request.getParameter("email");
		String clave = request.getParameter("password");
		
		Alumno objAlumno = new Alumno();
		objAlumno.setClave(clave);
		objAlumno.setNombre(nombre);
		objAlumno.setEmail(email);
		objAlumno.setCodigo(codigo);
		
		EntityManager entity = JPAUtil.getEntityManagerFactory().createEntityManager();
		entity.getTransaction().begin();
		entity.persist(objAlumno);
		entity.getTransaction().commit();
		System.out.println("Producto registrado.."+objAlumno.toString());
		request.getRequestDispatcher("select_registro.jsp").forward(request, response);
		
		
		
	}

}
