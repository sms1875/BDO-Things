class Design {
  final String id;
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
      id: map['id']['stringValue'],
      name: map['name']['stringValue'],
      originalPrice: int.parse(map['original_price']['integerValue']),
      materials: map['materials']['arrayValue']['values']
          .map((material) => material['mapValue']['fields'])
          .map((material) => MaterialItem(
        materialItemId: material['materials_id']['stringValue'],
        amount: int.parse(material['amount']['integerValue']),
      )).toList(),
    );
  }
}

class MaterialItem {
  final String materialItemId;
  final int amount;

  MaterialItem({
    required this.materialItemId,
    required this.amount,
  });
}
