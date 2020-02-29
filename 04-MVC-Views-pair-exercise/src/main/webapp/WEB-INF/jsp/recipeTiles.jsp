<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

    <section id="main-content">
		<h2>Recipes</h2>
		
		<c:forEach var="recipe" items="${recipes}">
		
		<div class="tile">
		
				<a class="product-image" href="<c:url value="/recipeDetails?recipeId=${recipe.recipeId}" /> ">
					<c:url var="imgUrl" value="/img/recipe${recipe.recipeId}.jpg" />
					<img src="${imgUrl}"/>
				</a>
				
				<div class="details">
					<h4 class="name">${recipe.name}</h4>

					<p class="ingredients">${recipe.ingredients.size()} ingredients</p>

					<div class="rating">
					
						<c:set var="blankStars" value="${6 - recipe.averageRating}" />
						<c:forEach begin="1" end="${6 - blankStars}" var="recipe" >
							<span class="filled">&#9734;</span>					
						</c:forEach>
						<c:forEach begin="1" end="${blankStars}" var="recipe" >
							<span class="empty">&#9734;</span>					
						</c:forEach>
						 
					</div>	
				</div>
			</div>
		</c:forEach>

    </section>
</body>
</html>