import 'package:small_bean_clinic/consts/consts.dart';

class GridNavItem extends StatelessWidget {
  final Icon icon;
  final String text;
  final Function()? onTap;
  const GridNavItem(
      {super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: textfieldGrey,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                fontFamily: regular,
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
