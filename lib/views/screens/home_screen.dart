import '../../consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgBackground), fit: BoxFit.cover)),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  _appBar(),
                  _infoBar(),
                ],
              ))),
    );
  }

  Container _infoBar() {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Hôm nay",
                    style: TextStyle(
                      fontFamily: semibold,
                      fontSize: 18,
                      color: darkFontGrey,
                    ),
                  ),
                  Text(
                    "Xem lỗ-lãi >",
                    style: TextStyle(
                      fontFamily: regular,
                      fontSize: 20,
                      color: pinkColor,
                    ),
                  )
                ]),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: textfieldGrey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(children: const []),
            ),
          ),
        ],
      ),
    );
  }

  Container _appBar() {
    return Container(
      // height: 70,
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      child: Row(
        children: [
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: greenColor, borderRadius: BorderRadius.circular(50)),
              child: const Icon(
                Icons.person,
                size: 30,
              )),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  storename,
                  style: TextStyle(
                      fontFamily: regular,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: whiteColor),
                ),
                Text(
                  "Thông tin >",
                  style: TextStyle(
                      fontFamily: regular,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: textfieldGrey),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          GestureDetector(
            onTap: () => {},
            child: const Icon(
              Icons.qr_code_scanner_outlined,
              color: whiteColor,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
