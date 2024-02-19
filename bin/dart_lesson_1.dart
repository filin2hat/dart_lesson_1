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

  await printAll(movieList, separator);

  await printFiltered(movieList, separator);
}

Future<void> printFiltered(MovieList movieList, String separator) async {
  var filteredMovies = movieList.filterByYear(1972);
  print('\nFiltered Movies (Year: 1972):\n');
  for (var movie in filteredMovies) {
    await Future.delayed(Duration(seconds: 2));
    print(movie);
    print(separator);
  }
}

Future<void> printAll(MovieList movieList, String separator) async {
  print('\nList of Movies:\n');
  for (var movie in movieList.getMovies()) {
    await Future.delayed(Duration(seconds: 1));
    print(movie);
    print(separator);
  }
}
