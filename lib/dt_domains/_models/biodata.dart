part of '_index.dart';

class Biodata {
  final String id;
  final String name;
  final String level;
  final String quotes;
  final String study;
  final int grade;
  final String createdAt;
  final String imageUrl;
  Biodata({
    this.id = '',
    this.name = '',
    this.level = '',
    this.quotes = '',
    this.study = '',
    this.grade = 0,
    this.createdAt = '',
    this.imageUrl = '',
  });

  Biodata copyWith({
    String? id,
    String? name,
    String? level,
    String? quotes,
    String? study,
    int? grade,
    String? createdAt,
    String? imageUrl,
  }) {
    return Biodata(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
      quotes: quotes ?? this.quotes,
      study: study ?? this.study,
      grade: grade ?? this.grade,
      createdAt: createdAt ?? this.createdAt,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'level': level});
    result.addAll({'quotes': quotes});
    result.addAll({'study': study});
    result.addAll({'grade': grade});
    result.addAll({'created_at': createdAt});
    result.addAll({'image_url': imageUrl});

    return result;
  }

  factory Biodata.fromMap(Map<String, dynamic> map) {
    return Biodata(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      level: map['level'] ?? '',
      quotes: map['quotes'] ?? '',
      study: map['study'] ?? '',
      grade: map['grade']?.toInt() ?? 0,
      createdAt: map['created_at'] ?? '',
      imageUrl: map['image_url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Biodata.fromJson(String source) => Biodata.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Biodata(id: $id, name: $name, level: $level, quotes: $quotes, study: $study, grade: $grade, createdAt: $createdAt, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Biodata &&
        other.id == id &&
        other.name == name &&
        other.level == level &&
        other.quotes == quotes &&
        other.study == study &&
        other.grade == grade &&
        other.createdAt == createdAt &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        level.hashCode ^
        quotes.hashCode ^
        study.hashCode ^
        grade.hashCode ^
        createdAt.hashCode ^
        imageUrl.hashCode;
  }
}
