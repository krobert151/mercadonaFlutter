import 'dart:convert';

class Category {
  int? id;
  String? name;
  int? order;
  int? layout;
  bool? published;
  bool? isExtended;

  Category({
    this.id,
    this.name,
    this.order,
    this.layout,
    this.published,
    this.isExtended,
  });

  factory Category.fromMap(Map<String, dynamic> data) => Category(
        id: data['id'] as int?,
        name: data['name'] as String?,
        order: data['order'] as int?,
        layout: data['layout'] as int?,
        published: data['published'] as bool?,
        isExtended: data['is_extended'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'order': order,
        'layout': layout,
        'published': published,
        'is_extended': isExtended,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Category].
  factory Category.fromJson(String data) {
    return Category.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Category] to a JSON string.
  String toJson() => json.encode(toMap());
}
