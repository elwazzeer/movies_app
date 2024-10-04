import 'package:equatable/equatable.dart';

class MoviesEntity extends Equatable{
  final String title;
  final String releaseDate ;
  final int id;
  final String backdropPath;
  final List<int> genderId;
  final String overview;
  final double voteAverage;
  const MoviesEntity( {required this.title,
    required this.releaseDate,
    required this.id,
    required this.backdropPath,
    required this.genderId,
    required this.overview,
    required this.voteAverage});
  @override
  List<Object> get props =>
      [title, id, backdropPath, genderId, overview, voteAverage,];

}
