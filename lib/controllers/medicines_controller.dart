import 'package:small_bean_clinic/consts/consts.dart';
import 'package:small_bean_clinic/models/medicine.dart';
import 'package:small_bean_clinic/repositories/medicine_repository.dart';
import 'package:small_bean_clinic/repositories/medicine_repository_imp.dart';

class MedicinesController extends GetxController {
  MedicineRepository repository = MedicineRepositoryImp();
  List<Medicine> medicines = [];

  Future<void> fetchMedicines() async {
    medicines = await repository.fetchMedicinesFromDatabase();
    // TODO: Update the view or perform any necessary operations
  }

  Future<void> addMedicine(Medicine medicine) async {
    await repository.saveMedicineToDatabase(medicine);
    // TODO: Update the view or perform any necessary operations
  }

  Future<void> updateMedicine(Medicine medicine) async {
    await repository.updateMedicineInDatabase(medicine);
    // TODO: Update the view or perform any necessary operations
  }

  Future<void> deleteMedicine(Medicine medicine) async {
    await repository.deleteMedicineFromDatabase(medicine);
    // TODO: Update the view or perform any necessary operations
  }
}
