

import 'package:dartz/dartz.dart';
import 'package:movieapp/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movieapp/movies/data/model/movie_model.dart';
import 'package:movieapp/movies/domain/repo/base_movies_repo.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/errors/failure.dart';

class MoviesRepository extends BaseMovieRepo{
  final BaseMovieRemoteDatasource baseMovieRemoteDatasource;

  MoviesRepository({required this.baseMovieRemoteDatasource});


  @override
  Future<Either<Failure, List<MovieModel>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDatasource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message:failure.errorMsgModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getPopularMovie() async {
    final result = await baseMovieRemoteDatasource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message:failure.errorMsgModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovie() async {
    final result = await baseMovieRemoteDatasource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message:failure.errorMsgModel.statusMessage));
    }
  }





}