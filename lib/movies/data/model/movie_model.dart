import 'package:movieapp/movies/domain/entities/movie.dart';

class MovieModel extends MoviesEntity {
  const MovieModel({
    required super.title,
    required super.releaseDate,
    required super.id,
    required super.backdropPath,
    required super.genderId,
    required super.overview,
    required super.voteAverage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      title: json['title'],
      releaseDate: json['release_date'],
      id: json['id'],
      backdropPath: json['backdrop_path'],
      genderId: List<int>.from(json['genre_ids'].map((e)=> e)),
      overview: json['overview'],
      voteAverage: json['vote_average']);
}
