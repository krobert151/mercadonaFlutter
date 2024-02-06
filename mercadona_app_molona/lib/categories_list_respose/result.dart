import 'dart:convert';

import 'category.dart';

class Result {
  int? id;
  String? name;
  int? order;
  int? layout;
  bool? published;
  List<Category>? categories;
  bool? isExtended;

  Result({
    this.id,
    this.name,
    this.order,
    this.layout,
    this.published,
    this.categories,
    this.isExtended,
  });

  factory Result.fromMap(Map<String, dynamic> data) => Result(
        id: data['id'] as int?,
        name: data['name'] as String?,
        order: data['order'] as int?,
        layout: data['layout'] as int?,
        published: data['published'] as bool?,
        categories: (data['categories'] as List<dynamic>?)
            ?.map((e) => Category.fromMap(e as Map<String, dynamic>))
            .toList(),
        isExtended: data['is_extended'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'order': order,
        'layout': layout,
        'published': published,
        'categories': categories?.map((e) => e.toMap()).toList(),
        'is_extended': isExtended,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Result].
  factory Result.fromJson(String data) {
    return Result.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Result] to a JSON string.
  String toJson() => json.encode(toMap());
}
