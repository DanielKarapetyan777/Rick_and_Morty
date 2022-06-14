class User {
  final int id;
  final String name;
  final String spacies;
  final String type;
  final String gender;
  final String image;
  final DateTime created;

  User({
    required this.created,
    required this.gender,
    required this.id,
    required this.image,
    required this.name,
    required this.spacies,
    required this.type,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        created: json['created'],
        gender: json['gender'],
        id: json['id'],
        image: json['image'],
        name: json['name'],
        spacies: json['spacies'],
        type: json['type']);
  }
}
