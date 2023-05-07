class Design {
  final int id;
  final String name;
  final int originalPrice;
  final List<dynamic> materials;

  Design({
    required this.id,
    required this.name,
    required this.originalPrice,
    required this.materials,
  });

  factory Design.fromMap(Map<String, dynamic> map) {
    return Design(
      id: map['id'] as int,
      name: map['name'] as String,
      originalPrice: map['price'] as int,
      materials: (map['materials'] as List<dynamic>)
          .map((material) => MaterialItem.fromMap(material as Map<String, dynamic>))
          .toList(),
      /*
      id: map['id']['stringValue'],
      name: map['name']['stringValue'],
      originalPrice: int.parse(map['original_price']['integerValue']),
      materials: map['materials']['arrayValue']['values']
          .map((material) => material['mapValue']['fields'])
          .map((material) => MaterialItem(
        materialItemId: material['materials_id']['stringValue'],
        amount: int.parse(material['amount']['integerValue']),
      )).toList(),
      */
    );
  }
}

class MaterialItem {
  final int materialItemId;
  final int amount;

  MaterialItem({
    required this.materialItemId,
    required this.amount,
  });

  factory MaterialItem.fromMap(Map<String, dynamic> map) {
    return MaterialItem(
      materialItemId: map['id'] as int,
      amount: map['count'] as int,
    );
  }
}