package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PersonDAO;
import dto.PersonDTO;

@WebServlet("*.per")
public class PersonController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String requestURI = request.getRequestURI();
		String ctxPath = request.getContextPath();
		
		String url = requestURI.substring(ctxPath.length()+1);
		System.out.println("요청한 URL : " + url);
		
		try {
			PersonDAO dao = PersonDAO.getInstance();
			
			if(url.contentEquals("inputform.per")) {
				
				response.sendRedirect("PersonInputform.jsp");
				
			}else if(url.contentEquals("inputProc.per")) {
				
				String name = request.getParameter("name");
				String contact = request.getParameter("contact");
				
				int result = dao.insert(name, contact);
				
				request.setAttribute("result", result);
				request.getRequestDispatcher("PersonInputView.jsp").forward(request, response);
				
			}else if(url.contentEquals("output.per")) {
				
				List<PersonDTO> list = dao.selectAll();
				
				request.setAttribute("list", list);
				request.getRequestDispatcher("outputView.jsp").forward(request, response);
				
			}else if(url.contentEquals("deleteList.per")) {
				
				List<PersonDTO> list = dao.selectAll();
				
				request.setAttribute("list", list);
				request.getRequestDispatcher("PersonDeleteform.jsp ").forward(request, response);
				
			}else if(url.contentEquals("deleteProc.per")) {
				
				int delid = Integer.parseInt(request.getParameter("delid"));
				int result = dao.delete(delid);
				
				request.setAttribute("result", result);
				request.getRequestDispatcher("PersonDeleteView.jsp").forward(request, response);
				
			}else if(url.contentEquals("modifyList.per")) {
				
				List<PersonDTO> list = dao.selectAll();
				
				request.setAttribute("list", list);
				request.getRequestDispatcher("modifyView.jsp").forward(request, response);
				
			}else if(url.contentEquals("modifyProc.per")) {
				
				int targetId = Integer.parseInt(request.getParameter("targetid"));
				String newName = request.getParameter("newname");
				String newContact = request.getParameter("newcontact");

				int result = dao.modify(new PersonDTO(targetId, newName, newContact));
				
				request.setAttribute("result", result);
				request.getRequestDispatcher("PersonModifyView.jsp").forward(request, response);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
