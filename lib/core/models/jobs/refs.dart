import 'package:equatable/equatable.dart';

class Refs extends Equatable {
  final String? landingPage;

  const Refs({this.landingPage});

  factory Refs.fromJson(Map<String, dynamic> json) => Refs(
        landingPage: json['landing_page'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'landing_page': landingPage,
      };

  @override
  List<Object?> get props => [landingPage];
}
