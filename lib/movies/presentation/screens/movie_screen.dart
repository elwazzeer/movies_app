import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movieapp/movies/data/repo/movie_repo.dart';
import 'package:movieapp/movies/domain/usecase/get_now_playing_movie_usecase.dart';

import '../../domain/repo/base_movies_repo.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void _getData() async {
    BaseMovieRemoteDatasource baseMovieRemoteDatasource =
        MovieRemoteDatasource();
    BaseMovieRepo baseMovieRepo =
        MoviesRepository(baseMovieRemoteDatasource: baseMovieRemoteDatasource);
   final result = await GetNowPlayingUseCase(baseMovieRepo: baseMovieRepo).execute();
   result.fold((l)=> null , (r){

   });
   if (kDebugMode) {
     print(result);
   }
  }
}
