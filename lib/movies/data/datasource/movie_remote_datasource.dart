import 'package:dio/dio.dart';
import 'package:movieapp/core/errors/exceptions.dart';
import 'package:movieapp/core/network/api_constants.dart';
import 'package:movieapp/core/network/error_msg_model.dart';
import '../model/movie_model.dart';
abstract class BaseMovieRemoteDatasource{
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();

}
class MovieRemoteDatasource extends BaseMovieRemoteDatasource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstants.nowPlayingMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List)
            .map(
              (e) => MovieModel.fromJson(e),
            )
            .toList(),
      );
    } else {
      throw ServerException(
        errorMsgModel: ErrorMsgModel.fromJson(response.data),
      );
    }
  }



  @override
  Future<List<MovieModel>> getPopularMovies() async {
final response = await Dio().get(ApiConstants.popularMoviePath);
if (response.statusCode == 200) {
  return List<MovieModel>.from(
    (response.data["results"] as List)
        .map(
          (e) => MovieModel.fromJson(e),
    )
        .toList(),
  );
} else {
  throw ServerException(
    errorMsgModel: ErrorMsgModel.fromJson(response.data),
  );
}
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async  {
    final response = await Dio().get(ApiConstants.topRatedMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List)
            .map(
              (e) => MovieModel.fromJson(e),
        )
            .toList(),
      );
    } else {
      throw ServerException(
        errorMsgModel: ErrorMsgModel.fromJson(response.data),
      );
    }
  }
}
