<%-- 
    Document   : trainer-confirmation
    Created on : Feb 17, 2020, 3:28:23 PM
    Author     : vatso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainer confirmation</title>
    </head>
    <body>
        The trainer is confirmed: ${trainer.firstName} ${trainer.lastName} ${trainer.subject}
    </body>
</html>
