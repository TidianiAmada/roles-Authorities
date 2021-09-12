<%@ page isELIgnored="false" %><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../common/menu.jspf" %>
<div>
        <div class="container">
            <form action="/connect.platform" method="post">
                <div class="form-group">
                    <label for="username">Mail adress</label>
                    <input class="form-control col-3" type="email" name="username" id="username">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control col-3" name="password" id="password"><br>
                </div>
                <div class="form-group">
                    <label for="role">Role</label>
                    <select name="role" class="form-control col-3" id="role">
                
                        <option value="CLIENT">Customer</option>
                        <option value="STAFF">Staff</option>
                        <option value="ADMIN">Administrator</option>
                    </select>
                </div> <br>
                <button type="submit" class="btn btn-primary">Envoyer</button>
                <a href="create.account" class="btn btn-link">s'inscrire?</a>
            </form>
        </div>
    </div>