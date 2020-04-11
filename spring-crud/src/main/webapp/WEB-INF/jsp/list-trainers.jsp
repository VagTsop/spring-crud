<%-- 
    Document   : list-trainers
    Created on : Feb 16, 2020, 4:58:40 PM
    Author     : vatso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Trainers</title>
      
       

        <link type="text/css"
              rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/css/style.css"/>
    </head>
    <body>
        
        <div id="wrapper">
          <div id="header">
              <h2>Trainer Relationship Manager</h2>
          </div>
        </div>
        
        <div id="container">
        
               <div id="content">
        
                   
                   <input type="button" value="add Trainer"
                          onclick="window.location.href='showFormForAdd'; return false;"
                        
                          class="add-button"/>
                   
                   
                   
                   <table>
                       <tr>
                           <th>First Name</th>
                           <th>Last Name</th>
                           <th/>Subject</th>   
                           <th/>Action</th>
                       </tr> 
                       <c:forEach var="tempTrainer" items="${alltrainers}"> 
                       
                           <!--construct an "update" link with trainer id-->
                           <c:url var="updateLink" value="/trainer/showFormForUpdate">
                           <c:param name="trainerId" value="${tempTrainer.id}"/>
                           </c:url>
                           
                          <!--construct an "update" link with trainer id-->
                           <c:url var="deleteLink" value="/trainer/delete">
                           <c:param name="trainerId" value="${tempTrainer.id}"/>
                           </c:url>  
                           
                           
                           
                       <tr>
                           <td> ${tempTrainer.firstName}</td>
                           <td> ${tempTrainer.lastName}</td>
                           <td> ${tempTrainer.subject}</td>
                           
                           <td>
                               
                               <!--display the update link -->
                               <a href="${updateLink}">Update</a>
                               
                               <a href="${deleteLink}"
                                  onclick="if(!(confirm('Are you sure you want to delete this ' )))return false">Delete</a> 
                           </td>
                           
                       </tr>
                       
                       </c:forEach>
                       
                   </table>
                   
        
               </div>
        </div>
                   
    </body>
</html>
