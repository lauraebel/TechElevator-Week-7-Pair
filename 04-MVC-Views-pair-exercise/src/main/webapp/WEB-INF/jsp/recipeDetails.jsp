<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div>

	<c:url var="recipeDetailsUrl" value="recipeDetails" >
		<c:param name="recipeId" value="${recipe.recipeId}" />
	</c:url>
	
	<c:url var="imgUrl" value="/img/recipe${recipe.recipeId}" />
	
	    <section id="main-content-details">
	    	
	    	<div id="recipe-overview">
	    	
	    		<div id="image">
				    <a class="product-image" href="#"> 
						<c:url var="imgUrl" value="/img/recipe${recipe.recipeId}.jpg" />
						<img src="${imgUrl}"/>
					</a>
				</div>
				
				<div id=recipe-details>
				
					<h4 class="name">${recipe.name}</h4>
					
					<p class="type-details">${recipe.recipeType}</p>
						
					<div id="cook-time">
						
						<h5>Cook Time</h5>
						<p class="cook-time-details">${recipe.cookTimeInMinutes} minutes</p>
						
					</div>
						
					<p class="recipe-description">${recipe.description}</p>
				
				</div>
			
			</div>
		
			<div id="ingredients">
			
				<h5>Ingredients</h5>
				
				<c:forEach var="ingredient" items="${recipe.ingredients}">
					<li class="ingredients">${ingredient.quantity}  ${ingredient.name}</li>
				</c:forEach> 
				
			</div>	
		
			<div id="preparation">
							
			    <h5>Preparation</h5>
				
				<c:forEach var="prepStep" items="${recipe.preparationSteps}">
					<li class="preparation">${prepStep}</li>
				</c:forEach> 
			</div>
		</section>
	</body>
</html>

	
</div>