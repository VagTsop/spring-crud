<%-- 
    Document   : trainer-form
    Created on : Feb 17, 2020, 12:18:43 AM
    Author     : vatso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save Trainer</title>
        
         <link type="text/css"
              rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/css/style.css"/>
        
         <link type="text/css"
              rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>
        
    </head>
    <body>
       
        <div id="wrapper">
            <div id="header">
                <h2>Trainer Relationship Manager</h2>
            </div>
        </div>
        
        <div id="container">
            <h3>Save Trainer</h3>
            
            
            
            <form:form action="processForm" modelAttribute="trainer" method="POST">
             <form:hidden path="id" />
                
                <table>
                    <tbody>
                        <tr>
                            <td><label>First name:</label></td>
                            <td><form:input path="firstName"/>
                                <form:label path="firstName"></form:label>
                                <form:errors path="firstName" />   
                            </td>
                            
                        </tr>
                           
                         <tr>
                            <td><label>Last name:</label></td>
                            <td><form:input path="lastName"/>
                             <form:label path="lastName"></form:label>   
                             <form:errors path="lastName"></form:errors>
                            </td>   
                        </tr>
                        
                         <tr>
                            <td><label>Subject:</label></td>
                            <td><form:input path="subject"/>
                            <form:label path="subject"></form:label> 
                             <form:errors path="subject"></form:errors>
                            </td>   
                        </tr>
                        
                         <tr>
                            <td><label></label></td>
                            <td><input type="submit" value="Save" class="save"/></td>   
                        </tr>
                        
                        
                        
                    </tbody>
                </table>
                
                
        
                
            </form:form>
           
            
            
            
            
            
            
            
            
            
         
            
            <p>
               
                <a href="${pageContext.request.contextPath}/trainer/list">Back to List</a>
            </p>
            
            
        </div>
        
        
        
    </body>
</html>
