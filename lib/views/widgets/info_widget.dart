import 'package:small_bean_clinic/consts/consts.dart';

class InfoWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const InfoWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                icon,
                color: primaryColor,
                size: 20,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontFamily: semibold,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: primaryColor,
                ),
              ),
            ],
          ),
          const Text(
            "0",
            style: TextStyle(
              fontFamily: bold,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: bgColor,
            ),
          ),
        ],
      ),
    );
  }
}
