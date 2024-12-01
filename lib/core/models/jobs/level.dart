import 'package:equatable/equatable.dart';

class Level extends Equatable {
  final String? name;
  final String? shortName;

  const Level({this.name, this.shortName});

  factory Level.fromJson(Map<String, dynamic> json) => Level(
        name: json['name'] as String?,
        shortName: json['short_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'short_name': shortName,
      };

  @override
  List<Object?> get props => [name, shortName];
}
