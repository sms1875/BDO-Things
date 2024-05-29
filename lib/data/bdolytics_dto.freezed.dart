// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bdolytics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DesignDTO _$DesignDTOFromJson(Map<String, dynamic> json) {
  return _DesignDTO.fromJson(json);
}

/// @nodoc
mixin _$DesignDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_image')
  String get iconImage => throw _privateConstructorUsedError;
  List<IngredientDTO> get ingredients => throw _privateConstructorUsedError;
  List<IngredientDTO> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'crafted_in_houses')
  List<CraftedInHouseDTO>? get craftedInHouses =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'db_type')
  String? get dbType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignDTOCopyWith<DesignDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignDTOCopyWith<$Res> {
  factory $DesignDTOCopyWith(DesignDTO value, $Res Function(DesignDTO) then) =
      _$DesignDTOCopyWithImpl<$Res, DesignDTO>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'icon_image') String iconImage,
      List<IngredientDTO> ingredients,
      List<IngredientDTO> products,
      @JsonKey(name: 'crafted_in_houses')
      List<CraftedInHouseDTO>? craftedInHouses,
      @JsonKey(name: 'db_type') String? dbType});
}

/// @nodoc
class _$DesignDTOCopyWithImpl<$Res, $Val extends DesignDTO>
    implements $DesignDTOCopyWith<$Res> {
  _$DesignDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? iconImage = null,
    Object? ingredients = null,
    Object? products = null,
    Object? craftedInHouses = freezed,
    Object? dbType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconImage: null == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientDTO>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<IngredientDTO>,
      craftedInHouses: freezed == craftedInHouses
          ? _value.craftedInHouses
          : craftedInHouses // ignore: cast_nullable_to_non_nullable
              as List<CraftedInHouseDTO>?,
      dbType: freezed == dbType
          ? _value.dbType
          : dbType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesignDTOImplCopyWith<$Res>
    implements $DesignDTOCopyWith<$Res> {
  factory _$$DesignDTOImplCopyWith(
          _$DesignDTOImpl value, $Res Function(_$DesignDTOImpl) then) =
      __$$DesignDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'icon_image') String iconImage,
      List<IngredientDTO> ingredients,
      List<IngredientDTO> products,
      @JsonKey(name: 'crafted_in_houses')
      List<CraftedInHouseDTO>? craftedInHouses,
      @JsonKey(name: 'db_type') String? dbType});
}

/// @nodoc
class __$$DesignDTOImplCopyWithImpl<$Res>
    extends _$DesignDTOCopyWithImpl<$Res, _$DesignDTOImpl>
    implements _$$DesignDTOImplCopyWith<$Res> {
  __$$DesignDTOImplCopyWithImpl(
      _$DesignDTOImpl _value, $Res Function(_$DesignDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? iconImage = null,
    Object? ingredients = null,
    Object? products = null,
    Object? craftedInHouses = freezed,
    Object? dbType = freezed,
  }) {
    return _then(_$DesignDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconImage: null == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientDTO>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<IngredientDTO>,
      craftedInHouses: freezed == craftedInHouses
          ? _value._craftedInHouses
          : craftedInHouses // ignore: cast_nullable_to_non_nullable
              as List<CraftedInHouseDTO>?,
      dbType: freezed == dbType
          ? _value.dbType
          : dbType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignDTOImpl implements _DesignDTO {
  const _$DesignDTOImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'icon_image') required this.iconImage,
      required final List<IngredientDTO> ingredients,
      required final List<IngredientDTO> products,
      @JsonKey(name: 'crafted_in_houses')
      final List<CraftedInHouseDTO>? craftedInHouses =
          const <CraftedInHouseDTO>[],
      @JsonKey(name: 'db_type') this.dbType})
      : _ingredients = ingredients,
        _products = products,
        _craftedInHouses = craftedInHouses;

  factory _$DesignDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'icon_image')
  final String iconImage;
  final List<IngredientDTO> _ingredients;
  @override
  List<IngredientDTO> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<IngredientDTO> _products;
  @override
  List<IngredientDTO> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<CraftedInHouseDTO>? _craftedInHouses;
  @override
  @JsonKey(name: 'crafted_in_houses')
  List<CraftedInHouseDTO>? get craftedInHouses {
    final value = _craftedInHouses;
    if (value == null) return null;
    if (_craftedInHouses is EqualUnmodifiableListView) return _craftedInHouses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'db_type')
  final String? dbType;

  @override
  String toString() {
    return 'DesignDTO(id: $id, name: $name, iconImage: $iconImage, ingredients: $ingredients, products: $products, craftedInHouses: $craftedInHouses, dbType: $dbType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconImage, iconImage) ||
                other.iconImage == iconImage) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._craftedInHouses, _craftedInHouses) &&
            (identical(other.dbType, dbType) || other.dbType == dbType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      iconImage,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_craftedInHouses),
      dbType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignDTOImplCopyWith<_$DesignDTOImpl> get copyWith =>
      __$$DesignDTOImplCopyWithImpl<_$DesignDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignDTOImplToJson(
      this,
    );
  }
}

abstract class _DesignDTO implements DesignDTO {
  const factory _DesignDTO(
      {required final int id,
      required final String name,
      @JsonKey(name: 'icon_image') required final String iconImage,
      required final List<IngredientDTO> ingredients,
      required final List<IngredientDTO> products,
      @JsonKey(name: 'crafted_in_houses')
      final List<CraftedInHouseDTO>? craftedInHouses,
      @JsonKey(name: 'db_type') final String? dbType}) = _$DesignDTOImpl;

  factory _DesignDTO.fromJson(Map<String, dynamic> json) =
      _$DesignDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'icon_image')
  String get iconImage;
  @override
  List<IngredientDTO> get ingredients;
  @override
  List<IngredientDTO> get products;
  @override
  @JsonKey(name: 'crafted_in_houses')
  List<CraftedInHouseDTO>? get craftedInHouses;
  @override
  @JsonKey(name: 'db_type')
  String? get dbType;
  @override
  @JsonKey(ignore: true)
  _$$DesignDTOImplCopyWith<_$DesignDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDTO _$ItemDTOFromJson(Map<String, dynamic> json) {
  return _ItemDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_id')
  int? get subId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_image')
  String get iconImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade_type')
  int get gradeType => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'buy_price')
  int get buyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'sell_price')
  int get sellPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'repair_price')
  int? get repairPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_market_data')
  bool? get hasMarketData => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiration_period')
  int? get expirationPeriod => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_category')
  String? get mainCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_category')
  String? get subCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'db_type')
  String? get dbType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDTOCopyWith<ItemDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDTOCopyWith<$Res> {
  factory $ItemDTOCopyWith(ItemDTO value, $Res Function(ItemDTO) then) =
      _$ItemDTOCopyWithImpl<$Res, ItemDTO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'sub_id') int? subId,
      String name,
      String? description,
      @JsonKey(name: 'icon_image') String iconImage,
      @JsonKey(name: 'grade_type') int gradeType,
      double weight,
      @JsonKey(name: 'buy_price') int buyPrice,
      @JsonKey(name: 'sell_price') int sellPrice,
      @JsonKey(name: 'repair_price') int? repairPrice,
      @JsonKey(name: 'has_market_data') bool? hasMarketData,
      @JsonKey(name: 'expiration_period') int? expirationPeriod,
      @JsonKey(name: 'main_category') String? mainCategory,
      @JsonKey(name: 'sub_category') String? subCategory,
      @JsonKey(name: 'db_type') String? dbType});
}

/// @nodoc
class _$ItemDTOCopyWithImpl<$Res, $Val extends ItemDTO>
    implements $ItemDTOCopyWith<$Res> {
  _$ItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? iconImage = null,
    Object? gradeType = null,
    Object? weight = null,
    Object? buyPrice = null,
    Object? sellPrice = null,
    Object? repairPrice = freezed,
    Object? hasMarketData = freezed,
    Object? expirationPeriod = freezed,
    Object? mainCategory = freezed,
    Object? subCategory = freezed,
    Object? dbType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subId: freezed == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      iconImage: null == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String,
      gradeType: null == gradeType
          ? _value.gradeType
          : gradeType // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      buyPrice: null == buyPrice
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: null == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int,
      repairPrice: freezed == repairPrice
          ? _value.repairPrice
          : repairPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMarketData: freezed == hasMarketData
          ? _value.hasMarketData
          : hasMarketData // ignore: cast_nullable_to_non_nullable
              as bool?,
      expirationPeriod: freezed == expirationPeriod
          ? _value.expirationPeriod
          : expirationPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      mainCategory: freezed == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      dbType: freezed == dbType
          ? _value.dbType
          : dbType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemDTOImplCopyWith<$Res> implements $ItemDTOCopyWith<$Res> {
  factory _$$ItemDTOImplCopyWith(
          _$ItemDTOImpl value, $Res Function(_$ItemDTOImpl) then) =
      __$$ItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'sub_id') int? subId,
      String name,
      String? description,
      @JsonKey(name: 'icon_image') String iconImage,
      @JsonKey(name: 'grade_type') int gradeType,
      double weight,
      @JsonKey(name: 'buy_price') int buyPrice,
      @JsonKey(name: 'sell_price') int sellPrice,
      @JsonKey(name: 'repair_price') int? repairPrice,
      @JsonKey(name: 'has_market_data') bool? hasMarketData,
      @JsonKey(name: 'expiration_period') int? expirationPeriod,
      @JsonKey(name: 'main_category') String? mainCategory,
      @JsonKey(name: 'sub_category') String? subCategory,
      @JsonKey(name: 'db_type') String? dbType});
}

/// @nodoc
class __$$ItemDTOImplCopyWithImpl<$Res>
    extends _$ItemDTOCopyWithImpl<$Res, _$ItemDTOImpl>
    implements _$$ItemDTOImplCopyWith<$Res> {
  __$$ItemDTOImplCopyWithImpl(
      _$ItemDTOImpl _value, $Res Function(_$ItemDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? iconImage = null,
    Object? gradeType = null,
    Object? weight = null,
    Object? buyPrice = null,
    Object? sellPrice = null,
    Object? repairPrice = freezed,
    Object? hasMarketData = freezed,
    Object? expirationPeriod = freezed,
    Object? mainCategory = freezed,
    Object? subCategory = freezed,
    Object? dbType = freezed,
  }) {
    return _then(_$ItemDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subId: freezed == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      iconImage: null == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String,
      gradeType: null == gradeType
          ? _value.gradeType
          : gradeType // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      buyPrice: null == buyPrice
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: null == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int,
      repairPrice: freezed == repairPrice
          ? _value.repairPrice
          : repairPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      hasMarketData: freezed == hasMarketData
          ? _value.hasMarketData
          : hasMarketData // ignore: cast_nullable_to_non_nullable
              as bool?,
      expirationPeriod: freezed == expirationPeriod
          ? _value.expirationPeriod
          : expirationPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
      mainCategory: freezed == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      dbType: freezed == dbType
          ? _value.dbType
          : dbType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDTOImpl implements _ItemDTO {
  const _$ItemDTOImpl(
      {required this.id,
      @JsonKey(name: 'sub_id') this.subId,
      required this.name,
      this.description,
      @JsonKey(name: 'icon_image') required this.iconImage,
      @JsonKey(name: 'grade_type') required this.gradeType,
      required this.weight,
      @JsonKey(name: 'buy_price') required this.buyPrice,
      @JsonKey(name: 'sell_price') required this.sellPrice,
      @JsonKey(name: 'repair_price') this.repairPrice,
      @JsonKey(name: 'has_market_data') this.hasMarketData,
      @JsonKey(name: 'expiration_period') this.expirationPeriod,
      @JsonKey(name: 'main_category') this.mainCategory,
      @JsonKey(name: 'sub_category') this.subCategory,
      @JsonKey(name: 'db_type') this.dbType});

  factory _$ItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemDTOImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'sub_id')
  final int? subId;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'icon_image')
  final String iconImage;
  @override
  @JsonKey(name: 'grade_type')
  final int gradeType;
  @override
  final double weight;
  @override
  @JsonKey(name: 'buy_price')
  final int buyPrice;
  @override
  @JsonKey(name: 'sell_price')
  final int sellPrice;
  @override
  @JsonKey(name: 'repair_price')
  final int? repairPrice;
  @override
  @JsonKey(name: 'has_market_data')
  final bool? hasMarketData;
  @override
  @JsonKey(name: 'expiration_period')
  final int? expirationPeriod;
  @override
  @JsonKey(name: 'main_category')
  final String? mainCategory;
  @override
  @JsonKey(name: 'sub_category')
  final String? subCategory;
  @override
  @JsonKey(name: 'db_type')
  final String? dbType;

  @override
  String toString() {
    return 'ItemDTO(id: $id, subId: $subId, name: $name, description: $description, iconImage: $iconImage, gradeType: $gradeType, weight: $weight, buyPrice: $buyPrice, sellPrice: $sellPrice, repairPrice: $repairPrice, hasMarketData: $hasMarketData, expirationPeriod: $expirationPeriod, mainCategory: $mainCategory, subCategory: $subCategory, dbType: $dbType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subId, subId) || other.subId == subId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconImage, iconImage) ||
                other.iconImage == iconImage) &&
            (identical(other.gradeType, gradeType) ||
                other.gradeType == gradeType) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.repairPrice, repairPrice) ||
                other.repairPrice == repairPrice) &&
            (identical(other.hasMarketData, hasMarketData) ||
                other.hasMarketData == hasMarketData) &&
            (identical(other.expirationPeriod, expirationPeriod) ||
                other.expirationPeriod == expirationPeriod) &&
            (identical(other.mainCategory, mainCategory) ||
                other.mainCategory == mainCategory) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.dbType, dbType) || other.dbType == dbType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      subId,
      name,
      description,
      iconImage,
      gradeType,
      weight,
      buyPrice,
      sellPrice,
      repairPrice,
      hasMarketData,
      expirationPeriod,
      mainCategory,
      subCategory,
      dbType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemDTOImplCopyWith<_$ItemDTOImpl> get copyWith =>
      __$$ItemDTOImplCopyWithImpl<_$ItemDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDTOImplToJson(
      this,
    );
  }
}

abstract class _ItemDTO implements ItemDTO {
  const factory _ItemDTO(
      {required final int id,
      @JsonKey(name: 'sub_id') final int? subId,
      required final String name,
      final String? description,
      @JsonKey(name: 'icon_image') required final String iconImage,
      @JsonKey(name: 'grade_type') required final int gradeType,
      required final double weight,
      @JsonKey(name: 'buy_price') required final int buyPrice,
      @JsonKey(name: 'sell_price') required final int sellPrice,
      @JsonKey(name: 'repair_price') final int? repairPrice,
      @JsonKey(name: 'has_market_data') final bool? hasMarketData,
      @JsonKey(name: 'expiration_period') final int? expirationPeriod,
      @JsonKey(name: 'main_category') final String? mainCategory,
      @JsonKey(name: 'sub_category') final String? subCategory,
      @JsonKey(name: 'db_type') final String? dbType}) = _$ItemDTOImpl;

  factory _ItemDTO.fromJson(Map<String, dynamic> json) = _$ItemDTOImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'sub_id')
  int? get subId;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'icon_image')
  String get iconImage;
  @override
  @JsonKey(name: 'grade_type')
  int get gradeType;
  @override
  double get weight;
  @override
  @JsonKey(name: 'buy_price')
  int get buyPrice;
  @override
  @JsonKey(name: 'sell_price')
  int get sellPrice;
  @override
  @JsonKey(name: 'repair_price')
  int? get repairPrice;
  @override
  @JsonKey(name: 'has_market_data')
  bool? get hasMarketData;
  @override
  @JsonKey(name: 'expiration_period')
  int? get expirationPeriod;
  @override
  @JsonKey(name: 'main_category')
  String? get mainCategory;
  @override
  @JsonKey(name: 'sub_category')
  String? get subCategory;
  @override
  @JsonKey(name: 'db_type')
  String? get dbType;
  @override
  @JsonKey(ignore: true)
  _$$ItemDTOImplCopyWith<_$ItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IngredientDTO _$IngredientDTOFromJson(Map<String, dynamic> json) {
  return _IngredientDTO.fromJson(json);
}

/// @nodoc
mixin _$IngredientDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_id')
  int? get subId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_image')
  String? get iconImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade_type')
  int? get gradeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_main_category')
  int? get marketMainCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'db_type')
  String? get dbType => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  List<int>? get amounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'select_rate')
  double? get selectRate => throw _privateConstructorUsedError;
  List<List<Condition>>? get conditions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientDTOCopyWith<IngredientDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientDTOCopyWith<$Res> {
  factory $IngredientDTOCopyWith(
          IngredientDTO value, $Res Function(IngredientDTO) then) =
      _$IngredientDTOCopyWithImpl<$Res, IngredientDTO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'sub_id') int? subId,
      String name,
      @JsonKey(name: 'icon_image') String? iconImage,
      @JsonKey(name: 'grade_type') int? gradeType,
      @JsonKey(name: 'market_main_category') int? marketMainCategory,
      @JsonKey(name: 'db_type') String? dbType,
      int? amount,
      List<int>? amounts,
      @JsonKey(name: 'select_rate') double? selectRate,
      List<List<Condition>>? conditions});
}

/// @nodoc
class _$IngredientDTOCopyWithImpl<$Res, $Val extends IngredientDTO>
    implements $IngredientDTOCopyWith<$Res> {
  _$IngredientDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subId = freezed,
    Object? name = null,
    Object? iconImage = freezed,
    Object? gradeType = freezed,
    Object? marketMainCategory = freezed,
    Object? dbType = freezed,
    Object? amount = freezed,
    Object? amounts = freezed,
    Object? selectRate = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subId: freezed == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconImage: freezed == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String?,
      gradeType: freezed == gradeType
          ? _value.gradeType
          : gradeType // ignore: cast_nullable_to_non_nullable
              as int?,
      marketMainCategory: freezed == marketMainCategory
          ? _value.marketMainCategory
          : marketMainCategory // ignore: cast_nullable_to_non_nullable
              as int?,
      dbType: freezed == dbType
          ? _value.dbType
          : dbType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      amounts: freezed == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      selectRate: freezed == selectRate
          ? _value.selectRate
          : selectRate // ignore: cast_nullable_to_non_nullable
              as double?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<List<Condition>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientDTOImplCopyWith<$Res>
    implements $IngredientDTOCopyWith<$Res> {
  factory _$$IngredientDTOImplCopyWith(
          _$IngredientDTOImpl value, $Res Function(_$IngredientDTOImpl) then) =
      __$$IngredientDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'sub_id') int? subId,
      String name,
      @JsonKey(name: 'icon_image') String? iconImage,
      @JsonKey(name: 'grade_type') int? gradeType,
      @JsonKey(name: 'market_main_category') int? marketMainCategory,
      @JsonKey(name: 'db_type') String? dbType,
      int? amount,
      List<int>? amounts,
      @JsonKey(name: 'select_rate') double? selectRate,
      List<List<Condition>>? conditions});
}

/// @nodoc
class __$$IngredientDTOImplCopyWithImpl<$Res>
    extends _$IngredientDTOCopyWithImpl<$Res, _$IngredientDTOImpl>
    implements _$$IngredientDTOImplCopyWith<$Res> {
  __$$IngredientDTOImplCopyWithImpl(
      _$IngredientDTOImpl _value, $Res Function(_$IngredientDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subId = freezed,
    Object? name = null,
    Object? iconImage = freezed,
    Object? gradeType = freezed,
    Object? marketMainCategory = freezed,
    Object? dbType = freezed,
    Object? amount = freezed,
    Object? amounts = freezed,
    Object? selectRate = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_$IngredientDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subId: freezed == subId
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconImage: freezed == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String?,
      gradeType: freezed == gradeType
          ? _value.gradeType
          : gradeType // ignore: cast_nullable_to_non_nullable
              as int?,
      marketMainCategory: freezed == marketMainCategory
          ? _value.marketMainCategory
          : marketMainCategory // ignore: cast_nullable_to_non_nullable
              as int?,
      dbType: freezed == dbType
          ? _value.dbType
          : dbType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      amounts: freezed == amounts
          ? _value._amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      selectRate: freezed == selectRate
          ? _value.selectRate
          : selectRate // ignore: cast_nullable_to_non_nullable
              as double?,
      conditions: freezed == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<List<Condition>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientDTOImpl implements _IngredientDTO {
  const _$IngredientDTOImpl(
      {required this.id,
      @JsonKey(name: 'sub_id') this.subId,
      required this.name,
      @JsonKey(name: 'icon_image') this.iconImage,
      @JsonKey(name: 'grade_type') this.gradeType,
      @JsonKey(name: 'market_main_category') this.marketMainCategory,
      @JsonKey(name: 'db_type') this.dbType,
      this.amount,
      final List<int>? amounts,
      @JsonKey(name: 'select_rate') this.selectRate,
      final List<List<Condition>>? conditions})
      : _amounts = amounts,
        _conditions = conditions;

  factory _$IngredientDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientDTOImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'sub_id')
  final int? subId;
  @override
  final String name;
  @override
  @JsonKey(name: 'icon_image')
  final String? iconImage;
  @override
  @JsonKey(name: 'grade_type')
  final int? gradeType;
  @override
  @JsonKey(name: 'market_main_category')
  final int? marketMainCategory;
  @override
  @JsonKey(name: 'db_type')
  final String? dbType;
  @override
  final int? amount;
  final List<int>? _amounts;
  @override
  List<int>? get amounts {
    final value = _amounts;
    if (value == null) return null;
    if (_amounts is EqualUnmodifiableListView) return _amounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'select_rate')
  final double? selectRate;
  final List<List<Condition>>? _conditions;
  @override
  List<List<Condition>>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IngredientDTO(id: $id, subId: $subId, name: $name, iconImage: $iconImage, gradeType: $gradeType, marketMainCategory: $marketMainCategory, dbType: $dbType, amount: $amount, amounts: $amounts, selectRate: $selectRate, conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subId, subId) || other.subId == subId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconImage, iconImage) ||
                other.iconImage == iconImage) &&
            (identical(other.gradeType, gradeType) ||
                other.gradeType == gradeType) &&
            (identical(other.marketMainCategory, marketMainCategory) ||
                other.marketMainCategory == marketMainCategory) &&
            (identical(other.dbType, dbType) || other.dbType == dbType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality().equals(other._amounts, _amounts) &&
            (identical(other.selectRate, selectRate) ||
                other.selectRate == selectRate) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      subId,
      name,
      iconImage,
      gradeType,
      marketMainCategory,
      dbType,
      amount,
      const DeepCollectionEquality().hash(_amounts),
      selectRate,
      const DeepCollectionEquality().hash(_conditions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientDTOImplCopyWith<_$IngredientDTOImpl> get copyWith =>
      __$$IngredientDTOImplCopyWithImpl<_$IngredientDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientDTOImplToJson(
      this,
    );
  }
}

abstract class _IngredientDTO implements IngredientDTO {
  const factory _IngredientDTO(
      {required final int id,
      @JsonKey(name: 'sub_id') final int? subId,
      required final String name,
      @JsonKey(name: 'icon_image') final String? iconImage,
      @JsonKey(name: 'grade_type') final int? gradeType,
      @JsonKey(name: 'market_main_category') final int? marketMainCategory,
      @JsonKey(name: 'db_type') final String? dbType,
      final int? amount,
      final List<int>? amounts,
      @JsonKey(name: 'select_rate') final double? selectRate,
      final List<List<Condition>>? conditions}) = _$IngredientDTOImpl;

  factory _IngredientDTO.fromJson(Map<String, dynamic> json) =
      _$IngredientDTOImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'sub_id')
  int? get subId;
  @override
  String get name;
  @override
  @JsonKey(name: 'icon_image')
  String? get iconImage;
  @override
  @JsonKey(name: 'grade_type')
  int? get gradeType;
  @override
  @JsonKey(name: 'market_main_category')
  int? get marketMainCategory;
  @override
  @JsonKey(name: 'db_type')
  String? get dbType;
  @override
  int? get amount;
  @override
  List<int>? get amounts;
  @override
  @JsonKey(name: 'select_rate')
  double? get selectRate;
  @override
  List<List<Condition>>? get conditions;
  @override
  @JsonKey(ignore: true)
  _$$IngredientDTOImplCopyWith<_$IngredientDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CraftedInHouseDTO _$CraftedInHouseDTOFromJson(Map<String, dynamic> json) {
  return _CraftedInHouseDTO.fromJson(json);
}

/// @nodoc
mixin _$CraftedInHouseDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_image')
  String? get iconImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'db_type')
  String? get dbType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftedInHouseDTOCopyWith<CraftedInHouseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftedInHouseDTOCopyWith<$Res> {
  factory $CraftedInHouseDTOCopyWith(
          CraftedInHouseDTO value, $Res Function(CraftedInHouseDTO) then) =
      _$CraftedInHouseDTOCopyWithImpl<$Res, CraftedInHouseDTO>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'icon_image') String? iconImage,
      @JsonKey(name: 'db_type') String? dbType});
}

/// @nodoc
class _$CraftedInHouseDTOCopyWithImpl<$Res, $Val extends CraftedInHouseDTO>
    implements $CraftedInHouseDTOCopyWith<$Res> {
  _$CraftedInHouseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iconImage = freezed,
    Object? dbType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iconImage: freezed == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String?,
      dbType: freezed == dbType
          ? _value.dbType
          : dbType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CraftedInHouseDTOImplCopyWith<$Res>
    implements $CraftedInHouseDTOCopyWith<$Res> {
  factory _$$CraftedInHouseDTOImplCopyWith(_$CraftedInHouseDTOImpl value,
          $Res Function(_$CraftedInHouseDTOImpl) then) =
      __$$CraftedInHouseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'icon_image') String? iconImage,
      @JsonKey(name: 'db_type') String? dbType});
}

/// @nodoc
class __$$CraftedInHouseDTOImplCopyWithImpl<$Res>
    extends _$CraftedInHouseDTOCopyWithImpl<$Res, _$CraftedInHouseDTOImpl>
    implements _$$CraftedInHouseDTOImplCopyWith<$Res> {
  __$$CraftedInHouseDTOImplCopyWithImpl(_$CraftedInHouseDTOImpl _value,
      $Res Function(_$CraftedInHouseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? iconImage = freezed,
    Object? dbType = freezed,
  }) {
    return _then(_$CraftedInHouseDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iconImage: freezed == iconImage
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String?,
      dbType: freezed == dbType
          ? _value.dbType
          : dbType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CraftedInHouseDTOImpl implements _CraftedInHouseDTO {
  const _$CraftedInHouseDTOImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'icon_image') this.iconImage,
      @JsonKey(name: 'db_type') this.dbType});

  factory _$CraftedInHouseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CraftedInHouseDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'icon_image')
  final String? iconImage;
  @override
  @JsonKey(name: 'db_type')
  final String? dbType;

  @override
  String toString() {
    return 'CraftedInHouseDTO(id: $id, name: $name, iconImage: $iconImage, dbType: $dbType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CraftedInHouseDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconImage, iconImage) ||
                other.iconImage == iconImage) &&
            (identical(other.dbType, dbType) || other.dbType == dbType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, iconImage, dbType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CraftedInHouseDTOImplCopyWith<_$CraftedInHouseDTOImpl> get copyWith =>
      __$$CraftedInHouseDTOImplCopyWithImpl<_$CraftedInHouseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CraftedInHouseDTOImplToJson(
      this,
    );
  }
}

abstract class _CraftedInHouseDTO implements CraftedInHouseDTO {
  const factory _CraftedInHouseDTO(
          {final int? id,
          final String? name,
          @JsonKey(name: 'icon_image') final String? iconImage,
          @JsonKey(name: 'db_type') final String? dbType}) =
      _$CraftedInHouseDTOImpl;

  factory _CraftedInHouseDTO.fromJson(Map<String, dynamic> json) =
      _$CraftedInHouseDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'icon_image')
  String? get iconImage;
  @override
  @JsonKey(name: 'db_type')
  String? get dbType;
  @override
  @JsonKey(ignore: true)
  _$$CraftedInHouseDTOImplCopyWith<_$CraftedInHouseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return _Condition.fromJson(json);
}

/// @nodoc
mixin _$Condition {
  String? get text => throw _privateConstructorUsedError;
  String? get suffix => throw _privateConstructorUsedError;
  String? get conditionName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionCopyWith<Condition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) then) =
      _$ConditionCopyWithImpl<$Res, Condition>;
  @useResult
  $Res call({String? text, String? suffix, String? conditionName});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res, $Val extends Condition>
    implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? suffix = freezed,
    Object? conditionName = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionName: freezed == conditionName
          ? _value.conditionName
          : conditionName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionImplCopyWith<$Res>
    implements $ConditionCopyWith<$Res> {
  factory _$$ConditionImplCopyWith(
          _$ConditionImpl value, $Res Function(_$ConditionImpl) then) =
      __$$ConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? suffix, String? conditionName});
}

/// @nodoc
class __$$ConditionImplCopyWithImpl<$Res>
    extends _$ConditionCopyWithImpl<$Res, _$ConditionImpl>
    implements _$$ConditionImplCopyWith<$Res> {
  __$$ConditionImplCopyWithImpl(
      _$ConditionImpl _value, $Res Function(_$ConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? suffix = freezed,
    Object? conditionName = freezed,
  }) {
    return _then(_$ConditionImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      conditionName: freezed == conditionName
          ? _value.conditionName
          : conditionName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionImpl implements _Condition {
  const _$ConditionImpl({this.text, this.suffix, this.conditionName});

  factory _$ConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionImplFromJson(json);

  @override
  final String? text;
  @override
  final String? suffix;
  @override
  final String? conditionName;

  @override
  String toString() {
    return 'Condition(text: $text, suffix: $suffix, conditionName: $conditionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.conditionName, conditionName) ||
                other.conditionName == conditionName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, suffix, conditionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      __$$ConditionImplCopyWithImpl<_$ConditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionImplToJson(
      this,
    );
  }
}

abstract class _Condition implements Condition {
  const factory _Condition(
      {final String? text,
      final String? suffix,
      final String? conditionName}) = _$ConditionImpl;

  factory _Condition.fromJson(Map<String, dynamic> json) =
      _$ConditionImpl.fromJson;

  @override
  String? get text;
  @override
  String? get suffix;
  @override
  String? get conditionName;
  @override
  @JsonKey(ignore: true)
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
