// https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1
//
// 영화정보를 가져와서 모델에 담고 json 형태로 출력하기

import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  // 1
  // final movieData = await getMovieInfo();
  // movieData.results.forEach((movie) => print(movie.toJson()));

  // 2
  List<Movie> movies = await getMovies();
  movies.forEach((movie) => print(movie.toJson()));
}

Future<List<Movie>> getMovies() async {
  final response =
      await http.get(Uri.parse('https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  final jsonList = jsonDecode(response.body)['results'] as List<dynamic>;
  return jsonList.map((e) => Movie.fromJson(e)).toList();
}

Future<MovieData> getMovieInfo() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  return MovieData.fromJson(jsonDecode(response.body));
}

class MovieData {
  Dates dates;
  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  MovieData({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory MovieData.fromJson(Map<String, dynamic> json) {
    return MovieData(
      dates: Dates.fromJson(json['dates']),
      page: json['page'],
      results: List<Movie>.from(json['results'].map((x) => Movie.fromJson(x))),
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dates': dates.toJson(),
      'page': page,
      'results': List<dynamic>.from(results.map((x) => x.toJson())),
      'total_pages': totalPages,
      'total_results': totalResults,
    };
  }
}

class Dates {
  String maximum;
  String minimum;

  Dates({
    required this.maximum,
    required this.minimum,
  });

  factory Dates.fromJson(Map<String, dynamic> json) {
    return Dates(
      maximum: json['maximum'],
      minimum: json['minimum'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'maximum': maximum,
      'minimum': minimum,
    };
  }
}

class Movie {
  bool adult;
  String? backdropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String? posterPath;
  String releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  Movie({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'].map((x) => x)),
      id: json['id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': List<dynamic>.from(genreIds.map((x) => x)),
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }
}
