package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import Model.Enquiry;

@WebServlet("/regi")
public class regi extends HttpServlet {
	protected void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=ISO-8859-1");
		HttpSession session = request.getSession();
		Enquiry enq = new Enquiry(session);
		try {
			// Signup
			if (request.getParameter("signup") != null) {
				String name = request.getParameter("user");
				String email = request.getParameter("email");
				String pass = request.getParameter("password");
				String cpass = request.getParameter("cpassword");
				if (pass.equals(cpass)) {
					String status = enq.signup(name, email, pass);
					if (status.equals("existed")) {
						request.setAttribute("status", "Already exist");
						RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
						rd.forward(request, response);
					} else if (status.equals("success")) {
						request.setAttribute("status", "Signup successfull");
						RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
						rd.forward(request, response);
					}

					else if (status.equals("failure")) {
						request.setAttribute("status", "try again");
						RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
						rd.forward(request, response);
					}
				}

			}
			// Login
			else if (request.getParameter("login") != null) {
				String email = request.getParameter("email");
				String pass = request.getParameter("pass");
				String status = enq.login(email, pass, session);
				if (status.equals("admin success")) {
					RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
					rd.forward(request, response);
				} else if (status.equals("success")) {
					request.setAttribute("status", "Login ");
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
				} else if (status.equals("failure")) {
					request.setAttribute("status", "Login failed");
					RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
					rd.forward(request, response);
				}
			}
			// logout
			else if (request.getParameter("logout") != null) {
				session.invalidate();
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
			// Client delete
			else if (request.getParameter("Clientdelete") != null) {
				int userid = Integer.parseInt(request.getParameter("userid"));
				String status = enq.deleteUser(userid);
				if (status.equals("success")) {
					request.setAttribute("status", "Successfully deleted");
					RequestDispatcher rd = request.getRequestDispatcher("Client.jsp");
					rd.forward(request, response);

				} else if (status.equals("failure")) {
					request.setAttribute("status", "failed to delete");
					RequestDispatcher rd = request.getRequestDispatcher("Client.jsp");
					rd.forward(request, response);

				}
			}
			// Contact
			else if (request.getParameter("enq") != null) {
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				String event_type = request.getParameter("event_type");
				String message = request.getParameter("msg");
				String status = enq.Contact(name, email, phone, event_type, message);
				if (status.equals("Already Existed")) {
					request.setAttribute("status", "Contact request Existed");
					RequestDispatcher rd = request.getRequestDispatcher("Contact.jsp");
					rd.forward(request, response);
				} else if (status.equals("success")) {
					request.setAttribute("status", "Contact request sent");
					RequestDispatcher rd = request.getRequestDispatcher("Contact.jsp");
					rd.forward(request, response);
				} else if (status.equals("failure")) {
					request.setAttribute("status", "Contact request failure");
					RequestDispatcher rd = request.getRequestDispatcher("Contact.jsp");
					rd.forward(request, response);
				}
			}

			// Admin addEvent
			else if (request.getParameter("addevent") != null) {
				String eimage = request.getParameter("eimage");
				String ename = request.getParameter("ename");
				String ecost = request.getParameter("ecost");
				String edetails = request.getParameter("edetails");
				String ecategory = request.getParameter("ecategory");
				String status = enq.addEvent(eimage, ename, ecost, edetails, ecategory);
				if (status.equals("success")) {
					request.setAttribute("status", "Event Added Successfully");
					RequestDispatcher rd = request.getRequestDispatcher("AddDeleteEvent.jsp");
					rd.forward(request, response);
				} else if (status.equals("failure")) {
					request.setAttribute("status", "fail to add Event");
					RequestDispatcher rd = request.getRequestDispatcher("AddDeleteEvent.jsp");
					rd.forward(request, response);
				}
			}
			// Admin delete event
			else if (request.getParameter("delevent") != null) {
				String decategory = request.getParameter("decategory");
				String status = enq.deleteEvent(decategory);
				if (status.equals("success")) {
					request.setAttribute("status", "Event deleted Successfully");
					RequestDispatcher rd = request.getRequestDispatcher("AddDeleteEvent.jsp");
					rd.forward(request, response);
				} else if (status.equals("failure")) {
					request.setAttribute("status", "fail to delete Event ");
					RequestDispatcher rd = request.getRequestDispatcher("AddDeleteEvent.jsp");
					rd.forward(request, response);
				}

			}

			// Book Event
			else if (request.getParameter("bookevent") != null) {
				String status = enq.bookevent(request);
				if (status.equals("existed")) {
					request.setAttribute("status", "Event alredy booked");
					RequestDispatcher rd = request.getRequestDispatcher("BookEvent.jsp");
					rd.forward(request, response);
				} else if (status.equals("success")) {
					request.setAttribute("status", "Event booked successfully");
					RequestDispatcher rd = request.getRequestDispatcher("BookEvent.jsp");
					rd.forward(request, response);
				} else if (status.equals("failure")) {
					request.setAttribute("status", "Fail to book event");
					RequestDispatcher rd = request.getRequestDispatcher("BookEvent.jsp");
					rd.forward(request, response);
				}
			}

			// Review Submit
			else if (request.getParameter("reviewsubmit") != null) {
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String rating = request.getParameter("rating");
				String feedback = request.getParameter("feedback");
				String status = enq.review(name, email, rating, feedback);
				if (status.equals("success")) {
					request.setAttribute("status", "review submitted");
					RequestDispatcher rd = request.getRequestDispatcher("review.jsp");
					rd.forward(request, response);
				} else if (status.equals("failure")) {
					request.setAttribute("status", "fail to submit review");
					RequestDispatcher rd = request.getRequestDispatcher("review.jsp");
					rd.forward(request, response);
				}
			}
			// Admin Accept Event
			else if (request.getParameter("Adminacceptevent") != null) {
				int eid = Integer.parseInt(request.getParameter("event_id"));
				String status = enq.AcceptEvent(eid);
				if (status.equals("success")) {
					RequestDispatcher rd = request.getRequestDispatcher("BookedAdmin.jsp");
					rd.forward(request, response);
				} else if (status.equals("failure")) {
					RequestDispatcher rd = request.getRequestDispatcher("BookedAdmin.jsp");
					rd.forward(request, response);
				}
			}
           //Admin Cancel Event
			else if (request.getParameter("Admincancelevent") != null) {
				int eid = Integer.parseInt(request.getParameter("event_id"));
				String status = enq.CancelEvent(eid);
				if (status.equals("success")) {
					RequestDispatcher rd = request.getRequestDispatcher("BookedAdmin.jsp");
					rd.forward(request, response);
				} else if (status.equals("failure")) {
					RequestDispatcher rd = request.getRequestDispatcher("BookedAdmin.jsp");
					rd.forward(request, response);
				}
			}
			//Client Cancel event
			else if (request.getParameter("cancelevent") != null) {
				int eid = Integer.parseInt(request.getParameter("event_id"));
				String status = enq.CancelEvent(eid);
				if (status.equals("success")) {
					RequestDispatcher rd = request.getRequestDispatcher("Status.jsp");
					rd.forward(request, response);
				} else if (status.equals("failure")) {
					RequestDispatcher rd = request.getRequestDispatcher("Status.jsp");
					rd.forward(request, response);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		process(request, response);
	}

}
