import 'package:equatable/equatable.dart';

class Jobs extends Equatable {
  final int? id;
  final String? url;
  final String? jobSlug;
  final String? jobTitle;
  final String? companyName;
  final String? companyLogo;
  final List<String>? jobIndustry;
  final List<String>? jobType;
  final String? jobGeo;
  final String? jobLevel;
  final String? jobExcerpt;
  final String? jobDescription;
  final String? pubDate;
  final String? annualSalaryMin;
  final String? annualSalaryMax;
  final String? salaryCurrency;

  const Jobs({
    this.id,
    this.url,
    this.jobSlug,
    this.jobTitle,
    this.companyName,
    this.companyLogo,
    this.jobIndustry,
    this.jobType,
    this.jobGeo,
    this.jobLevel,
    this.jobExcerpt,
    this.jobDescription,
    this.pubDate,
    this.annualSalaryMin,
    this.annualSalaryMax,
    this.salaryCurrency,
  });

  factory Jobs.fromJson(Map<String, dynamic> json) => Jobs(
        id: json['id'] as int?,
        url: json['url'] as String?,
        jobSlug: json['jobSlug'] as String?,
        jobTitle: json['jobTitle'] as String?,
        companyName: json['companyName'] as String?,
        companyLogo: json['companyLogo'] as String?,
        jobIndustry: json['jobIndustry'] as List<String>?,
        jobType: json['jobType'] as List<String>?,
        jobGeo: json['jobGeo'] as String?,
        jobLevel: json['jobLevel'] as String?,
        jobExcerpt: json['jobExcerpt'] as String?,
        jobDescription: json['jobDescription'] as String?,
        pubDate: json['pubDate'] as String?,
        annualSalaryMin: json['annualSalaryMin'] as String?,
        annualSalaryMax: json['annualSalaryMax'] as String?,
        salaryCurrency: json['salaryCurrency'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'url': url,
        'jobSlug': jobSlug,
        'jobTitle': jobTitle,
        'companyName': companyName,
        'companyLogo': companyLogo,
        'jobIndustry': jobIndustry,
        'jobType': jobType,
        'jobGeo': jobGeo,
        'jobLevel': jobLevel,
        'jobExcerpt': jobExcerpt,
        'jobDescription': jobDescription,
        'pubDate': pubDate,
        'annualSalaryMin': annualSalaryMin,
        'annualSalaryMax': annualSalaryMax,
        'salaryCurrency': salaryCurrency,
      };

  @override
  List<Object?> get props {
    return [
      id,
      url,
      jobSlug,
      jobTitle,
      companyName,
      companyLogo,
      jobIndustry,
      jobType,
      jobGeo,
      jobLevel,
      jobExcerpt,
      jobDescription,
      pubDate,
      annualSalaryMin,
      annualSalaryMax,
      salaryCurrency,
    ];
  }
}
