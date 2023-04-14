import 'package:bdo_things/domain/entities/design.dart';
import 'package:bdo_things/domain/repositories/design_repository.dart';

class DesignUseCase {
  final DesignRepository _designRepository;

  DesignUseCase({required DesignRepository designRepository})
      : _designRepository = designRepository;

  Future<List<Design>> fetchDesigns() async {
    return await _designRepository.getDesigns();
  }
}
