<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Studenci</title>
        
        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
            
        <p>Tabela studentów: </p>
        <br>
        <table style="width:80%">
           <tr>
                <th>Imie</th>
                <th>Nazwisko</th>
                <th>Email</th>
           </tr>
        <c:forEach items="${students}" var="student">
            <tr>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>${student.email}</td>
            </tr>
        </c:forEach>
        </table>
            
        <br>
        <label> Podaj dane studenta: </label>
        <form action='/lab4/studentsTable' method='post'>
                Podaj imie:
            <input type='text' name='imie'>
            <br>
                Podaj nazwisko:
            <input type='text' name='nazwisko'>
            <br>
                Podaj email:
            <input type='text' name='email'>
            <input type='submit'>
        </form>
        
    </body>
</html>
