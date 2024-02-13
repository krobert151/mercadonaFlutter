class HomeResponse {
  List<Sections>? sections;

  HomeResponse({this.sections});

  HomeResponse.fromJson(Map<String, dynamic> json) {
    if (json['sections'] != null) {
      sections = <Sections>[];
      json['sections'].forEach((v) {
        sections!.add(Sections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sections != null) {
      data['sections'] = sections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sections {
  String? layout;
  Content? content;

  Sections({this.layout, this.content});

  Sections.fromJson(Map<String, dynamic> json) {
    layout = json['layout'];
    content =
        json['content'] != null ? Content.fromJson(json['content']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['layout'] = layout;
    if (content != null) {
      data['content'] = content!.toJson();
    }
    return data;
  }
}

class Content {
  String? title;
  String? subtitle;
  String? source;
  String? sourceCode;
  List<Items>? items;
  String? apiPath;
  String? apiPathText;

  Content(
      {this.title,
      this.subtitle,
      this.source,
      this.sourceCode,
      this.items,
      this.apiPath,
      this.apiPathText});

  Content.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    source = json['source'];
    sourceCode = json['source_code'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
    apiPath = json['api_path'];
    apiPathText = json['api_path_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['source'] = source;
    data['source_code'] = sourceCode;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['api_path'] = apiPath;
    data['api_path_text'] = apiPathText;
    return data;
  }
}

class Items {
  int? id;
  String? slug;
  int? limit;
  Badges? badges;
  String? packaging;
  bool? published;
  String? shareUrl;
  String? thumbnail;
  List<Categories>? categories;
  String? displayName;
  PriceInstructions? priceInstructions;

  Items(
      {this.id,
      this.slug,
      this.limit,
      this.badges,
      this.packaging,
      this.published,
      this.shareUrl,
      this.thumbnail,
      this.categories,
      this.displayName,
      this.priceInstructions});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    limit = json['limit'];
    badges = json['badges'] != null ? Badges.fromJson(json['badges']) : null;
    packaging = json['packaging'];
    published = json['published'];
    shareUrl = json['share_url'];
    thumbnail = json['thumbnail'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    displayName = json['display_name'];
    priceInstructions = json['price_instructions'] != null
        ? PriceInstructions.fromJson(json['price_instructions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['slug'] = slug;
    data['limit'] = limit;
    if (badges != null) {
      data['badges'] = badges!.toJson();
    }
    data['packaging'] = packaging;
    data['published'] = published;
    data['share_url'] = shareUrl;
    data['thumbnail'] = thumbnail;
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    data['display_name'] = displayName;
    if (priceInstructions != null) {
      data['price_instructions'] = priceInstructions!.toJson();
    }
    return data;
  }
}

class Badges {
  bool? isWater;
  bool? requiresAgeCheck;

  Badges({this.isWater, this.requiresAgeCheck});

  Badges.fromJson(Map<String, dynamic> json) {
    isWater = json['is_water'];
    requiresAgeCheck = json['requires_age_check'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_water'] = isWater;
    data['requires_age_check'] = requiresAgeCheck;
    return data;
  }
}

class Categories {
  int? id;
  String? name;
  int? level;
  int? order;

  Categories({this.id, this.name, this.level, this.order});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    level = json['level'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['level'] = level;
    data['order'] = order;
    return data;
  }
}

class PriceInstructions {
  int? iva;
  bool? isNew;
  bool? isPack;
  int? unitSize;
  String? bulkPrice;
  String? unitPrice;
  bool? approxSize;
  String? sizeFormat;
  bool? unitSelector;
  bool? bunchSelector;
  int? sellingMethod;
  bool? priceDecreased;
  String? referencePrice;
  int? minBunchAmount;
  String? referenceFormat;
  String? previousUnitPrice;
  int? incrementBunchAmount;

  PriceInstructions(
      {this.iva,
      this.isNew,
      this.isPack,
      this.unitSize,
      this.bulkPrice,
      this.unitPrice,
      this.approxSize,
      this.sizeFormat,
      this.unitSelector,
      this.bunchSelector,
      this.sellingMethod,
      this.priceDecreased,
      this.referencePrice,
      this.minBunchAmount,
      this.referenceFormat,
      this.previousUnitPrice,
      this.incrementBunchAmount});

  PriceInstructions.fromJson(Map<String, dynamic> json) {
    iva = json['iva'];
    isNew = json['is_new'];
    isPack = json['is_pack'];
    unitSize = json['unit_size'];
    bulkPrice = json['bulk_price'];
    unitPrice = json['unit_price'];
    approxSize = json['approx_size'];
    sizeFormat = json['size_format'];
    unitSelector = json['unit_selector'];
    bunchSelector = json['bunch_selector'];
    sellingMethod = json['selling_method'];
    priceDecreased = json['price_decreased'];
    referencePrice = json['reference_price'];
    minBunchAmount = json['min_bunch_amount'];
    referenceFormat = json['reference_format'];
    previousUnitPrice = json['previous_unit_price'];
    incrementBunchAmount = json['increment_bunch_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['iva'] = iva;
    data['is_new'] = isNew;
    data['is_pack'] = isPack;
    data['unit_size'] = unitSize;
    data['bulk_price'] = bulkPrice;
    data['unit_price'] = unitPrice;
    data['approx_size'] = approxSize;
    data['size_format'] = sizeFormat;
    data['unit_selector'] = unitSelector;
    data['bunch_selector'] = bunchSelector;
    data['selling_method'] = sellingMethod;
    data['price_decreased'] = priceDecreased;
    data['reference_price'] = referencePrice;
    data['min_bunch_amount'] = minBunchAmount;
    data['reference_format'] = referenceFormat;
    data['previous_unit_price'] = previousUnitPrice;
    data['increment_bunch_amount'] = incrementBunchAmount;
    return data;
  }
}
