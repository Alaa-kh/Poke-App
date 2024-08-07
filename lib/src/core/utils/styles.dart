import 'package:poke/src/core/constants/packages.dart';

abstract class Styles {
  static const titleSmall = TextStyle(fontSize: 14);
  static const titleMedium =
      TextStyle(fontSize: 21, fontWeight: FontWeight.w600);
  static const titleText32 =
      TextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: blackClr);
  static const titleText56 =
      TextStyle(fontSize: 56, fontWeight: FontWeight.w600, color: blackClr);
  static const titleText15 =
      TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: blackClr);
  static const titleText16 =
      TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: blackClr);
  static const titleText26 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.w500, color: blackClr);
  static const titleLarge = TextStyle(
      fontSize: 48, fontFamily: 'SofiaSans', fontWeight: FontWeight.w600);

  static const textStyleNavigationBar =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: blackClr);

  static final textStyleUnderLine = TextStyle(
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w500,
      color: darkClr);
}
