import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../entities/movie.dart';

abstract class BaseMovieRepo{
Future<Either<Failure, List<MoviesEntity>>>  getNowPlayingMovies() ;
Future<Either<Failure, List<MoviesEntity>>>  getPopularMovie();
Future<Either<Failure, List<MoviesEntity>>>  getTopRatedMovie();


}