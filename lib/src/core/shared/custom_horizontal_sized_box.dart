import 'package:poke/src/core/constants/packages.dart';

class CustomHorizontalSizedBox extends StatelessWidget {
  final double width;

  const CustomHorizontalSizedBox(this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width.w);
  }
}
