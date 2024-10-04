import 'package:dartz/dartz.dart';
import 'package:movieapp/movies/domain/repo/base_movies_repo.dart';

import '../../../core/errors/failure.dart';
import '../entities/movie.dart';

class GetPopularMovieUseCase {
  final BaseMovieRepo baseMovieRepo;

  GetPopularMovieUseCase({required this.baseMovieRepo});

  Future<Either<Failure, List<MoviesEntity>>>  execute() async {
    return await baseMovieRepo.getPopularMovie();
  }
}
