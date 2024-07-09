import 'package:poke/src/core/constants/packages.dart';

class HomeViewSectionUp extends StatelessWidget {
  const HomeViewSectionUp({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
              height: 283.h,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 2.1],
                      colors: [linearGradientClr1, linearGradientClr2]),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24)))),
          const DetailsViewBackIcon(),
          DetailsViewMainImage(image: image)
        ]);
  }
}
