import 'dart:typed_data';
import 'package:bdo_things/image_service.dart';
import 'package:flutter/material.dart';
import 'package:bdo_things/repository/crate_design_repository.dart';
import 'package:bdo_things/repository/ingredients_market_price_repository.dart';
import 'package:bdo_things/data/market_dto.dart';
import 'package:bdo_things/data/bdolytics_dto.dart';

class CrateDesignProvider with ChangeNotifier {
  final CrateDesignRepository _designRepository = CrateDesignRepository();
  final IngredientsMarketPriceRepository _ingredientsMarketPriceRepository =
  IngredientsMarketPriceRepository();
  final ImageService _imageService = ImageService();

  List<DesignDTO> _designs = [];
  Map<int, ItemDTO> _productsMap = {};
  Map<int, SearchedItemDTO> _ingredientsMarketPriceMap = {};
  final Map<String, Uint8List> _imageCache = {};

  bool _isLoading = false;
  Object? _error;

  List<DesignDTO> get designs => _designs;

  Map<int, SearchedItemDTO> get ingredientsMarketPriceMap =>
      _ingredientsMarketPriceMap;

  bool get isLoading => _isLoading;

  CrateDesignProvider() {
    _loadData();
  }

  Future<void> _loadData() async {
    _isLoading = true;

    try {
      _designs = await _designRepository.getCrateDesigns();
      _productsMap = {
        for (var product in await _designRepository.getCrateProducts())
          product.id: product
      };
      _ingredientsMarketPriceMap = {
        for (var ingredient in await _ingredientsMarketPriceRepository
            .getIngredientsMarketPrice())
          ingredient.itemId: ingredient
      };

      //이미지 캐싱
      for (var design in _designs) {
        await getImage(design.iconImage);
      }

      // 기본 정렬 : lifeSkillLevelProvider.selectedLevel, tradeRoutesProvider.getDistanceBonus() 초기값
      sortByProfit(false, 60, 2.13);

    } catch (e) {
      _error = e;
      print(_error);
    }

    _isLoading = false;
    notifyListeners();
  }

  int getProfit(DesignDTO data, double bargainBonus, double distanceBonus) {
    int totalIngredientsMarketPrice = getTotalIngredientsMarketPrice(data);
    int sellPrice = calculateSellingPrice(data, bargainBonus, distanceBonus);
    return sellPrice - totalIngredientsMarketPrice;
  }

  int getTotalIngredientsMarketPrice(DesignDTO data) {
    int price = 0;
    for (var item in data.ingredients) {
      price += _ingredientsMarketPriceMap[item.id]!.basePrice * (item.amount!);
    }
    return price;
  }

  int calculateSellingPrice(
      DesignDTO data, double bargainBonus, double distanceBonus) {
    int productId = data.products.first.id;
    ItemDTO product = _productsMap[productId]!;
    int originalPrice = product.buyPrice;
    if ((data.name.contains("X5") || data.name.contains("x5"))) {
      originalPrice *= 5;
    }
    int sellingPrice = (originalPrice * distanceBonus * bargainBonus).toInt();
    return sellingPrice;
  }

  double calculateLifeSkillBonus(int lifeSkillLevel) {
    const double defaultBonus = 1.05;
    const double tradeLevelBonusMultiplier = 0.005;
    return defaultBonus + tradeLevelBonusMultiplier * lifeSkillLevel;
  }

  void sortByProfit(bool ascending, int selectedLevel, double distanceBonus) {
    _designs.sort((a, b) {
      int profitA =
      getProfit(a, calculateLifeSkillBonus(selectedLevel), distanceBonus);
      int profitB =
      getProfit(b, calculateLifeSkillBonus(selectedLevel), distanceBonus);
      return ascending
          ? profitA.compareTo(profitB)
          : profitB.compareTo(profitA);
    });
    notifyListeners();
  }

  Future<Uint8List> getImage(String itemId) async {
    final parts = itemId.split('/');
    final parsingId = parts.last;

    if (_imageCache.containsKey(parsingId)) {
      return _imageCache[parsingId]!;
    }

    final imageData = await _imageService.fetchImage(itemId);
    _imageCache[parsingId] = imageData;
    return imageData;
  }
}
