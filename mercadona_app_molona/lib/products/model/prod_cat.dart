class ProdCadtegoryResponse {
  int? id;
  String? name;
  dynamic order;
  dynamic layout;
  bool? published;
  List<Categories>? categories;
  bool? isExtended;

  ProdCadtegoryResponse(
      {this.id,
      this.name,
      this.order,
      this.layout,
      this.published,
      this.categories,
      this.isExtended});

  ProdCadtegoryResponse.fromJson(Map<String, dynamic> json) {
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
  dynamic order;
  dynamic layout;
  List<Products>? products;
  bool? published;
  bool? isExtended;

  Categories(
      {this.id,
      this.name,
      this.order,
      this.layout,
      this.products,
      this.published,
      this.isExtended});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    order = json['order'];
    layout = json['layout'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
    published = json['published'];
    isExtended = json['is_extended'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['order'] = this.order;
    data['layout'] = this.layout;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['published'] = this.published;
    data['is_extended'] = this.isExtended;
    return data;
  }
}

class Products {
  String? id;
  String? slug;
  dynamic limit;
  Badges? badges;
  String? packaging;
  bool? published;
  String? shareUrl;
  String? thumbnail;
  List<ProductCategory>? categories;
  String? displayName;
  PriceInstructions? priceInstructions;

  Products(
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

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    limit = json['limit'];
    badges =
        json['badges'] != null ? new Badges.fromJson(json['badges']) : null;
    packaging = json['packaging'];
    published = json['published'];
    shareUrl = json['share_url'];
    thumbnail = json['thumbnail'];
    if (json['categories'] != null) {
      categories = <ProductCategory>[];
      json['categories'].forEach((v) {
        categories!.add(new ProductCategory.fromJson(v));
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

class ProductCategory {
  int? id;
  String? name;
  int? level;
  int? order;

  ProductCategory({this.id, this.name, this.level, this.order});

  ProductCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    level = json['level'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['level'] = this.level;
    data['order'] = this.order;
    return data;
  }
}

class PriceInstructions {
  dynamic iva;
  bool? isNew;
  bool? isPack;
  dynamic packSize;
  String? unitName;
  dynamic unitSize;
  String? bulkPrice;
  String? unitPrice;
  bool? approxSize;
  String? sizeFormat;
  dynamic totalUnits;
  bool? unitSelector;
  bool? bunchSelector;
  dynamic sellingMethod;
  bool? priceDecreased;
  String? referencePrice;
  dynamic minBunchAmount;
  String? referenceFormat;
  dynamic incrementBunchAmount;

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
      this.totalUnits,
      this.unitSelector,
      this.bunchSelector,
      this.sellingMethod,
      this.priceDecreased,
      this.referencePrice,
      this.minBunchAmount,
      this.referenceFormat,
      this.incrementBunchAmount});

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
    totalUnits = json['total_units'];
    unitSelector = json['unit_selector'];
    bunchSelector = json['bunch_selector'];
    sellingMethod = json['selling_method'];
    priceDecreased = json['price_decreased'];
    referencePrice = json['reference_price'];
    minBunchAmount = json['min_bunch_amount'];
    referenceFormat = json['reference_format'];
    incrementBunchAmount = json['increment_bunch_amount'];
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
    data['total_units'] = this.totalUnits;
    data['unit_selector'] = this.unitSelector;
    data['bunch_selector'] = this.bunchSelector;
    data['selling_method'] = this.sellingMethod;
    data['price_decreased'] = this.priceDecreased;
    data['reference_price'] = this.referencePrice;
    data['min_bunch_amount'] = this.minBunchAmount;
    data['reference_format'] = this.referenceFormat;
    data['increment_bunch_amount'] = this.incrementBunchAmount;
    return data;
  }
}
