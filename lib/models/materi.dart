class Materi {
  String number;
  String title;

  Materi({
    required this.number,
    required this.title,
  });

  factory Materi.fromJson(Map<String, dynamic> json) {
    return Materi(
      number: json['number'],
      title: json['title'],
    );
  }
}
