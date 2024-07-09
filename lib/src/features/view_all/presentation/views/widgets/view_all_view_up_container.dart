import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewUpContainer extends StatelessWidget {
  const ViewAllViewUpContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: tealBlueClr,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Padding(
                padding: EdgeInsets.only(top: 18.h),
                child: Image.asset(ImagesAssets.homeImage,
                    width: 114.w, height: 71.h)),
            const CustomHorizontalSizedBox(5),
            RichText(
                text: TextSpan(
                    text: 'Poké',
                    style: Styles.titleMedium.copyWith(color: darkClr),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'book',
                      style: Styles.titleMedium.copyWith(color: babyBlueClr))
                ]))
          ]),
          const ViewAllViewThemeContainer()
        ]));
  }
}
