<%@ page isELIgnored="false" %><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../common/menu.jspf" %>
<div>
        <div class="container bg-light">
            <table class="table">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>User current role</th>
                        <th>Privilege</th>
                        <th>Action</th>    
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="user" varStatus="Status">
                    <tr>
                        <td>${user.getUsername()}</td>
                        <td>${user.getRole()} </td>
                        <td>${user.getPrivilege() }</td>
                        <td><a href="/updateEspace?username=${user.getUsername()}" class="btn btn-warning">Reconfigure</a> </td>
                    </tr>
                    
                 </c:forEach>
                </tbody>
            </table>
        </div>
    </div>