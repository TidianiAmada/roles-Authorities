<%@ page isELIgnored="false" %><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../common/menu.jspf" %>
<div class="container">
	<form action="/update?username=${username}" method="post">
	
		<p>modification du profil de ${username} </p>
		<label for="title" >Titre</label>
		<div class="form-group">
            <label for="role">Role</label>
            <select name="role" class="form-control col-3" id="role">
        
                <option value="CLIENT">Customer</option>
                <option value="STAFF">Staff</option>
                <option value="ADMIN">Administrator</option>
            </select>
        </div>
        <button type="submit" >Mettre à jour</button>
		<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}"/>
		
	</form>
</div>