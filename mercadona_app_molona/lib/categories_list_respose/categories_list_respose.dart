import 'dart:convert';

import 'result.dart';

class CategoriesListRespose {
  dynamic next;
  int? count;
  List<Result>? results;
  dynamic previous;

  CategoriesListRespose({
    this.next,
    this.count,
    this.results,
    this.previous,
  });

  factory CategoriesListRespose.fromMap(Map<String, dynamic> data) {
    return CategoriesListRespose(
      next: data['next'] as dynamic,
      count: data['count'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
          .toList(),
      previous: data['previous'] as dynamic,
    );
  }

  Map<String, dynamic> toMap() => {
        'next': next,
        'count': count,
        'results': results?.map((e) => e.toMap()).toList(),
        'previous': previous,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CategoriesListRespose].
  factory CategoriesListRespose.fromJson(String data) {
    return CategoriesListRespose.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CategoriesListRespose] to a JSON string.
  String toJson() => json.encode(toMap());
}
