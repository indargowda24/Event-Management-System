<%@page import="java.util.Iterator"%>
<%@page import="Model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Enquiry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IGMK EVENTS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style>
.oc {
    background-color: #1d2124;
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
    /* Add space above and below the table */
}

.custom-table {
    border-collapse: collapse;
    width: 100%;
}

.custom-table th, .custom-table td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

.custom-table th {
    background-color: #5e2a6e;
    color: white;
}

.custom-table tr:nth-child(even) {
    background-color: #f2f2f2;
}

.custom-table tr:hover {
    background-color: #ddd;
}

.custom-table td:last-child, .custom-table th:last-child {
    text-align: left; /* Center the "Delete" column */
}
</style>
</head>
<body>
    <%@include file="AdminHeader.jsp"%>
    <div class="cli">
        <% if (session.getAttribute("uname") != null) { %>
        <div class="container">
            <div class="oc">Our Clients</div>
            <div class="table-container table-responsive">
                <table class="custom-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Registered Date</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        Enquiry enq = new Enquiry(session);
                        ArrayList<User> au = enq.Clients();
                        for (User u : au) {
                            if (!"1".equals(u.getId())) {  // Exclude admin user
                        %>
                        <tr>
                            <td><%=u.getId()%></td>
                            <td><%=u.getName()%></td>
                            <td><%=u.getEmail()%></td>
                            <td><%=u.getDate()%></td>
                            <td>
                                <form action="regi" method="post">
                                    <input type="hidden" name="userid" value="<%=u.getId()%>">
                                    <input type="submit" name="Clientdelete" class="btn btn-danger" value="Delete">
                                </form>
                            </td>
                        </tr>
                        <%
                            }
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
        <% } %>
    </div>
    <%@include file="Adminfooter.jsp"%>
</body>
</html>
