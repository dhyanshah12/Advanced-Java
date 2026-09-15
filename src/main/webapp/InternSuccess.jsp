<%@page import="com.bean.StudentBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration</title>
<style>
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }

  body {
    font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
    background: linear-gradient(135deg, #f0f4f8 0%, #d9e4ec 100%);
    min-height: 100vh;
    padding: 30px 15px;
    color: #2d3748;
  }

  h1 {
    text-align: center;
    color: #1a365d;
    font-size: clamp(1.4rem, 4vw, 2.2rem);
    margin-bottom: 30px;
  }

  .table-wrapper {
    max-width: 900px;
    margin: 0 auto;
    overflow-x: auto;
    background: #ffffff;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
  }

  table {
    width: 100%;
    border-collapse: collapse;
    min-width: 500px;
  }

  thead {
    background: #3182ce;
  }

  th {
    color: #ffffff;
    text-align: left;
    padding: 14px 16px;
    font-size: 0.95rem;
    text-transform: uppercase;
    letter-spacing: 0.5px;
  }

  td {
    padding: 12px 16px;
    font-size: 0.95rem;
    border-bottom: 1px solid #edf2f7;
    word-break: break-word;
  }

  tbody tr:nth-child(even) {
    background: #f7fafc;
  }

  tbody tr:hover {
    background: #ebf8ff;
  }

  @media (max-width: 480px) {
    th, td {
      padding: 10px 12px;
      font-size: 0.85rem;
    }
  }
</style>
</head>
<body>
  <h1>InternShip Successfully Registration</h1>
  <%
  	ArrayList<StudentBean> list = (ArrayList<StudentBean>)request.getAttribute("list");
  %>

  <div class="table-wrapper">
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Technology</th>
          <th>College Name</th>
        </tr>
      </thead>
      <tbody>
        <%
        	for(StudentBean s:list){ %>
        		<tr>
        			<td><%=s.getName()%></td>
        			<td><%=s.getEmail()%></td>
        			<td><%= s.getTechnology() %></td>
        			<td><%= s.getCollegename() %></td>
        		</tr>
        	<%}%>
      </tbody>
    </table>
  </div>

</body>
</html>