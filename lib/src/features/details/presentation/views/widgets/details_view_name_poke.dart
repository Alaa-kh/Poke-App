import 'package:poke/src/core/constants/packages.dart';

class DetailsViewNamePoke extends StatelessWidget {
  const DetailsViewNamePoke({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(name, style: Styles.titleText56)
        .animate()
        .shimmer(delay: 1000.ms, duration: 1000.ms);
  }
}
