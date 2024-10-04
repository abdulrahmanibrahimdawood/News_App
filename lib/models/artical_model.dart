class ArticalModel {
  final String? image;
  final String title;
  final String? description;

  ArticalModel(
      {required this.image, required this.title, required this.description});
  factory ArticalModel.fromJson(json) {
    return ArticalModel(
        image: json['urlToImage'],
        title: json['title'],
        description: json['description']);
  }
}
// class ArticalModel {
//   final String? image;
//   final String title;
//   final String? description;
//   final String? url; // Added URL field

//   ArticalModel({
//     required this.image,
//     required this.title,
//     required this.description,
//     required this.url, // Update constructor
//   });

//   factory ArticalModel.fromJson(json) {
//     return ArticalModel(
//       image: json['urlToImage'],
//       title: json['title'],
//       description: json['description'],
//       url: json['url'], // Initialize URL from JSON
//     );
//   }
// }
