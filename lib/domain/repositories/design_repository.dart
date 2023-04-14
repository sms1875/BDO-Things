import 'package:bdo_things/domain/entities/design.dart';

abstract class DesignRepository {
  Future<List<Design>> getDesigns();
}
