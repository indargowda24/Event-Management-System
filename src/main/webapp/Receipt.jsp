<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Model.EventStatus" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IGMK Events</title>
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        .receipt-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            border: 1px solid #e3e3e3;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .header {
            text-align: center;
            margin-bottom: 30px;
        }
        .header h1 {
            margin: 0;
            color: #333;
            font-size: 24px;
        }
        .details {
            margin-bottom: 25px;
        }
        .details p {
            margin: 10px 0;
            font-size: 16px;
            color: #555;
        }
        .details p strong {
            color: #000;
        }
        .footer {
            text-align: center;
            font-size: 14px;
            color: #888;
            margin-top: 20px;
        }
        .print-btn {
            display: block;
            width: calc(100% - 20px);
            text-align: center;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin: 30px auto 10px auto;
            box-sizing: border-box;
            transition: background-color 0.3s ease;
        }
        .print-btn:hover {
            background-color: #0056b3;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.3.1/jspdf.umd.min.js"></script>
</head>
<%@include file="header.jsp" %>
<body>

    <%
    String eventId = request.getParameter("event_id");
    EventStatus event = null;

    if (eventId != null && !eventId.isEmpty()) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            // Initialize database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root", "tiger");

            String query = "SELECT * FROM bookevent WHERE event_id = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, eventId);
            rs = ps.executeQuery();

            if (rs.next()) {
                event = new EventStatus();
                event.setEvent_id(rs.getString("event_id"));
                event.setEvent_name(rs.getString("event_name"));

                // Parse and format the event_date to exclude time
                String eventDateStr = rs.getString("eventdate");
                SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                SimpleDateFormat outputFormat = new SimpleDateFormat("dd-MM-yyyy");
                Date eventDate = inputFormat.parse(eventDateStr);
                String formattedDate = outputFormat.format(eventDate);

                event.setEvent_date(formattedDate);
                event.setEvent_cost(rs.getString("event_cost"));
                
                // Check if the address is null or empty
                String address = rs.getString("address");
                if (address == null || address.trim().isEmpty()) {
                    address = "Not available";  // Fallback if address is null or empty
                }
                event.setEvent_address(address);
                
                event.setEmail(rs.getString("email"));
                event.setEvent_image(rs.getString("event_image"));
                event.setEvent_status(rs.getString("event_status"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    if (event == null) {
        out.println("<h2>Event not found or invalid event ID.</h2>");
        return;
    }
    %>

    <div class="receipt-container" id="receipt">
        <div class="header">
            <h1>IGMK EVENTS</h1>
        </div>

        <div class="details">
            <p><strong>Name:</strong> <%= session.getAttribute("uname") %></p>
            <p><strong>Event Name:</strong> <%= event.getEvent_name() %></p>
            <p><strong>Event Date:</strong> <%= event.getEvent_date() %></p> <!-- Date only -->
            <p><strong>Event Cost:</strong> &#8377;<%= event.getEvent_cost() %></p>
            <p><strong>Location:</strong> <%= event.getEvent_address() %></p>
        </div>

        <div class="footer">
            <p>Thank you for choosing IGMK Events!</p>
        </div>

        <a href="#" class="print-btn" onclick="generatePDF()">Download PDF</a>
    </div>

    <script>
        async function generatePDF() {
            const { jsPDF } = window.jspdf;

            const doc = new jsPDF();
            
            // Styling for PDF
            doc.setFontSize(24);
            doc.setTextColor(51, 51, 51);
            doc.text('IGMK EVENTS', 105, 20, { align: 'center' });

            doc.setFontSize(18);
            doc.setTextColor(34, 34, 34);
            doc.text('Receipt', 105, 30, { align: 'center' });

            doc.setLineWidth(0.5);
            doc.setDrawColor(0, 0, 0);
            doc.line(20, 40, 190, 40);
            
            doc.setFontSize(16);
            doc.setTextColor(85, 85, 85);
            doc.text('Name: <%= session.getAttribute("uname") %>', 20, 50);
            doc.text('Event Name: <%= event.getEvent_name() %>', 20, 60);
            doc.text('Event Date: <%= event.getEvent_date() %>', 20, 70);
            doc.text('Event Cost:INR <%= event.getEvent_cost() %>', 20, 80);
            doc.text('Location: <%= event.getEvent_address() %>', 20, 90);

            doc.setFontSize(14);
            doc.setTextColor(136, 136, 136);
            doc.text('Thank you for choosing IGMK Events!', 105, 110, { align: 'center' });

            doc.setFontSize(12);
            doc.setTextColor(0, 0, 0);
            doc.text('For any inquiries, contact us at: contact@igmk-events.com', 105, 120, { align: 'center' });

            doc.save('receipt.pdf');
        }
    </script>

</body>
<%@include file="footer.jsp" %>
</html>
