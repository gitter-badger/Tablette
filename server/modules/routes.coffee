movieList = require "./movieList"
movieResolver = require "./movieResolver"

exports.setUpRoutes = (app)->

  app.get("/movies", (request,response)->
    response.json movieList.getMovieList()
  )
  app.get("/movie/search/:movieName", movieResolver.getMovieDescription )
  
  app.post( "/movies/new", movieList.addMovie )
  app.put( "/movies/update", movieList.updateMovie )

  app.get( "/movie/:movieName", movieList.getMovie )

  
