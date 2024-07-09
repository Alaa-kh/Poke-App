import 'package:flutter_animate/flutter_animate.dart';
import 'package:poke/src/core/constants/packages.dart';

class DetailsViewMainImage extends StatelessWidget {
  const DetailsViewMainImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: -90.h,
        width: 255.w,
        child: SvgPicture.network(image).animate().shimmer(delay: 1000.ms));
  }
}
