import '../../consts/consts.dart';

class MedicinesScreen extends StatelessWidget {
  const MedicinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: secondaryColor,
          child: const Icon(
            Icons.add_outlined,
            size: 30,
            color: bgColor,
          )),
      appBar: AppBar(
        backgroundColor: bg2Color,
        elevation: 0,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 30,
              color: primary2Color,
            )),
        title: const Text(
          medicine,
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.search_outlined,
              size: 30,
              color: secondaryColor,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(
                Icons.qr_code_scanner_outlined,
                size: 30,
                color: secondaryColor,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: bgColor,
          child: Column(
            children: const [Text(appname)],
          ),
        ),
      ),
    );
  }
}
