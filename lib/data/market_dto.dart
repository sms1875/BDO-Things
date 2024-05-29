import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_dto.freezed.dart';
part 'market_dto.g.dart';

@freezed
class MarketApiResponseDTO with _$MarketApiResponseDTO {
  const factory MarketApiResponseDTO({
    required int resultCode,
    required String resultMsg,
  }) = _MarketApiResponseDTO;

  factory MarketApiResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$MarketApiResponseDTOFromJson(json);
}

@freezed
class HotItemDTO with _$HotItemDTO {
  const factory HotItemDTO({
    required int itemId,
    required int enhancementMin,
    required int enhancementMax,
    required int basePrice,
    required int currentStock,
    required int totalTrades,
    required int priceChangeDirection,
    required int priceChangeValue,
    required int priceHardCapMin,
    required int priceHardCapMax,
    required int lastSalePrice,
    required int lastSaleTime,
  }) = _HotItemDTO;

  factory HotItemDTO.fromJson(Map<String, dynamic> json) =>
      _$HotItemDTOFromJson(json);
}

@freezed
class MarketItemDTO with _$MarketItemDTO {
  const factory MarketItemDTO({
    required int itemId,
    required int currentStock,
    required int totalTrades,
    required int basePrice,
  }) = _MarketItemDTO;

  factory MarketItemDTO.fromJson(Map<String, dynamic> json) =>
      _$MarketItemDTOFromJson(json);
}

@freezed
class MarketSubItemDTO with _$MarketSubItemDTO {
  const factory MarketSubItemDTO({
    required int itemId,
    required int enhancementMin,
    required int enhancementMax,
    required int basePrice,
    required int currentStock,
    required int totalTrades,
    required int priceHardCapMin,
    required int priceHardCapMax,
    required int lastSalePrice,
    required int lastSaleTime,
  }) = _MarketSubItemDTO;

  factory MarketSubItemDTO.fromJson(Map<String, dynamic> json) =>
      _$MarketSubItemDTOFromJson(json);
}

@freezed
class SearchedItemDTO with _$SearchedItemDTO {
  const factory SearchedItemDTO({
    required int itemId,
    required int currentStock,
    required int basePrice,
    required int totalTrades,
  }) = _SearchedItemDTO;

  factory SearchedItemDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchedItemDTOFromJson(json);
}

@freezed
class BiddingInfoDTO with _$BiddingInfoDTO {
  const factory BiddingInfoDTO({
    required int price,
    required int sellOrders,
    required int buyOrders,
  }) = _BiddingInfoDTO;

  factory BiddingInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$BiddingInfoDTOFromJson(json);
}

@freezed
class MarketPriceInfoDTO with _$MarketPriceInfoDTO {
  const factory MarketPriceInfoDTO({
    required List<int> priceHistory,
  }) = _MarketPriceInfoDTO;

  factory MarketPriceInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$MarketPriceInfoDTOFromJson(json);
}

@freezed
class WaitListItemDTO with _$WaitListItemDTO {
  const factory WaitListItemDTO({
    required int itemId,
    required int enhancementLevel,
    required int price,
    required int timestamp,
  }) = _WaitListItemDTO;

  factory WaitListItemDTO.fromJson(Map<String, dynamic> json) =>
      _$WaitListItemDTOFromJson(json);
}
