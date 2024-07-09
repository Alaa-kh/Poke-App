import 'package:poke/src/core/constants/packages.dart';

enum AppTheme { heatherBerryClr, goldenGrassClr, babyBlueClr, whiteClr }

class ThemeCubit extends Cubit<ThemeData> {
  static const String _themeKey = 'appTheme';

  ThemeCubit() : super(_loadTheme());

  static ThemeData _loadTheme() {
    SharedPreferences.getInstance().then((prefs) {
      final themeIndex = prefs.getInt(_themeKey) ?? 0;
      final theme = AppTheme.values[themeIndex];
      return _themeData(theme);
    });
    return ThemeData(primarySwatch: Colors.orange);
  }

  static ThemeData _themeData(AppTheme theme) {
    switch (theme) {
      case AppTheme.goldenGrassClr:
        return ThemeData(scaffoldBackgroundColor: goldenGrassClr);
      case AppTheme.babyBlueClr:
        return ThemeData(scaffoldBackgroundColor: babyBlueClr);
      case AppTheme.heatherBerryClr:
        return ThemeData(scaffoldBackgroundColor: heatherBerryClr);
      default:
        return ThemeData(scaffoldBackgroundColor: whiteClr);
    }
  }

  void changeTheme(AppTheme theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_themeKey, theme.index);
    emit(_themeData(theme));
  }

  int selectedIndex = 0;
  void selected(int index) {
    selectedIndex = index;
  }
}
