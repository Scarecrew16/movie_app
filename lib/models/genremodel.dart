class GenreModel {
  final String name;
  final int id;

  //required to eliminate the error
  GenreModel({required this.name, required this.id});

  factory GenreModel.fromJson(Map<String, dynamic> json) {
    return GenreModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
