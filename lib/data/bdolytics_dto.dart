import 'package:freezed_annotation/freezed_annotation.dart';

part 'bdolytics_dto.freezed.dart';

part 'bdolytics_dto.g.dart';

@freezed
class DesignDTO with _$DesignDTO {
  const factory DesignDTO({
    required int id,
    required String name,
    @JsonKey(name: 'icon_image') required String iconImage,
    required List<IngredientDTO> ingredients,
    required List<IngredientDTO> products,
    @JsonKey(name: 'crafted_in_houses')
    @Default(<CraftedInHouseDTO>[])
    List<CraftedInHouseDTO>? craftedInHouses,
    @JsonKey(name: 'db_type') String? dbType,
  }) = _DesignDTO;

  factory DesignDTO.fromJson(Map<String, dynamic> json) =>
      _$DesignDTOFromJson(json);
}

@freezed
class ItemDTO with _$ItemDTO {
  const factory ItemDTO({
    required int id,
    @JsonKey(name: 'sub_id') int? subId,
    required String name,
    String? description,
    @JsonKey(name: 'icon_image') required String iconImage,
    @JsonKey(name: 'grade_type') required int gradeType,
    required double weight,
    @JsonKey(name: 'buy_price') required int buyPrice,
    @JsonKey(name: 'sell_price') required int sellPrice,
    @JsonKey(name: 'repair_price') int? repairPrice,
    @JsonKey(name: 'has_market_data') bool? hasMarketData,
    @JsonKey(name: 'expiration_period') int? expirationPeriod,
    @JsonKey(name: 'main_category') String? mainCategory,
    @JsonKey(name: 'sub_category') String? subCategory,
    @JsonKey(name: 'db_type') String? dbType,
  }) = _ItemDTO;

  factory ItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ItemDTOFromJson(json);
}

@freezed
class IngredientDTO with _$IngredientDTO {
  const factory IngredientDTO({
    required int id,
    @JsonKey(name: 'sub_id') int? subId,
    required String name,
    @JsonKey(name: 'icon_image') String? iconImage,
    @JsonKey(name: 'grade_type') int? gradeType,
    @JsonKey(name: 'market_main_category') int? marketMainCategory,
    @JsonKey(name: 'db_type') String? dbType,
    int? amount,
    List<int>? amounts,
    @JsonKey(name: 'select_rate') double? selectRate,
    List<List<Condition>>? conditions,
  }) = _IngredientDTO;

  factory IngredientDTO.fromJson(Map<String, dynamic> json) =>
      _$IngredientDTOFromJson(json);
}

@freezed
class CraftedInHouseDTO with _$CraftedInHouseDTO {
  const factory CraftedInHouseDTO({
    int? id,
    String? name,
    @JsonKey(name: 'icon_image') String? iconImage,
    @JsonKey(name: 'db_type') String? dbType,
  }) = _CraftedInHouseDTO;

  factory CraftedInHouseDTO.fromJson(Map<String, dynamic> json) =>
      _$CraftedInHouseDTOFromJson(json);
}

@freezed
class Condition with _$Condition {
  const factory Condition({
    String? text,
    String? suffix,
    String? conditionName,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}
