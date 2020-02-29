<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div>

	<c:url var="recipeDetailsUrl" value="recipeDetails" >
		<c:param name="recipeId" value="${recipe.recipeId}" />
	</c:url>
	
	<c:url var="imgUrl" value="/img/recipe${recipe.recipeId}" />
	
	    <section id="main-content-details">
	    
	    <a class="product-image" href="#"> 
			<c:url var="imgUrl" value="/img/recipe${recipe.recipeId}.jpg" />
			<img src="${imgUrl}"/>
		</a>
		
		<h4 class="name">${recipe.name}</h4>
		
		<p class="type-details">${recipe.recipeType}</p>
		
		<h6>Cook Time</h6>
		<p class="cook-time-details">${recipe.cookTimeInMinutes} minutes</p>
		
		<p class="recipe-description">${recipe.description}</p>
		
		<h3>Ingredients</h3>
		
		<c:forEach var="ingredient" items="${recipe.ingredients}">
			<li class="ingredients">${ingredient.quantity}  ${ingredient.name}</li>
		</c:forEach> 	
						
	    <h3>Preparation</h3>
		
		<c:forEach var="prepStep" items="${recipe.preparationSteps}">
			<li class="preparation">${prepStep}</li>
		</c:forEach> 


    </section>
</body>
</html>

	
</div>