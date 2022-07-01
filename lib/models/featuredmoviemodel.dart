class FeaturedMovieModel {
  final String original_tittle, overview, poster_path, release_date;
  final int id;
  final double rating;

  FeaturedMovieModel(
      {required this.rating,
      required this.release_date,
      required this.original_tittle,
      required this.overview,
      required this.poster_path,
      required this.id});

  factory FeaturedMovieModel.fromJson(Map<String, dynamic> json) {
    return FeaturedMovieModel(
        original_tittle: json['original_tittle'],
        overview: json['overview'],
        poster_path: json['poster_path'],
        id: json['id'],
        //country: json['production_companies'][0]['origin_country],
        release_date: json['release_date'],
        //run_time: json['run_time],
        //genrer: json['genre],
        rating: json['vote_average']);
  }
}
