import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewInfoPoke extends StatelessWidget {
  const ViewAllViewInfoPoke({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'charizard',
          style: Styles.titleText32,
        ),
        const CustomVerticalSizedBox(15),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 93.w,
              height: 36.h,
              decoration: BoxDecoration(
                  color: lightBlackClr,
                  borderRadius: BorderRadius.circular(53)),
              child: Text(
                '🔥 Fire',
                style: Styles.titleMedium.copyWith(fontWeight: FontWeight.w400),
              )),
          const CustomHorizontalSizedBox(10),
          Container(
              width: 93.w,
              height: 36.h,
              decoration: BoxDecoration(
                  color: lightBlackClr,
                  borderRadius: BorderRadius.circular(53)),
              child: Text(
                '🦋 Flying',
                style: Styles.titleMedium.copyWith(fontWeight: FontWeight.w400),
              )),
        ])
      ],
    );
  }
}
