// desgin_calculate_service.dart
import 'package:bdo_things/constants.dart';
import 'package:bdo_things/repository/design_repository.dart';
import 'package:bdo_things/types/bdolyticsDTO.dart';

class DesignCalculateService {
  final DesignRepository _designRepository = DesignRepository();

  Future<List<Design>> fetchDesigns() async {
    return await _designRepository.getDesigns();
  }

  Future<List<Map<String, dynamic>>> calculateCrateData(List<Design> designs, String originRoute, String destinationRoute) async {
    return await Future.wait(designs.map((design) async {
      final materials = design.ingredients;
      int materialsTotalPrice = 0;
      for (int i = 0; i < materials.length; i++) {
        final material = materials[i];
        materialsTotalPrice += (material.amount) as int;
      }
      int saleprice = calculateSellingPrice(design.id, originRoute, destinationRoute);
      return {
        'id': design.id,
        'name': design.name,
        'sale_price': saleprice,
        'profit': saleprice - materialsTotalPrice,
        'profit_per': (saleprice - materialsTotalPrice) / design.id,
        'materialsTotalPrice': materialsTotalPrice,
      };
    }));
  }

  int calculateSellingPrice(int originalPrice, String originRoute, String destinationRoute) {
    const double defaultBonus = 0.05;
    const double tradeLevelBonusMultiplier = 0.005;
    double tradeLevelBonus = defaultBonus + 40 * tradeLevelBonusMultiplier;
    num distanceBonus = CONSTANTS.distanceBonus[originRoute]?[destinationRoute] ?? 0;
    int sellingPrice = ((originalPrice) * ((1 + distanceBonus) * (1 + tradeLevelBonus))).toInt();
    return sellingPrice;
  }
}
