<%@ page isELIgnored="false" %><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../common/menu.jspf" %>
	<div class="container">
      
    <div class="jumbotron" id="p2">
      <strong> Generator expresssions </strong> 
      <div>
        <a href="delete?id=p2" class="btn btn-danger btn-sm" id="DELETE">
            <span class="glyphicon glyphicon-trash"></span> Delete 
          </a><a href="update?id=p2" class="btn btn-info btn-sm" id="UPDATE">
            <span class="glyphicon glyphicon-pencil"></span> Update 
          </a><a href="add??id=p2" class="btn btn-success btn-sm" id="ADD">
            <span class="glyphicon glyphicon-plus"></span> Add 
          </a>
      </div>
        <br> Another even more concise way to make a generator is by using a generator expres‐
sion. This is a generator analogue to list, dict, and set comprehensions; to create one,
enclose what would otherwise be a list comprehension within parentheses instead of
brackets:
    </div>
    <div class="jumbotron" id="p1">
      <strong> Generator expresssions </strong> 
      <div>
        <a href="delete?id=${p1}" class="btn btn-danger btn-sm" id="DELETE">
            <span class="glyphicon glyphicon-trash"></span> Delete 
          </a><a href="update??id=${p1}" class="btn btn-info btn-sm" id="UPDATE">
            <span class="glyphicon glyphicon-pencil"></span> Update 
          </a><a href="add??id=${p1}" class="btn btn-success btn-sm" id="ADD">
            <span class="glyphicon glyphicon-plus"></span> Add 
          </a>
      </div>
      Currying is computer science jargon (named after the mathematician Haskell Curry)
that means deriving new functions from existing ones by partial argument applica‐
tion. For example, suppose we had a trivial function that adds two numbers together
    </div>
  </div>
