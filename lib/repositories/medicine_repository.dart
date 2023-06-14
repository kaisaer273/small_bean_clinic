import 'package:small_bean_clinic/models/medicine.dart';

abstract class MedicineRepository {
  Future<List<Medicine>> fetchMedicinesFromDatabase();

  Future<void> saveMedicineToDatabase(Medicine medicine);

  Future<void> updateMedicineInDatabase(Medicine medicine);

  Future<void> deleteMedicineFromDatabase(Medicine medicine);
}
