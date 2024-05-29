// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bdolytics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DesignDTOImpl _$$DesignDTOImplFromJson(Map<String, dynamic> json) =>
    _$DesignDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      iconImage: json['icon_image'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => IngredientDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>)
          .map((e) => IngredientDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      craftedInHouses: (json['crafted_in_houses'] as List<dynamic>?)
              ?.map(
                  (e) => CraftedInHouseDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CraftedInHouseDTO>[],
      dbType: json['db_type'] as String?,
    );

Map<String, dynamic> _$$DesignDTOImplToJson(_$DesignDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon_image': instance.iconImage,
      'ingredients': instance.ingredients,
      'products': instance.products,
      'crafted_in_houses': instance.craftedInHouses,
      'db_type': instance.dbType,
    };

_$ItemDTOImpl _$$ItemDTOImplFromJson(Map<String, dynamic> json) =>
    _$ItemDTOImpl(
      id: (json['id'] as num).toInt(),
      subId: (json['sub_id'] as num?)?.toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      iconImage: json['icon_image'] as String,
      gradeType: (json['grade_type'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
      buyPrice: (json['buy_price'] as num).toInt(),
      sellPrice: (json['sell_price'] as num).toInt(),
      repairPrice: (json['repair_price'] as num?)?.toInt(),
      hasMarketData: json['has_market_data'] as bool?,
      expirationPeriod: (json['expiration_period'] as num?)?.toInt(),
      mainCategory: json['main_category'] as String?,
      subCategory: json['sub_category'] as String?,
      dbType: json['db_type'] as String?,
    );

Map<String, dynamic> _$$ItemDTOImplToJson(_$ItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sub_id': instance.subId,
      'name': instance.name,
      'description': instance.description,
      'icon_image': instance.iconImage,
      'grade_type': instance.gradeType,
      'weight': instance.weight,
      'buy_price': instance.buyPrice,
      'sell_price': instance.sellPrice,
      'repair_price': instance.repairPrice,
      'has_market_data': instance.hasMarketData,
      'expiration_period': instance.expirationPeriod,
      'main_category': instance.mainCategory,
      'sub_category': instance.subCategory,
      'db_type': instance.dbType,
    };

_$IngredientDTOImpl _$$IngredientDTOImplFromJson(Map<String, dynamic> json) =>
    _$IngredientDTOImpl(
      id: (json['id'] as num).toInt(),
      subId: (json['sub_id'] as num?)?.toInt(),
      name: json['name'] as String,
      iconImage: json['icon_image'] as String?,
      gradeType: (json['grade_type'] as num?)?.toInt(),
      marketMainCategory: (json['market_main_category'] as num?)?.toInt(),
      dbType: json['db_type'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      amounts: (json['amounts'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      selectRate: (json['select_rate'] as num?)?.toDouble(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => Condition.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$IngredientDTOImplToJson(_$IngredientDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sub_id': instance.subId,
      'name': instance.name,
      'icon_image': instance.iconImage,
      'grade_type': instance.gradeType,
      'market_main_category': instance.marketMainCategory,
      'db_type': instance.dbType,
      'amount': instance.amount,
      'amounts': instance.amounts,
      'select_rate': instance.selectRate,
      'conditions': instance.conditions,
    };

_$CraftedInHouseDTOImpl _$$CraftedInHouseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CraftedInHouseDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      iconImage: json['icon_image'] as String?,
      dbType: json['db_type'] as String?,
    );

Map<String, dynamic> _$$CraftedInHouseDTOImplToJson(
        _$CraftedInHouseDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon_image': instance.iconImage,
      'db_type': instance.dbType,
    };

_$ConditionImpl _$$ConditionImplFromJson(Map<String, dynamic> json) =>
    _$ConditionImpl(
      text: json['text'] as String?,
      suffix: json['suffix'] as String?,
      conditionName: json['conditionName'] as String?,
    );

Map<String, dynamic> _$$ConditionImplToJson(_$ConditionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'suffix': instance.suffix,
      'conditionName': instance.conditionName,
    };
