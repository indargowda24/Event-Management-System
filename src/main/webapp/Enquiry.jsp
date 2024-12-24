<%@page import="Model.EnqList"%>
<%@page import="java.util.Iterator"%>
<%@page import="Model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Enquiry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IGMK EVENTS</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous">
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
<style>
.oc {
    background-color: #1d2124	;
    font-size: 30px;
    text-align: center;
    color: #fff;
}

.cli {
    margin-top: 20px;
    margin-bottom: 20px;
}

.table-container {
    overflow-x: auto;
}

.custom-table {
    border-collapse: collapse;
    width: 100%;
}

.custom-table th, .custom-table td {
    padding: 12px;
    text-align: left; /* Left-align table headers and content */
    border-bottom: 1px solid #ddd;
}

.custom-table th {
    background-color: #5e2a6e	;
    color: white;
}

.custom-table tr:nth-child(even) {
    background-color: #f2f2f2;
}

.custom-table tr:hover {
    background-color: #ddd;
}

.custom-table td:last-child {
    text-align: center;
}

.custom-table th:nth-child(6), .custom-table td:nth-child(6) {
    text-align: left; /* Ensure date column is left-aligned */
}
</style>
</head>
<body>
    <%@include file="AdminHeader.jsp"%>
    <div class="cli">
        <%
        if (session.getAttribute("uname") != null && "1".equals(String.valueOf(session.getAttribute("uid")))) {
        %>
        <div class="container">
            <div class="oc">Enquiry List</div>
            <div class="table-container table-responsive">
                <table class="custom-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Subject</th>
                            <th>Message</th>
                            <th>Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        Enquiry enq = new Enquiry(session);
                        ArrayList<EnqList> al = enq.getEnquiryList();
                        for (EnqList e : al) {
                        %>
                        <tr>
                            <td><%=e.getId()%></td>
                            <td><%=e.getName() %></td>
                            <td><%=e.getEmail()%></td>
                            <td><%=e.getSub()%></td>
                            <td><%=e.getMsg() %></td>
                            <td><%=e.getDate() %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <%
        }
        %>
    </div>
    <%@include file="Adminfooter.jsp"%>
</body>
</html>
