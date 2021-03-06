<%-- 
    Document   : menu
    Created on : 10 déc. 2014, 14:47:32
    Author     : Ekue_Weledji
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <c:choose>
        <c:when test="${not empty admin}">
            <div class="col-sm-3">
                <!-- Left column -->
                <a href="#"><strong><i class="glyphicon glyphicon-wrench"></i> Menu </strong></a>  

                <hr>

                <ul class="list-unstyled">
                    <li class="nav-header"> <a href="#" data-toggle="collapse" data-target="#userMenu">
                            <h5>Gestion des utilisateurs <i class="glyphicon glyphicon-chevron-down"></i></h5>
                        </a>
                        <ul class="list-unstyled collapse in" id="userMenu">
                            <c:url value="/search-user" var="searchUserUrl" />
                            <li> <a href="${searchUserUrl}"><i class="glyphicon glyphicon-home"></i> Rechercher </a></li>
                            <c:url value="/users" var="listUsersUrl" />
                            <li><a href="${listUsersUrl}"><i class="glyphicon glyphicon-envelope"></i> Liste <span class="badge badge-info">${nombreContacts}</span></a></li>                            
                        </ul>
                    </li>

                    <li class="nav-header">
                        <a href="#" data-toggle="collapse" data-target="#menu3">
                            <h5>Facturations <i class="glyphicon glyphicon-chevron-right"></i></h5>
                        </a>

                        <ul class="list-unstyled collapse" id="menu3">
                            <c:url value="/list-invoices" var="listInvoicesUrl" />
                            <li><a href="${listInvoicesUrl}"><i class="glyphicon glyphicon-circle"></i> Les factures</a></li>
                        </ul>
                    </li>                   
                </ul>
            </div><!-- /col-3 -->

        </c:when>
    </c:choose>

</html>
