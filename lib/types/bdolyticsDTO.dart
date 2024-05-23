class Design {
  final int id;
  final String name;
  final String iconImage;
  final List<Ingredient> ingredients;
  final List<Product> products;
  final String dbType;

  Design({
    required this.id,
    required this.name,
    required this.iconImage,
    required this.ingredients,
    required this.products,
    required this.dbType,
  });

  factory Design.fromJson(Map<String, dynamic> json) {
    return Design(
      id: json['id'],
      name: json['name'],
      iconImage: json['icon_image'],
      ingredients: List<Ingredient>.from(json['ingredients'].map((x) => Ingredient.fromJson(x))),
      products: List<Product>.from(json['products'].map((x) => Product.fromJson(x))),
      dbType: json['db_type'],
    );
  }
}

class Ingredient {
  final int id;
  final int? subId;
  final String name;
  final String iconImage;
  final int? gradeType;
  final int? marketMainCategory;
  final String dbType;
  final int? amount;

  Ingredient({
    required this.id,
    this.subId,
    required this.name,
    required this.iconImage,
    this.gradeType,
    this.marketMainCategory,
    required this.dbType,
    this.amount,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      id: json['id'],
      subId: json['sub_id'],
      name: json['name'],
      iconImage: json['icon_image'],
      gradeType: json['grade_type'],
      marketMainCategory: json['market_main_category'],
      dbType: json['db_type'],
      amount: json['amount'],
    );
  }
}

class Product {
  final int id;
  final String name;
  final String iconImage;
  final int? gradeType;
  final int? subId;
  final int? marketMainCategory;
  final String dbType;

  Product({
    required this.id,
    required this.name,
    required this.iconImage,
    this.gradeType,
    this.subId,
    this.marketMainCategory,
    required this.dbType,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      iconImage: json['icon_image'],
      gradeType: json['grade_type'],
      subId: json['sub_id'],
      marketMainCategory: json['market_main_category'],
      dbType: json['db_type'],
    );
  }
}