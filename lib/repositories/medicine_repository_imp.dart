import 'package:small_bean_clinic/models/medicine.dart';
import 'package:small_bean_clinic/repositories/medicine_repository.dart';

class MedicineRepositoryImp implements MedicineRepository {
  List<Medicine> medicineData = [];

  @override
  Future<void> deleteMedicineFromDatabase(Medicine medicine) {
    // TODO: implement deleteMedicineFromDatabase
    throw UnimplementedError();
  }

  @override
  Future<List<Medicine>> fetchMedicinesFromDatabase() {
    // TODO: implement fetchMedicinesFromDatabase
    throw UnimplementedError();
  }

  @override
  Future<void> saveMedicineToDatabase(Medicine medicine) {
    // TODO: implement saveMedicineToDatabase
    throw UnimplementedError();
  }

  @override
  Future<void> updateMedicineInDatabase(Medicine medicine) {
    // TODO: implement updateMedicineInDatabase
    throw UnimplementedError();
  }
}
