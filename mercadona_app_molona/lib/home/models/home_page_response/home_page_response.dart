class HomeResponse {
  List<Sections>? sections;

  HomeResponse({this.sections});

  HomeResponse.fromJson(Map<String, dynamic> json) {
    if (json['sections'] != null) {
      sections = <Sections>[];
      json['sections'].forEach((v) {
        sections!.add(new Sections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sections != null) {
      data['sections'] = this.sections!.map((v) => v.toJson()).toList();
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
        json['content'] != null ? new Content.fromJson(json['content']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['layout'] = this.layout;
    if (this.content != null) {
      data['content'] = this.content!.toJson();
    }
    return data;
  }
}

class Content {
  String? title;
  String? subtitle;
  List<Items>? items;
  String? source;
  String? sourceCode;
  String? apiPath;
  String? apiPathText;

  Content(
      {this.title,
      this.subtitle,
      this.items,
      this.source,
      this.sourceCode,
      this.apiPath,
      this.apiPathText});

  Content.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    source = json['source'];
    sourceCode = json['source_code'];
    apiPath = json['api_path'];
    apiPathText = json['api_path_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['source'] = this.source;
    data['source_code'] = this.sourceCode;
    data['api_path'] = this.apiPath;
    data['api_path_text'] = this.apiPathText;
    return data;
  }
}

class Items {
  String? id;
  String? imageUrl;
  String? textColor;
  List<String>? bgColors;
  String? buttonColor;
  String? apiPath;
  String? slug;
  String? limit;
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
      this.imageUrl,
      this.textColor,
      this.bgColors,
      this.buttonColor,
      this.apiPath,
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
    imageUrl = json['image_url'];
    textColor = json['text_color'];
    bgColors = json['bg_colors'].cast<String>();
    buttonColor = json['button_color'];
    apiPath = json['api_path'];
    slug = json['slug'];
    limit = json['limit']?.toString();
    badges =
        json['badges'] != null ? new Badges.fromJson(json['badges']) : null;
    packaging = json['packaging'];
    published = json['published'];
    shareUrl = json['share_url'];
    thumbnail = json['thumbnail'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    displayName = json['display_name'];
    priceInstructions = json['price_instructions'] != null
        ? new PriceInstructions.fromJson(json['price_instructions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image_url'] = this.imageUrl;
    data['text_color'] = this.textColor;
    data['bg_colors'] = this.bgColors;
    data['button_color'] = this.buttonColor;
    data['api_path'] = this.apiPath;
    data['slug'] = this.slug;
    data['limit'] = this.limit;
    if (this.badges != null) {
      data['badges'] = this.badges!.toJson();
    }
    data['packaging'] = this.packaging;
    data['published'] = this.published;
    data['share_url'] = this.shareUrl;
    data['thumbnail'] = this.thumbnail;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    data['display_name'] = this.displayName;
    if (this.priceInstructions != null) {
      data['price_instructions'] = this.priceInstructions!.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_water'] = this.isWater;
    data['requires_age_check'] = this.requiresAgeCheck;
    return data;
  }
}

class Categories {
  int? id;
  String? name;

  Categories({this.id, this.name});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class PriceInstructions {
  int? iva;
  bool? isNew;
  bool? isPack;
  double? packSize;
  String? unitName;
  double? unitSize;
  String? bulkPrice;
  String? unitPrice;
  bool? approxSize;
  String? sizeFormat;
  bool? unitSelector;
  bool? bunchSelector;
  double? drainedWeight;
  bool? priceDecreased;
  String? referencePrice;
  String? referenceFormat;
  String? previousUnitPrice;

  PriceInstructions(
      {this.iva,
      this.isNew,
      this.isPack,
      this.packSize,
      this.unitName,
      this.unitSize,
      this.bulkPrice,
      this.unitPrice,
      this.approxSize,
      this.sizeFormat,
      this.unitSelector,
      this.bunchSelector,
      this.drainedWeight,
      this.priceDecreased,
      this.referencePrice,
      this.referenceFormat,
      this.previousUnitPrice});

  PriceInstructions.fromJson(Map<String, dynamic> json) {
    iva = json['iva'];
    isNew = json['is_new'];
    isPack = json['is_pack'];
    packSize = json['pack_size'];
    unitName = json['unit_name'];
    unitSize = json['unit_size'];
    bulkPrice = json['bulk_price'];
    unitPrice = json['unit_price'];
    approxSize = json['approx_size'];
    sizeFormat = json['size_format'];
    unitSelector = json['unit_selector'];
    bunchSelector = json['bunch_selector'];
    drainedWeight = json['drained_weight'];
    priceDecreased = json['price_decreased'];
    referencePrice = json['reference_price'];
    referenceFormat = json['reference_format'];
    previousUnitPrice = json['previous_unit_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iva'] = this.iva;
    data['is_new'] = this.isNew;
    data['is_pack'] = this.isPack;
    data['pack_size'] = this.packSize;
    data['unit_name'] = this.unitName;
    data['unit_size'] = this.unitSize;
    data['bulk_price'] = this.bulkPrice;
    data['unit_price'] = this.unitPrice;
    data['approx_size'] = this.approxSize;
    data['size_format'] = this.sizeFormat;
    data['unit_selector'] = this.unitSelector;
    data['bunch_selector'] = this.bunchSelector;
    data['drained_weight'] = this.drainedWeight;
    data['price_decreased'] = this.priceDecreased;
    data['reference_price'] = this.referencePrice;
    data['reference_format'] = this.referenceFormat;
    data['previous_unit_price'] = this.previousUnitPrice;
    return data;
  }
}
