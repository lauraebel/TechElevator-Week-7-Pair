<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe List View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="recipeTiles">Tile Layout</a></li>
            <li><a href="recipeTable">Table Layout</a></li>
        </ul>
        
    </nav>
    <section id="main-content">

<c:set var="counter" value="0" />
<c:forEach var="recipe" items="${recipes}">
<div class="tile ">
				<a class="product-image" href="#"> 
					<img src="<c:url value="/img/recipe${counter}.jpg" />" />
					<c:set var="counter" value="${counter+1}" />
				</a>
				<div class="details">
					<p class="name">${recipe.name}</p>

					<p class="ingredients">${recipe.ingredients.size()} ingredients</p>

					<div class="rating">
					
					<c:forEach begin="1" end="${recipe.averageRating}" var="recipe" >
						<span class=".filled">&#9734;</span>
					
					</c:forEach>
						 
					</div>	
				</div>
			</div>
</c:forEach>

    </section>
</body>
</html>