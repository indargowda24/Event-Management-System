package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Optional;
import java.util.stream.Stream;

import javax.naming.spi.DirStateFactory.Result;

import com.mysql.cj.Session;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class Enquiry {
	private Connection con;
	HttpSession se;

	public Enquiry(HttpSession session) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event?user=root&password=tiger");
			se = session;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// signup
	public String signup(String name, String email, String pass) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		int res = 0;
		String status = "";
		try {
			ps = con.prepareStatement("SELECT * FROM customer WHERE cemail = ?");
			ps.setString(1, email);
			rs = ps.executeQuery();
			if (rs.next()) {
				status = "existed";
			} else {
				ps = con.prepareStatement("INSERT INTO customer  VALUES (0,?, ?, ?, now())");
				ps.setString(1, name);
				ps.setString(2, email);
				ps.setString(3, pass);
				res = ps.executeUpdate();
				if (res > 0) {
					status = "success";
				} else {
					status = "failure";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return status;
	}

	// login
	public String login(String email, String pass, HttpSession session) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String status = "";
		se = session;
		String aid = "1", aemail = "indar123@gmail.com", apass = "1234", uname = "", uemail = "", uid = "";
		if (email.equals(aemail) && pass.equals(apass)) {
			uid = "1";
			uname = "Indar Gowda M K";
			uemail = "indar123@gmail.com";
			se.setAttribute("uname", uname);
			se.setAttribute("uemail", uemail);
			se.setAttribute("uid", uid);
			status = "admin success";
		} else {
			try {
				ps = con.prepareStatement("SELECT * FROM CUSTOMER WHERE CEMAIL=? and PWD=?;");
				ps.setString(1, email);
				ps.setString(2, pass);
				rs = ps.executeQuery();
				if (rs.next()) {
					uid = rs.getString("cid");
					uname = rs.getString("cname");
					uemail = rs.getString("cemail");
					se.setAttribute("uname", uname);
					se.setAttribute("uid", uid);
					se.setAttribute("uemail", uemail);
					status = "success";
				} else {
					status = "failure";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return status;
	}

	public ArrayList<User> Clients() {
		ArrayList<User> al = new ArrayList<User>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement("select * from customer;");
			rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getString("cid"));
				u.setName(rs.getString("cname"));
				u.setEmail(rs.getString("cemail"));
				u.setDate(rs.getString("date"));
				al.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;

	}

	public String deleteUser(int userid) {
		PreparedStatement ps = null;
		int res = 0;
		String status = "";
		try {
			ps = con.prepareStatement("delete from customer where cid=? ;");
			ps.setInt(1, userid);
			res = ps.executeUpdate();
			if (res > 0) {
				status = "success";
			} else {
				status = "failure";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String Contact(String name, String email, String phone, String event_type, String message) {
		PreparedStatement ps = null;
		String status = "";
		ResultSet rs = null;
		try {
			ps = con.prepareStatement("select * from enquirylist where email=? AND phno=?;");
			ps.setString(1, email);
			ps.setString(2, phone);
			rs = ps.executeQuery();
			if (rs.next()) {
				status = "Already Existed";
			} else {
				ps = con.prepareStatement("insert into enquirylist values (0,?,?,?,?,?,now());");
				ps.setString(1, name);
				ps.setString(2, email);
				ps.setString(3, phone);
				ps.setString(4, event_type);
				ps.setString(5, message);
				int result = ps.executeUpdate();
				if (result > 0) {
					status = "success";
				} else {
					status = "failure";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return status;
	}

	public ArrayList<User> ContactEnquiry() {
		ArrayList<User> al = new ArrayList<User>();

		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement("select * from enquirylist;");
			rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getString("id"));
				u.setName(rs.getString("name"));
				u.setEmail(rs.getString("email"));
				u.setDate(rs.getString("date"));
				al.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;

	}

//Admin add event
	public String addEvent(String eimage, String ename, String ecost, String edetails, String ecategory) {
		PreparedStatement ps = null;
		int result = 0;
		String status = "";
		try {
			ps = con.prepareStatement("insert into events values(0,?,?,?,?,?,now());");
			ps.setString(1, eimage);
			ps.setString(2, ename);
			ps.setString(3, ecost);
			ps.setString(4, edetails);
			ps.setString(5, ecategory);
			result = ps.executeUpdate();
			if (result > 0) {
				status = "success";

			} else {
				status = "failure";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

//delete event
	public String deleteEvent(String decategory) {
		PreparedStatement ps = null;
		String status = "";
		try {
			ps = con.prepareStatement("delete from events where event_category =?;");
			ps.setString(1, decategory);
			int result = ps.executeUpdate();
			if (result > 0) {
				status = "success";
			} else {
				status = "failure";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

	// Service
	public ArrayList<EnqList> getEnquiryList() {
		ArrayList<EnqList> al = new ArrayList<EnqList>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement("select * from enquirylist;");
			rs = ps.executeQuery();
			while (rs.next()) {
				EnqList eq = new EnqList();
				eq.setId(rs.getString("id"));
				eq.setName(rs.getString("name"));
				eq.setEmail(rs.getString("email"));
				eq.setPhno(rs.getString("phno"));
				eq.setSub(rs.getString("sub"));
				eq.setMsg(rs.getString("msg"));
				eq.setDate(rs.getString("date"));
				al.add(eq);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;

	}

	// EventCategory
	public ArrayList<Events> getEventCategory() {
		ArrayList<Events> al = new ArrayList<Events>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement("select * from events;");
			rs = ps.executeQuery();
			while (rs.next()) {
				Events e = new Events();
				e.setEvent_id(rs.getString("event_id"));
				e.setEvent_img(rs.getString("event_img"));
				e.setEvent_name(rs.getString("event_name"));
				e.setEvent_cost(rs.getString("event_cost"));
				e.setEvent_details(rs.getString("event_details"));
				e.setEvent_category(rs.getString("event_category"));
				e.setDate(rs.getString("date"));
				al.add(e);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Events> getEventdeatils(String event_id) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Events> al = new ArrayList<Events>();
		try {

			ps = con.prepareStatement("select * from events where event_id=?;");
			ps.setString(1, event_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				Events e = new Events();
				e.setEvent_id(rs.getString("event_id"));
				e.setEvent_img(rs.getString("event_img"));
				e.setEvent_name(rs.getString("event_name"));
				e.setEvent_cost(rs.getString("event_cost"));
				e.setEvent_category(rs.getString("event_category"));
				e.setEvent_details(rs.getString("event_details"));
				e.setDate(rs.getString("date"));
				al.add(e);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;

	}

//Bookevent
	public String bookevent(HttpServletRequest request) {
		String status = "";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			// Check if the event date already exists
			ps = con.prepareStatement("SELECT event_id FROM bookevent WHERE eventdate=?;");
			ps.setString(1, request.getParameter("edate"));
			rs = ps.executeQuery();
			if (rs.next()) {
				status = "existed";
			} else {
				// Insert the new booking
				String insertQuery = "INSERT INTO bookevent (event_id, event_img, event_name, email, address, event_cost, uname, uid, status, date, eventdate) "
						+ "SELECT 0, event_img, event_name, ?, ?, event_cost, ?, ?, ?, NOW(), ? FROM events WHERE event_id = ?;";
				ps = con.prepareStatement(insertQuery);
				ps.setString(1, (String) se.getAttribute("uemail"));
				ps.setString(2, request.getParameter("eaddress"));
				ps.setString(3, (String) se.getAttribute("uname"));
				ps.setString(4, (String) se.getAttribute("uid"));
				ps.setString(5, "pending");
				ps.setString(6, request.getParameter("edate"));
				ps.setString(7, request.getParameter("event_id"));
				int result = ps.executeUpdate();
				if (result > 0) {
					status = "success";
				} else {
					status = "failure";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			status = "error";
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return status;
	}

//status info
	public ArrayList<EventStatus> getStatus(int userId) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<EventStatus> al = new ArrayList<EventStatus>();
		try {
			ps = con.prepareStatement("SELECT * FROM bookevent WHERE uid = ?");
			ps.setInt(1, userId);
			rs = ps.executeQuery();
			while (rs.next()) {
				EventStatus es = new EventStatus();
				es.setEvent_id(rs.getString("event_id"));
				es.setEvent_image(rs.getString("event_img"));
				es.setEvent_name(rs.getString("event_name"));
				es.setEmail(rs.getString("email"));
				es.setEvent_address(rs.getString("address"));
				es.setEvent_cost(rs.getString("event_cost"));
				es.setEvent_date(rs.getString("eventdate"));
				es.setDate(rs.getString("date"));
				es.setEvent_status(rs.getString("status"));
				al.add(es);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;

	}

	// Admin booking status info
	public ArrayList<EventStatus> getBookigStatus() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<EventStatus> al = new ArrayList<EventStatus>();
		try {
			ps = con.prepareStatement("SELECT * FROM bookevent ;");
			rs = ps.executeQuery();
			while (rs.next()) {
				EventStatus es = new EventStatus();
				es.setEvent_id(rs.getString("event_id"));
				es.setEvent_image(rs.getString("event_img"));
				es.setEvent_name(rs.getString("event_name"));
				es.setEmail(rs.getString("email"));
				es.setEvent_address(rs.getString("address"));
				es.setEvent_cost(rs.getString("event_cost"));
				es.setEvent_date(rs.getString("eventdate"));
				es.setDate(rs.getString("date"));
				es.setEvent_status(rs.getString("status"));
				al.add(es);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return al;

	}

	// Review
	public String review(String name, String email, String rating, String feedback) {
		PreparedStatement ps = null;
		String status = "";
		try {
			String sql = "INSERT INTO review VALUES (0, ?, ?, ?, ?, NOW());";
			ps = con.prepareStatement(sql);
			ps.setString(1, (String) se.getAttribute("uname"));
			ps.setString(2, (String) se.getAttribute("uemail"));
			ps.setString(3, rating);
			ps.setString(4, feedback);
			int res = ps.executeUpdate();
			if (res > 0) {
				status = "success";
			} else {
				status = "failure";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			status = "error";
		}
		return status;
	}

	// Getting Feedback
	public ArrayList<Ratings> getFeedback() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Ratings> al = new ArrayList<Ratings>();
		try {
			ps = con.prepareStatement("select * from review;");
			rs = ps.executeQuery();
			while (rs.next()) {
				Ratings r = new Ratings();
				r.setRid(rs.getString("review_id"));
				r.setRname(rs.getString("uname"));
				r.setRemail(rs.getString("email"));
				r.setRratings(rs.getString("rating"));
				r.setRmessage(rs.getString("message"));
				r.setRdate(rs.getString("date"));
				al.add(r);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return al;

	}

	public String AcceptEvent(int eid) {
		String status = "";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement("update bookevent set status=? where event_id=?;");
			ps.setString(1, "booked");
			ps.setInt(2, eid);
			int res = ps.executeUpdate();
			if (res > 0) {
				status = "success";
			} else {
				status = "failure";
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return status;
	}

	public String CancelEvent(int eid) {
		String status = "";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement("update bookevent set status=? where event_id=?;");
			ps.setString(1, "canceled");
			ps.setInt(2, eid);
			int res = ps.executeUpdate();
			if (res > 0) {
				status = "success";
			} else {
				status = "failure";
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return status;
	}
}
