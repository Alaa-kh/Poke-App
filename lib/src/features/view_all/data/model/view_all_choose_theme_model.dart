import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewChooseThemeModel {
  final Color color;
  final AppTheme theme;
  ViewAllViewChooseThemeModel({
    required this.color,
    required this.theme,
  });
}

List<ViewAllViewChooseThemeModel> viewAllViewChooseThemeModelList = [
  ViewAllViewChooseThemeModel(color: babyBlueClr, theme: AppTheme.babyBlueClr),
  ViewAllViewChooseThemeModel(
      color: goldenGrassClr, theme: AppTheme.goldenGrassClr),
  ViewAllViewChooseThemeModel(
      color: heatherBerryClr, theme: AppTheme.heatherBerryClr),
  ViewAllViewChooseThemeModel(color: whiteClr, theme: AppTheme.whiteClr),
];
