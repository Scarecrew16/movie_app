import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_app/models/moviemodel.dart';
import 'package:movie_app/models/featuredmoviemodel.dart';

import 'models/genremodel.dart';

class Api {
  static const url = "https://api.themoviedb.org/3";
  static const apiKey = "c9592b235278cb33532263e0aa529001";

  Future<List<GenreModel>> GetGenreList() async {
    final response =
        await http.get(Uri.parse("$url/genre/movie/list?api_key=$apiKey"));

    if (response.statusCode == 200) {
      final parsed =
          jsonDecode(response.body)['genres'].cast<Map<String, dynamic>>();

      return parsed
          .map<GenreModel>((json) => GenreModel.fromJson(json))
          .toList();
    } else {
      // Error
      throw Exception('Failed to load post');
    }
  }

  Future<List<FeaturedMovieModel>> getFeaturedMovies() async {
    final response =
        await http.get(Uri.parse('$url/trending/movie/day?api_key=$apiKey'));
    print(response.body);
    if (response.statusCode == 200) {
      final parsed =
          json.decode(response.body)['results'].cast<Map<String, dynamic>>();
      print(parsed);
      return parsed
          .map<FeaturedMovieModel>((json) => FeaturedMovieModel.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load featured movies');
    }
  }

  Future<MovieModel> getMovieInfo(int movieId) async {
    final response =
        await http.get(Uri.parse("$url/genre/movie/$movieId?api_key=$apiKey"));

    if (response.statusCode == 200) {
      return MovieModel.fromJson(json.decode(response.body));
    } else {
      // Error
      throw Exception('Failed to load movie info');
    }
  }
}
