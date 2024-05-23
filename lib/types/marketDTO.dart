// MarketApiResponseDTO
class MarketApiResponseDTO {
  final int resultCode;
  final String resultMsg;

  MarketApiResponseDTO({
    required this.resultCode,
    required this.resultMsg,
  });

  factory MarketApiResponseDTO.fromJson(Map<String, dynamic> json) {
    return MarketApiResponseDTO(
      resultCode: json['resultCode'],
      resultMsg: json['resultMsg'],
    );
  }
}

// HotItemDTO
class HotItemDTO {
  final int itemId;
  final int enhancementMin;
  final int enhancementMax;
  final int basePrice;
  final int currentStock;
  final int totalTrades;
  final int priceChangeDirection;
  final int priceChangeValue;
  final int priceHardCapMin;
  final int priceHardCapMax;
  final int lastSalePrice;
  final int lastSaleTime;

  HotItemDTO({
    required this.itemId,
    required this.enhancementMin,
    required this.enhancementMax,
    required this.basePrice,
    required this.currentStock,
    required this.totalTrades,
    required this.priceChangeDirection,
    required this.priceChangeValue,
    required this.priceHardCapMin,
    required this.priceHardCapMax,
    required this.lastSalePrice,
    required this.lastSaleTime,
  });

  factory HotItemDTO.fromJson(Map<String, dynamic> json) {
    return HotItemDTO(
      itemId: json['itemId'],
      enhancementMin: json['enhancementMin'],
      enhancementMax: json['enhancementMax'],
      basePrice: json['basePrice'],
      currentStock: json['currentStock'],
      totalTrades: json['totalTrades'],
      priceChangeDirection: json['priceChangeDirection'],
      priceChangeValue: json['priceChangeValue'],
      priceHardCapMin: json['priceHardCapMin'],
      priceHardCapMax: json['priceHardCapMax'],
      lastSalePrice: json['lastSalePrice'],
      lastSaleTime: json['lastSaleTime'],
    );
  }
}

// MarketItemDTO
class MarketItemDTO {
  final int itemId;
  final int currentStock;
  final int totalTrades;
  final int basePrice;

  MarketItemDTO({
    required this.itemId,
    required this.currentStock,
    required this.totalTrades,
    required this.basePrice,
  });

  factory MarketItemDTO.fromJson(Map<String, dynamic> json) {
    return MarketItemDTO(
      itemId: json['itemId'],
      currentStock: json['currentStock'],
      totalTrades: json['totalTrades'],
      basePrice: json['basePrice'],
    );
  }
}

// MarketSubItemDTO
class MarketSubItemDTO {
  final int itemId;
  final int enhancementMin;
  final int enhancementMax;
  final int basePrice;
  final int currentStock;
  final int totalTrades;
  final int priceHardCapMin;
  final int priceHardCapMax;
  final int lastSalePrice;
  final int lastSaleTime;

  MarketSubItemDTO({
    required this.itemId,
    required this.enhancementMin,
    required this.enhancementMax,
    required this.basePrice,
    required this.currentStock,
    required this.totalTrades,
    required this.priceHardCapMin,
    required this.priceHardCapMax,
    required this.lastSalePrice,
    required this.lastSaleTime,
  });

  factory MarketSubItemDTO.fromJson(Map<String, dynamic> json) {
    return MarketSubItemDTO(
      itemId: json['itemId'],
      enhancementMin: json['enhancementMin'],
      enhancementMax: json['enhancementMax'],
      basePrice: json['basePrice'],
      currentStock: json['currentStock'],
      totalTrades: json['totalTrades'],
      priceHardCapMin: json['priceHardCapMin'],
      priceHardCapMax: json['priceHardCapMax'],
      lastSalePrice: json['lastSalePrice'],
      lastSaleTime: json['lastSaleTime'],
    );
  }
}

// SearchedItemDTO
class SearchedItemDTO {
  final int itemId;
  final int currentStock;
  final int basePrice;
  final int totalTrades;

  SearchedItemDTO({
    required this.itemId,
    required this.currentStock,
    required this.basePrice,
    required this.totalTrades,
  });

  factory SearchedItemDTO.fromJson(Map<String, dynamic> json) {
    return SearchedItemDTO(
      itemId: json['itemId'],
      currentStock: json['currentStock'],
      basePrice: json['basePrice'],
      totalTrades: json['totalTrades'],
    );
  }
}

// BiddingInfoDTO
class BiddingInfoDTO {
  final int price;
  final int sellOrders;
  final int buyOrders;

  BiddingInfoDTO({
    required this.price,
    required this.sellOrders,
    required this.buyOrders,
  });

  factory BiddingInfoDTO.fromJson(Map<String, dynamic> json) {
    return BiddingInfoDTO(
      price: json['price'],
      sellOrders: json['sellOrders'],
      buyOrders: json['buyOrders'],
    );
  }
}

// MarketPriceInfoDTO
class MarketPriceInfoDTO {
  final List<int> priceHistory;

  MarketPriceInfoDTO({
    required this.priceHistory,
  });

  factory MarketPriceInfoDTO.fromJson(Map<String, dynamic> json) {
    return MarketPriceInfoDTO(
      priceHistory: List<int>.from(json['priceHistory']),
    );
  }
}

// WaitListItemDTO
class WaitListItemDTO {
  final int itemId;
  final int enhancementLevel;
  final int price;
  final int timestamp;

  WaitListItemDTO({
    required this.itemId,
    required this.enhancementLevel,
    required this.price,
    required this.timestamp,
  });

  factory WaitListItemDTO.fromJson(Map<String, dynamic> json) {
    return WaitListItemDTO(
      itemId: json['itemId'],
      enhancementLevel: json['enhancementLevel'],
      price: json['price'],
      timestamp: json['timestamp'],
    );
  }
}