// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketApiResponseDTOImpl _$$MarketApiResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketApiResponseDTOImpl(
      resultCode: (json['resultCode'] as num).toInt(),
      resultMsg: json['resultMsg'] as String,
    );

Map<String, dynamic> _$$MarketApiResponseDTOImplToJson(
        _$MarketApiResponseDTOImpl instance) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'resultMsg': instance.resultMsg,
    };

_$HotItemDTOImpl _$$HotItemDTOImplFromJson(Map<String, dynamic> json) =>
    _$HotItemDTOImpl(
      itemId: (json['itemId'] as num).toInt(),
      enhancementMin: (json['enhancementMin'] as num).toInt(),
      enhancementMax: (json['enhancementMax'] as num).toInt(),
      basePrice: (json['basePrice'] as num).toInt(),
      currentStock: (json['currentStock'] as num).toInt(),
      totalTrades: (json['totalTrades'] as num).toInt(),
      priceChangeDirection: (json['priceChangeDirection'] as num).toInt(),
      priceChangeValue: (json['priceChangeValue'] as num).toInt(),
      priceHardCapMin: (json['priceHardCapMin'] as num).toInt(),
      priceHardCapMax: (json['priceHardCapMax'] as num).toInt(),
      lastSalePrice: (json['lastSalePrice'] as num).toInt(),
      lastSaleTime: (json['lastSaleTime'] as num).toInt(),
    );

Map<String, dynamic> _$$HotItemDTOImplToJson(_$HotItemDTOImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'enhancementMin': instance.enhancementMin,
      'enhancementMax': instance.enhancementMax,
      'basePrice': instance.basePrice,
      'currentStock': instance.currentStock,
      'totalTrades': instance.totalTrades,
      'priceChangeDirection': instance.priceChangeDirection,
      'priceChangeValue': instance.priceChangeValue,
      'priceHardCapMin': instance.priceHardCapMin,
      'priceHardCapMax': instance.priceHardCapMax,
      'lastSalePrice': instance.lastSalePrice,
      'lastSaleTime': instance.lastSaleTime,
    };

_$MarketItemDTOImpl _$$MarketItemDTOImplFromJson(Map<String, dynamic> json) =>
    _$MarketItemDTOImpl(
      itemId: (json['itemId'] as num).toInt(),
      currentStock: (json['currentStock'] as num).toInt(),
      totalTrades: (json['totalTrades'] as num).toInt(),
      basePrice: (json['basePrice'] as num).toInt(),
    );

Map<String, dynamic> _$$MarketItemDTOImplToJson(_$MarketItemDTOImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'currentStock': instance.currentStock,
      'totalTrades': instance.totalTrades,
      'basePrice': instance.basePrice,
    };

_$MarketSubItemDTOImpl _$$MarketSubItemDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketSubItemDTOImpl(
      itemId: (json['itemId'] as num).toInt(),
      enhancementMin: (json['enhancementMin'] as num).toInt(),
      enhancementMax: (json['enhancementMax'] as num).toInt(),
      basePrice: (json['basePrice'] as num).toInt(),
      currentStock: (json['currentStock'] as num).toInt(),
      totalTrades: (json['totalTrades'] as num).toInt(),
      priceHardCapMin: (json['priceHardCapMin'] as num).toInt(),
      priceHardCapMax: (json['priceHardCapMax'] as num).toInt(),
      lastSalePrice: (json['lastSalePrice'] as num).toInt(),
      lastSaleTime: (json['lastSaleTime'] as num).toInt(),
    );

Map<String, dynamic> _$$MarketSubItemDTOImplToJson(
        _$MarketSubItemDTOImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'enhancementMin': instance.enhancementMin,
      'enhancementMax': instance.enhancementMax,
      'basePrice': instance.basePrice,
      'currentStock': instance.currentStock,
      'totalTrades': instance.totalTrades,
      'priceHardCapMin': instance.priceHardCapMin,
      'priceHardCapMax': instance.priceHardCapMax,
      'lastSalePrice': instance.lastSalePrice,
      'lastSaleTime': instance.lastSaleTime,
    };

_$SearchedItemDTOImpl _$$SearchedItemDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchedItemDTOImpl(
      itemId: (json['itemId'] as num).toInt(),
      currentStock: (json['currentStock'] as num).toInt(),
      basePrice: (json['basePrice'] as num).toInt(),
      totalTrades: (json['totalTrades'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchedItemDTOImplToJson(
        _$SearchedItemDTOImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'currentStock': instance.currentStock,
      'basePrice': instance.basePrice,
      'totalTrades': instance.totalTrades,
    };

_$BiddingInfoDTOImpl _$$BiddingInfoDTOImplFromJson(Map<String, dynamic> json) =>
    _$BiddingInfoDTOImpl(
      price: (json['price'] as num).toInt(),
      sellOrders: (json['sellOrders'] as num).toInt(),
      buyOrders: (json['buyOrders'] as num).toInt(),
    );

Map<String, dynamic> _$$BiddingInfoDTOImplToJson(
        _$BiddingInfoDTOImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'sellOrders': instance.sellOrders,
      'buyOrders': instance.buyOrders,
    };

_$MarketPriceInfoDTOImpl _$$MarketPriceInfoDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketPriceInfoDTOImpl(
      priceHistory: (json['priceHistory'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$MarketPriceInfoDTOImplToJson(
        _$MarketPriceInfoDTOImpl instance) =>
    <String, dynamic>{
      'priceHistory': instance.priceHistory,
    };

_$WaitListItemDTOImpl _$$WaitListItemDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$WaitListItemDTOImpl(
      itemId: (json['itemId'] as num).toInt(),
      enhancementLevel: (json['enhancementLevel'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$WaitListItemDTOImplToJson(
        _$WaitListItemDTOImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'enhancementLevel': instance.enhancementLevel,
      'price': instance.price,
      'timestamp': instance.timestamp,
    };
