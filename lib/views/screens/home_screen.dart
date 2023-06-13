import 'package:small_bean_clinic/views/widgets/grid_nav_item.dart';
import 'package:small_bean_clinic/views/widgets/info_widget.dart';

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
                      image: AssetImage(imgBackground), fit: BoxFit.fill)),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  _appBar(),
                  _infoBar(),
                  _gridNavigationBar(),
                ],
              ))),
    );
  }

  _gridNavigationBar() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 4, // Số lượng cột trong lưới
                mainAxisSpacing:
                    15, // Khoảng cách giữa các phần tử theo trục chính (vertical)
                crossAxisSpacing:
                    15, // Khoảng cách giữa các phần tử theo trục chéo (horizontal)
                childAspectRatio: 1, // Tỷ lệ khung hình của mỗi phần tử
                children: [
                  GridNavItem(
                      icon: const Icon(
                        Icons.warehouse_outlined,
                        size: 30,
                      ),
                      text: "Kho hàng",
                      onTap: () {}),
                  GridNavItem(
                      icon: const Icon(
                        Icons.article_outlined,
                        size: 30,
                      ),
                      text: "Đơn hàng",
                      onTap: () {}),
                  GridNavItem(
                      icon: const Icon(
                        Icons.post_add_rounded,
                        size: 30,
                      ),
                      text: "Đặt hàng",
                      onTap: () {}),
                  GridNavItem(
                      icon: const Icon(
                        Icons.list_alt_outlined,
                        size: 30,
                      ),
                      text: "Sản phẩm",
                      onTap: () {}),
                  GridNavItem(
                      icon: const Icon(
                        Icons.people_alt_outlined,
                        size: 30,
                      ),
                      text: "Danh bạ",
                      onTap: () {}),
                  GridNavItem(
                      icon: const Icon(
                        Icons.event_busy_outlined,
                        size: 30,
                      ),
                      text: "Sổ nợ",
                      onTap: () {}),
                  GridNavItem(
                      icon: const Icon(
                        Icons.bar_chart_outlined,
                        size: 30,
                      ),
                      text: "Báo cáo",
                      onTap: () {}),
                  GridNavItem(
                      icon: const Icon(
                        Icons.more_horiz_outlined,
                        size: 30,
                      ),
                      text: "Khác",
                      onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _infoBar() {
    return Container(
      margin: const EdgeInsets.only(top: 80),
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
                    "Xem lãi-lỗ >",
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
              child: Row(children: const [
                Expanded(
                  child: InfoWidget(
                      title: "Doanh thu", icon: Icon(Icons.bar_chart_outlined)),
                ),
                VerticalDivider(
                  color: fontGrey,
                  thickness: 2,
                ),
                Expanded(
                    child: InfoWidget(
                        title: "Số Đơn", icon: Icon(Icons.article_outlined))),
                VerticalDivider(
                  color: fontGrey,
                  thickness: 2,
                ),
                Expanded(
                  child: InfoWidget(
                      title: "Lợi nhuận",
                      icon: Icon(Icons.monetization_on_outlined)),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Container _appBar() {
    return Container(
      // height: 70,
      margin: const EdgeInsets.only(
        top: 20,
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
