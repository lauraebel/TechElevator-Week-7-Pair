<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe Table View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body id="table">
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="recipeTiles">Tile Layout</a></li>
            <li><a href="recipeTable">Table Layout</a></li>
        </ul>
        
    </nav>
    <section id="main-content-table">
    	<h2>Recipes</h2>
    	
    	<div class="titles">
	    	<h6 id="name">Name</h6>
	    	<h6>Type</h6>
	    	<h6>Cook Time</h6>
	    	<h6>Ingredients</h6>
	    	<h6 id="rating">Rating</h6>
    	</div>

		<c:set var="counter" value="0" />
		<c:forEach var="recipe" items="${recipes}">
		<div class="table">
				<a class="product-image-table" href="#"> 
					<img src="<c:url value="/img/recipe${counter}.jpg" />" />
					<c:set var="counter" value="${counter+1}" />
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