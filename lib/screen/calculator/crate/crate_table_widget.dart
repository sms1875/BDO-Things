import 'package:bdo_things/provider/crate_design_provider.dart';
import 'package:bdo_things/provider/life_skill_level_provider.dart';
import 'package:bdo_things/provider/trade_routes_provider.dart';
import 'package:bdo_things/screen/common/widget/fetch_webp_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CrateTableWidget extends StatefulWidget {
  const CrateTableWidget({super.key});

  @override
  State<CrateTableWidget> createState() => _CrateTableWidgetState();
}

class _CrateTableWidgetState extends State<CrateTableWidget> {
  bool _isSortedAscending = false;
  int _sortColumnIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Consumer3<CrateDesignProvider, TradeRoutesProvider,
        LifeSkillLevelProvider>(
      builder: (context, crateDesignProvider, tradeRoutesProvider,
          lifeSkillLevelProvider, child) {
        if (crateDesignProvider.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        return Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                '※ 재료의 거래소 기준 가격으로 계산되었습니다.',
                style: TextStyle(color: Colors.red),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                showCheckboxColumn: false,
                dataRowMaxHeight: 60.0,
                sortColumnIndex: _sortColumnIndex,
                sortAscending: _isSortedAscending,
                columns: [
                  const DataColumn(label: Text('')),
                  const DataColumn(label: Text('이름')),
                  const DataColumn(label: Text('제작 비용')),
                  const DataColumn(label: Text('판매 가격')),
                  DataColumn(
                    label: const Text('수익'),
                    onSort: (columnIndex, ascending) {
                      setState(() {
                        _sortColumnIndex = columnIndex;
                        _isSortedAscending = ascending;
                        crateDesignProvider.sortByProfit(
                            ascending,
                            lifeSkillLevelProvider.selectedLevel,
                            tradeRoutesProvider.getDistanceBonus());
                      });
                    },
                  ),
                ],
                rows: crateDesignProvider.designs
                    .map((design) => DataRow(
                          cells: [
                            DataCell(
                              SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: FetchWebpImageWidget(
                                    imageFuture: crateDesignProvider
                                        .getImage(design.iconImage),
                                  )),
                            ),
                            DataCell(Text(design.name)),
                            DataCell(Text(crateDesignProvider
                                .getTotalIngredientsMarketPrice(design)
                                .toString())),
                            DataCell(Text(crateDesignProvider
                                .calculateSellingPrice(
                                    design,
                                    crateDesignProvider.calculateLifeSkillBonus(
                                        lifeSkillLevelProvider.selectedLevel),
                                    tradeRoutesProvider.getDistanceBonus())
                                .toString())),
                            DataCell(
                              Text(
                                crateDesignProvider
                                    .getProfit(
                                        design,
                                        crateDesignProvider
                                            .calculateLifeSkillBonus(
                                                lifeSkillLevelProvider
                                                    .selectedLevel),
                                        tradeRoutesProvider.getDistanceBonus())
                                    .toString(),
                                style: TextStyle(
                                  color: crateDesignProvider.getProfit(
                                              design,
                                              crateDesignProvider
                                                  .calculateLifeSkillBonus(
                                                      lifeSkillLevelProvider
                                                          .selectedLevel),
                                              tradeRoutesProvider
                                                  .getDistanceBonus()) >=
                                          0
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                            ),
                          ],
                          onSelectChanged: (selected) {
                            if (selected != null && selected) {
                              context.go('/calculator/crate/${design.id}');
                            }
                          },
                        ))
                    .toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
