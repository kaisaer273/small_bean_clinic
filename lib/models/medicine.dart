import 'dart:convert';

class Medicine {
  String name;
  String ingredient;
  String image;
  double purchasePrice;
  double sellingPrice;
  bool isAvailable;
  String? sku;
  String? barcode;
  String unit;
  String notes = "";
  DateTime createdAt;

  Medicine({
    required this.name,
    required this.ingredient,
    required this.image,
    required this.purchasePrice,
    required this.sellingPrice,
    required this.isAvailable,
    required this.unit,
    required notes,
    required createdAt,
    required sku,
  }) : createdAt = DateTime.now();
}

List<Medicine> parseMedicines(String jsonString) {
  final parsed = json.decode(jsonString);
  return List<Medicine>.from(parsed.map((medicineJson) => Medicine(
        name: medicineJson['name'],
        ingredient: medicineJson['ingredient'],
        image: medicineJson['image'],
        purchasePrice: medicineJson['purchasePrice'],
        sellingPrice: medicineJson['sellingPrice'],
        isAvailable: medicineJson['isAvailable'],
        sku: medicineJson['sku'],
        notes: medicineJson['notes'],
        createdAt: medicineJson['creatAt'],
        unit: '',
      )));
}
