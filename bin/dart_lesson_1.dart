import 'class/movie_list.dart';
import 'dummy_data.dart';

Future<void> main(List<String> arguments) async {
  var movieList = MovieList();
  movieList.addMovie(movieOne);
  movieList.addMovie(movieTwo);
  movieList.addMovie(movieThree);

  var separator =
      '_________________________________________________________________'
      '_________________________________________________________________'
      '_________________________________________________________________';

  print('\nList of Movies:\n');
  for (var movie in movieList.getMovies()) {
    await Future.delayed(Duration(seconds: 1));
    print(movie);
    print(separator);
  }

  var filteredMovies = movieList.filterByYear(1972);
  print('\nFiltered Movies (Year: 1972):\n');
  for (var movie in filteredMovies) {
    await Future.delayed(Duration(seconds: 2));
    print(movie);
    print(separator);
  }
}
