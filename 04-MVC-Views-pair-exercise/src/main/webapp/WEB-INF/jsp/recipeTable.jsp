<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />
	

    <section id="main-content-table">
    	<h2>Recipes</h2>
    	
    	<div class="titles">
	    	<h6 id="name">Name</h6>
	    	<h6>Type</h6>
	    	<h6>Cook Time</h6>
	    	<h6>Ingredients</h6>
	    	<h6 id="rating">Rating</h6>
    	</div>

		<c:forEach var="recipe" items="${recipes}">
		<div class="table">
		
				<a class="product-image-table" href="<c:url value="/recipeDetails?recipeId=${recipe.recipeId}" /> ">
					<c:url var="imgUrl" value="/img/recipe${recipe.recipeId}.jpg" />
					<img src="${imgUrl}"/>
				</a>
	
				<div class="details-table">
					<p class="name-table">${recipe.name}</p>

					<p class="type-table">${recipe.recipeType}</p>
					
					<p class="cook-time-table">${recipe.cookTimeInMinutes} min.</p>
					
					<p class="ingredients-table">${recipe.ingredients.size()} ingredients</p>
					
					<div class="rating-table">
					
					<c:set var="blankStars" value="${6 - recipe.averageRating}" />
						<c:forEach begin="1" end="${6 - blankStars}" var="recipe" >
							<span class="filled">&#9734;</span>					
						</c:forEach>
						<c:forEach begin="1" end="${blankStars}" var="recipe" >
							<span class="empty-table">&#9734;</span>					
						</c:forEach>
						 
					</div>	
				</div>
			</div>
			</c:forEach>
    </section>
</body>
</html>