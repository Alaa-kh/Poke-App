import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewMainContainer extends StatelessWidget {
  const ViewAllViewMainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 361.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26), color: whiteClr),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  height: 199.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: lightBlackClr),
                ),
              ),
              const ViewAllViewInfoPoke(),
            ],
          ),
        ),
        const ViewAllViewImagePoke()
      ],
    );
  }
}
