import 'package:poke/src/core/constants/packages.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      Image.asset(ImagesAssets.backgroundImage,
          fit: BoxFit.fill, width: double.infinity),
      const HomeViewBody()
    ])));
  }
}
