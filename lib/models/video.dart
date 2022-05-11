class Video {
  String videoUrl;
  String title;

  Video({
    required this.videoUrl,
    required this.title,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      videoUrl: json['video_url'],
      title: json['title'],
    );
  }
}
