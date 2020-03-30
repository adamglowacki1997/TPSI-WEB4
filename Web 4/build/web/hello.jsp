<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Witaj</title>
    </head>
    <body>
       
        <h1>Cześć, ${person.firstName} ${person.lastName}!</h1>
        <h1>Cześć, <c:out value="${person.firstName}"/>!</h1>
        <a href = "mailto: ${person.email}">Wyslij maila</a> 
            <!-- JSTL: po wpisaniu html w formularzu normalnie wyświetla tekst (bez interpretacji html) -->
            <!-- EL: po wpisaniu html w formularzu następuje jego interpretacja i 'wykonanie'  -->     
        
    <!-- <span style='color: pink'>${person.firstName}</span>
        <script>alert('Jestem zlym hackerem i zaraz cie zjem1 ${person.firstName}!');</script>
          <span style='color: pink'><c:out value="${person.firstName}"/></span>
        <script>alert('Jestem zlym hackerem i zaraz cie zjem2 <c:out value="${person.firstName}"/>!');</script> -->
    </body>
</html>