import 'movie.dart';

class MovieList {
  final List<Movie> _movies = [];

  void addMovie(Movie movie) {
    _movies.add(movie);
  }

  List<Movie> getMovies() {
    return _movies;
  }
  List<Movie> filterByYear(int year) {
    return _movies.where((movie) => movie.releaseDate.year == year).toList();
  }
}