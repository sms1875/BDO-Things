import 'package:bdo_things/image_service.dart';
import 'package:bdo_things/provider/crate_design_provider.dart';
import 'package:bdo_things/provider/life_skill_level_provider.dart';
import 'package:bdo_things/provider/trade_routes_provider.dart';
import 'package:bdo_things/screen/common/widget/fetch_webp_image_widget.dart';
import 'package:bdo_things/data/bdolytics_dto.dart';
import 'package:bdo_things/data/market_dto.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class DesignDetailWidget extends StatefulWidget {
  final int designId;

  const DesignDetailWidget({super.key, required this.designId});

  @override
  State<DesignDetailWidget> createState() => _CrateDetailPageState();
}

class _CrateDetailPageState extends State<DesignDetailWidget> {
  final Map<int, TextEditingController> _priceControllers = {};

  final NumberFormat currencyFormat = NumberFormat("#,##0");
  final NumberFormat multiplierFormat = NumberFormat("#.00");

  @override
  void dispose() {
    for (var controller in _priceControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer3<CrateDesignProvider, LifeSkillLevelProvider,
        TradeRoutesProvider>(
      builder: (context, crateDesignProvider, lifeSkillLevelProvider,
          tradeRoutesProvider, child) {
        if (crateDesignProvider.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        final design = crateDesignProvider.designs
            .firstWhere((design) => design.id == widget.designId);
        final lifeSkillBonus = crateDesignProvider
            .calculateLifeSkillBonus(lifeSkillLevelProvider.selectedLevel);
        final distanceBonus = tradeRoutesProvider.getTravelCost();
        final baseSellingPrice =
            crateDesignProvider.calculateSellingPrice(design, 1.0, 1.0);
        final bonusSellingPrice = crateDesignProvider.calculateSellingPrice(
            design, lifeSkillBonus, distanceBonus);

        double calculateTotalMaterialCost() {
          double totalCost = 0.0;
          for (var ingredient in design.ingredients) {
            final basePrice = crateDesignProvider
                    .ingredientsMarketPriceMap[ingredient.id]?.basePrice ??
                0;
            final priceController = _priceControllers[ingredient.id];
            final price =
                (priceController != null && priceController.text.isNotEmpty)
                    ? double.tryParse(priceController.text) ?? basePrice
                    : basePrice;
            totalCost += price * ingredient.amount!;
          }
          return totalCost;
        }

        final totalMaterialCost = calculateTotalMaterialCost();
        final profit = bonusSellingPrice - totalMaterialCost;

        final additionalEntries = [
          MapEntry('무역품 가격', {'value': baseSellingPrice, 'format': currencyFormat}),
          MapEntry('거리 보너스', {'value': distanceBonus, 'format': multiplierFormat}),
          MapEntry('무역 레벨 보너스', {'value': lifeSkillBonus, 'format': multiplierFormat}),
          MapEntry('판매 가격', {'value': bonusSellingPrice, 'format': currencyFormat}),
          MapEntry('판매 결과', {
            'value': profit,
            'style': TextStyle(
              color: profit >= 0 ? Colors.green : Colors.red,
            ),
            'format': currencyFormat,
          }),
        ];

        return Column(
          children: [
            buildIngredientsList(crateDesignProvider.ingredientsMarketPriceMap,
                design, totalMaterialCost),
            buildPriceAndProfitSection(
              additionalEntries,
            ),
          ],
        );
      },
    );
  }

  Widget buildIngredientsList(
      Map<int, SearchedItemDTO> ingredientsMarketPriceMap,
      DesignDTO design,
      num totalMaterialCost) {
    final ImageService imageService = ImageService();
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('아이템'),
            ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: FetchWebpImageWidget(
                  imageFuture: imageService
                      .fetchImage(design.products.first.iconImage ?? ""),
                ),
              ),
              title: Text(design.products.first.name),
            ),
            const Text('제작 재료'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: design.ingredients.length,
              itemBuilder: (context, index) {
                final ingredient = design.ingredients[index];
                final basePrice =
                    ingredientsMarketPriceMap[ingredient.id]?.basePrice ?? 0;
                _priceControllers.putIfAbsent(ingredient.id,
                    () => TextEditingController(text: basePrice.toString()));
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: SizedBox(
                                width: 40,
                                height: 40,
                                child: FetchWebpImageWidget(
                                  imageFuture: imageService
                                      .fetchImage(ingredient.iconImage ?? ""),
                                ),
                              ),
                              title: Text(ingredient.name),
                            ),
                            TextField(
                              controller: _priceControllers[ingredient.id],
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                hintText: basePrice.toString(),
                                icon: const Text('재료 가격: '),
                              ),
                            ),
                            Text(
                              '거래소 등록 개수: ${ingredientsMarketPriceMap[ingredient.id]?.currentStock}',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('제작 비용'),
              trailing: Text(currencyFormat.format(totalMaterialCost)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPriceAndProfitSection(
      List<MapEntry<String, dynamic>> additionalEntries,
      ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...additionalEntries.map(
                  (entry) {
                final value = entry.value!['value'];
                final style = entry.value!['style'] as TextStyle?;
                final format = entry.value!['format'] as NumberFormat?;
                final formattedValue = format != null ? format.format(value) : value.toString();

                return ListTile(
                  title: Text(entry.key),
                  trailing: Text(
                    formattedValue,
                    style: style,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
