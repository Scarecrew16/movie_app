class MovieModel {
  final String original_tittle, overview, poster_path, country, release_date;
  final int id, run_time;
  final double rating;
  final List genre;

  MovieModel(
      {required this.country,
      required this.rating,
      required this.genre,
      required this.release_date,
      required this.run_time,
      required this.original_tittle,
      required this.overview,
      required this.poster_path,
      required this.id});

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
        original_tittle: json['original_tittle'],
        overview: json['overview'],
        poster_path: json['poster_path'],
        id: json['id'],
        country: json['production_companies'][0]['origin_country'],
        release_date: json['release_date'],
        run_time: json['run_time'],
        genre: json['genre'],
        rating: json['vote_average']);
  }
}
