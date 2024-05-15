import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewImagePoke extends StatelessWidget {
  const ViewAllViewImagePoke({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: -50,
        child: Image.asset(
          ImagesAssets.homeImage,
        ));
  }
}
