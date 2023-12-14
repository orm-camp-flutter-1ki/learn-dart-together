import 'dart:convert';

class MovieInfo {
  String title;
  String director;
  int year;

  MovieInfo({
    required this.title,
    required this.director,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'director': director,
      'year': year,
    };
  }

  factory MovieInfo.fromMap(Map<String, dynamic> map) {
    return MovieInfo(
      title: map['title'] as String,
      director: map['director'] as String,
      year: map['year'] as int,
    );
  }
}

void main() async {
  final String movieInfoJsonString = await getMovieInfo();
  final MovieInfo movieInfo = MovieInfo.fromMap(jsonDecode(movieInfoJsonString));
  print(movieInfo.director);

  // final String movieInfoJsonString = await getMovieInfo();
  // final Map<String, dynamic> movieInfoJson = jsonDecode(movieInfoJsonString);
  // // String director = movieInfoJson['directorrr'];
  // print(movieInfoJson['director']);
  // print(movieInfoJson['title']);
  // print(movieInfoJson['year']);
}

void allPrint(director, title, year) {
  print(director);
  print(title);
  print(year);
}

Future<String> getMovieInfo() async {
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };

  return jsonEncode(mockData);
}