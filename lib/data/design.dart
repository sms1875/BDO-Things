class Design {
  final int designId; // Renamed 'id' to 'designId'
  final int productId;
  final int productSellPrice;
  final String productName;
  final int productQuantity;
  final List<MaterialItem> materials; // Changed type from List<dynamic> to List<MaterialItem>

  Design({
    required this.designId, // Renamed 'id' to 'designId'
    required this.productId,
    required this.productSellPrice,
    required this.productName,
    required this.productQuantity,
    required this.materials,
  });

  factory Design.fromMap(Map<String, dynamic> map) {
    return Design(
      designId: map['Design ID'] as int, // Changed key from 'id' to 'Design ID'
      productId: map['Product ID'] as int,
      productSellPrice: map['Product Sell Price'] as int,
      productName: map['Product Name'] as String,
      productQuantity: map['Product Quantity'] as int,
      materials: (map['materials'] as List<dynamic>)
          .map((material) => MaterialItem.fromMap(material as Map<String, dynamic>))
          .toList(),
    );
  }
}

class MaterialItem {
  final int materialId;
  final int materialQuantity;
  final int marketPrice;
  final String materialName;

  MaterialItem({
    required this.materialId,
    required this.materialQuantity,
    required this.marketPrice,
    required this.materialName,
  });

  factory MaterialItem.fromMap(Map<String, dynamic> map) {
    return MaterialItem(
      materialId: map['Material ID'] as int,
      materialQuantity: map['Material Quantity'] as int,
      marketPrice: map['Market Price'] as int,
      materialName: map['Material Name'] as String,
    );
  }
}
