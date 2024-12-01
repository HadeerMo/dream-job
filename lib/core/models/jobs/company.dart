import 'package:equatable/equatable.dart';

class Company extends Equatable {
  final int? id;
  final String? shortName;
  final String? name;

  const Company({this.id, this.shortName, this.name});

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        id: json['id'] as int?,
        shortName: json['short_name'] as String?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'short_name': shortName,
        'name': name,
      };

  @override
  List<Object?> get props => [id, shortName, name];
}
