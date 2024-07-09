import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewEmojiName extends StatelessWidget {
  const ViewAllViewEmojiName({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
        name == 'fire'
            ? '🔥'
            : name == 'flying'
                ? '🦋'
                : name == 'grass'
                    ? '🌿'
                    : name == 'poison'
                        ? '☠️'
                        : name == 'normal'
                            ? '🐻'
                            : name == 'bug'
                                ? '🐞'
                                : name == 'water'
                                    ? '💦'
                                    : '⚡',
        style: TextStyle(fontSize: 17.sp));
  }
}
