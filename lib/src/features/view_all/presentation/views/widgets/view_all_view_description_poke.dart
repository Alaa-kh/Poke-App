import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewDescriptionPoke extends StatelessWidget {
  const ViewAllViewDescriptionPoke({
    Key? key,
    required this.text,
    required this.emoji,
    this.width,
  }) : super(key: key);
  final String text;
  final String emoji;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        height: 36.h,
        decoration: BoxDecoration(
            color: lightBlackClr, borderRadius: BorderRadius.circular(53)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ViewAllViewEmojiName(
            name: emoji,
          ),
          Text(text,
              style: Styles.titleMedium.copyWith(fontWeight: FontWeight.w400))
        ]));
  }
}
