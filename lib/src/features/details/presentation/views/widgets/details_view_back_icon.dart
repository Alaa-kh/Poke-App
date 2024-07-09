import 'package:poke/src/core/constants/packages.dart';

class DetailsViewBackIcon extends StatelessWidget {
  const DetailsViewBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 10.w,
        top: 60.h,
        child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset(ImagesAssets.arrowImage)));
  }
}
