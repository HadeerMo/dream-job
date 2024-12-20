import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String? name;

  const Location({this.name});

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
      };

  @override
  List<Object?> get props => [name];
}
