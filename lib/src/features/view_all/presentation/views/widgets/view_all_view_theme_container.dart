import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewThemeContainer extends StatelessWidget {
  const ViewAllViewThemeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 18.w),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: darkClr),
          shape: BoxShape.circle,
        ),
        child: GestureDetector(
            onTap: () => showDialog(
                context: context,
                builder: (BuildContext cxt) {
                  return Dialog(
                      child: Container(
                          height: 180.h,
                          width: 390.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: const DecorationImage(
                                  image:
                                      AssetImage(ImagesAssets.backgroundImage),
                                  fit: BoxFit.fill)),
                          child: Column(children: [
                            Container(
                              alignment: Alignment.center,
                              height: 45.h,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: whiteClr,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: const Text('Choose Theme',
                                  style: Styles.titleMedium),
                            ),
                            const Spacer(),
                            const ViewAllViewThemeColor(),
                            const Spacer()
                          ])));
                }),
            child: Container(
                decoration:
                    BoxDecoration(color: babyBlueClr, shape: BoxShape.circle),
                width: 42.w,
                height: 42.h)));
  }
}
