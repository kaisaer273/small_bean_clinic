import 'consts.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
  primaryColor: primaryColor,
  brightness: Brightness.light,
  fontFamily: regular,
);
ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
  primaryColor: darkGreyColor,
  brightness: Brightness.dark,
  fontFamily: regular,
);
