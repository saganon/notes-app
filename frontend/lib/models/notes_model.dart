class Notes {
  int id;
  String title;
  String createdAt;
  String updatedAt;
  String image;

  Notes({
    required this.id,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.image,
  });

  factory Notes.fromJson(Map<String, dynamic> json) {
    return Notes(
      id: json['id'],
      title: json['title'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      image: json['image'],
    );
  }

  static List<Notes> fromListJson(List<dynamic> jsons) {
    return jsons.map((item) => Notes.fromJson(item)).toList();
  }
}
