import 'dart:typed_data';
import 'package:bdo_things/repository/get_item_image_repository.dart';

class ImageService {
  final GetItemImageRepository _imageRepository = GetItemImageRepository();

  Future<Uint8List> fetchImage(String itemId) async {
    final parts = itemId.split('/');
    final parsingId = parts.last;
    return await _imageRepository.fetchItemImage(parsingId);
  }
}
