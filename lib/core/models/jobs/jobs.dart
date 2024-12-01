import 'package:equatable/equatable.dart';

import 'company.dart';
import 'level.dart';
import 'location.dart';
import 'refs.dart';

class Jobs extends Equatable {
  final String? contents;
  final String? name;
  final String? type;
  final String? publicationDate;
  final String? shortName;
  final String? modelType;
  final int? id;
  final List<Location>? locations;
  final List<dynamic>? categories;
  final List<Level>? levels;
  final List<dynamic>? tags;
  final Refs? refs;
  final Company? company;

  const Jobs({
    this.contents,
    this.name,
    this.type,
    this.publicationDate,
    this.shortName,
    this.modelType,
    this.id,
    this.locations,
    this.categories,
    this.levels,
    this.tags,
    this.refs,
    this.company,
  });

  factory Jobs.fromJson(Map<String, dynamic> json) => Jobs(
        contents: json['contents'] as String?,
        name: json['name'] as String?,
        type: json['type'] as String?,
        publicationDate: json['publication_date'] as String?,
        shortName: json['short_name'] as String?,
        modelType: json['model_type'] as String?,
        id: json['id'] as int?,
        locations: (json['locations'] as List<dynamic>?)
            ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
            .toList(),
        categories: json['categories'] as List<dynamic>?,
        levels: (json['levels'] as List<dynamic>?)
            ?.map((e) => Level.fromJson(e as Map<String, dynamic>))
            .toList(),
        tags: json['tags'] as List<dynamic>?,
        refs: json['refs'] == null
            ? null
            : Refs.fromJson(json['refs'] as Map<String, dynamic>),
        company: json['company'] == null
            ? null
            : Company.fromJson(json['company'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'contents': contents,
        'name': name,
        'type': type,
        'publication_date': publicationDate,
        'short_name': shortName,
        'model_type': modelType,
        'id': id,
        'locations': locations?.map((e) => e.toJson()).toList(),
        'categories': categories,
        'levels': levels?.map((e) => e.toJson()).toList(),
        'tags': tags,
        'refs': refs?.toJson(),
        'company': company?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      contents,
      name,
      type,
      publicationDate,
      shortName,
      modelType,
      id,
      locations,
      categories,
      levels,
      tags,
      refs,
      company,
    ];
  }
}
