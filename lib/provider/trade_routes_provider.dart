import 'package:bdo_things/constants.dart';
import 'package:flutter/material.dart';

class TradeRoutesProvider extends ChangeNotifier {
  String _origin = CONSTANTS.routes[10];
  String _destination = CONSTANTS.routes.last;

  String get origin => _origin;

  String get destination => _destination;

  void setOrigin(String value) {
    _origin = value;
    notifyListeners();
  }

  void setDestination(String value) {
    _destination = value;
    notifyListeners();
  }

  double getTravelCost() {
    int originIndex = CONSTANTS.routes.indexOf(_origin);
    int destinationIndex = CONSTANTS.routes.indexOf(_destination);

    if (originIndex == -1 || destinationIndex == -1) {
      throw ArgumentError('Invalid origin name');
    }
    return CONSTANTS.routesDistanceBonusMatrix[originIndex][destinationIndex];
  }
}
