import 'package:poke/src/core/constants/packages.dart';

class DetailsViewStatusTableLinearProgress extends StatelessWidget {
  final double value;

  const DetailsViewStatusTableLinearProgress({Key? key, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 10.h,
        decoration: BoxDecoration(color: borderClr),
        child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: value,
            child: Container(decoration: BoxDecoration(color: babyBlueClr))));
  }
}
