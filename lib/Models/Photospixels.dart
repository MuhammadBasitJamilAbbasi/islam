class PhotoPixels {
  int totalResults;
  int page;
  int perPage;
  List<Photo> photos;
  String nextPage;

  PhotoPixels({
    required this.totalResults,
    required this.page,
    required this.perPage,
    required this.photos,
    required this.nextPage,
  });
  factory PhotoPixels.fromJson(Map<String, dynamic> json) {
    final List<dynamic> photosList = json['photos'];
    final List<Photo> photos = photosList.map((photoJson) => Photo.fromJson(photoJson)).toList();

    return PhotoPixels(
      totalResults: json['total_results'],
      page: json['page'],
      perPage: json['per_page'],
      photos: photos,
      nextPage: json['next_page'],
    );
  }

}

class Photo {
  int id;
  int width;
  int height;
  String url;
  String photographer;
  String photographerUrl;
  int photographerId;
  String avgColor;
  Src src;
  bool liked;
  String alt;

  Photo({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.photographer,
    required this.photographerUrl,
    required this.photographerId,
    required this.avgColor,
    required this.src,
    required this.liked,
    required this.alt,
  });
  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'],
      width: json['width'],
      height: json['height'],
      url: json['url'],
      photographer: json['photographer'],
      photographerUrl: json['photographer_url'],
      photographerId: json['photographer_id'],
      avgColor: json['avg_color'],
      src: Src.fromJson(json['src']),
      liked: json['liked'],
      alt: json['alt'],
    );
  }
}

class Src {
  String original;
  String large2X;
  String large;
  String medium;
  String small;
  String portrait;
  String landscape;
  String tiny;

  Src({
    required this.original,
    required this.large2X,
    required this.large,
    required this.medium,
    required this.small,
    required this.portrait,
    required this.landscape,
    required this.tiny,
  });
  factory Src.fromJson(Map<String, dynamic> json) {
    return Src(
      original: json['original'],
      large2X: json['large2x'],
      large: json['large'],
      medium: json['medium'],
      small: json['small'],
      portrait: json['portrait'],
      landscape: json['landscape'],
      tiny: json['tiny'],
    );
  }
}
