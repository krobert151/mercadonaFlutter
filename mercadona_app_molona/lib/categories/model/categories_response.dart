class CategoriesListResponse {
  String? next;
  int? count;
  List<Category>? results;
  String? previous;

  CategoriesListResponse({this.next, this.count, this.results, this.previous});

  CategoriesListResponse.fromJson(Map<String, dynamic> json) {
    next = json['next'];
    count = json['count'];
    if (json['results'] != null) {
      results = <Category>[];
      json['results'].forEach((v) {
        results!.add(new Category.fromJson(v));
      });
    }
    previous = json['previous'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['next'] = this.next;
    data['count'] = this.count;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['previous'] = this.previous;
    return data;
  }
}

class Category {
  int? id;
  String? name;
  int? order;
  int? layout;
  bool? published;
  List<Categories>? categories;
  bool? isExtended;

  Category(
      {this.id,
      this.name,
      this.order,
      this.layout,
      this.published,
      this.categories,
      this.isExtended});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    order = json['order'];
    layout = json['layout'];
    published = json['published'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    isExtended = json['is_extended'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['order'] = this.order;
    data['layout'] = this.layout;
    data['published'] = this.published;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    data['is_extended'] = this.isExtended;
    return data;
  }
}

class Categories {
  int? id;
  String? name;
  int? order;
  int? layout;
  bool? published;
  bool? isExtended;

  Categories(
      {this.id,
      this.name,
      this.order,
      this.layout,
      this.published,
      this.isExtended});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    order = json['order'];
    layout = json['layout'];
    published = json['published'];
    isExtended = json['is_extended'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['order'] = this.order;
    data['layout'] = this.layout;
    data['published'] = this.published;
    data['is_extended'] = this.isExtended;
    return data;
  }
}
