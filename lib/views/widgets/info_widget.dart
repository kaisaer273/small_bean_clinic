import 'package:small_bean_clinic/consts/consts.dart';

class InfoWidget extends StatelessWidget {
  final Icon icon;
  final String title;
  const InfoWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                icon,
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: semibold,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "data",
            style: TextStyle(
              fontFamily: bold,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
