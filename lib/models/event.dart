import 'dart:convert';

class Event {
  final String? id ;
  final String title;
  final String description;
  final String image;
  final int memberNumber;
  final String location;

  const Event({
     this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.memberNumber,
    required this.location,
  });


  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'image': image,
      'memberNumber': memberNumber,
      'location': location,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: map['_id'],
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      image: map['image'],
      memberNumber: map['memberNumber']?.toInt() ?? 0,
      location: map['location'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Event.fromJson(String source) => Event.fromMap(json.decode(source));

  Event copyWith({
    String? title,
    String? description,
    String? image,
    int? memberNumber,
    String? location,
  }) {
    return Event(
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      memberNumber: memberNumber ?? this.memberNumber,
      location: location ?? this.location,
    );
  }
}
