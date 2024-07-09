import 'package:poke/src/core/constants/packages.dart';

class HomeViewAboutTable extends StatelessWidget {
  const HomeViewAboutTable({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final searchListHome = context.read<HomeCubit>().searchListHome;
    return BlocBuilder<HomeCubit, HomeState>(
        builder: (BuildContext context, HomeState state) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Container(
                decoration: BoxDecoration(color: lynxWhiteClr, boxShadow: [
                  BoxShadow(
                      color: borderClr,
                      offset: const Offset(0, -3),
                      blurRadius: 8),
                  const BoxShadow(color: whiteClr, offset: Offset(-8, 0)),
                  const BoxShadow(color: whiteClr, offset: Offset(8, 0)),
                  BoxShadow(
                      color: borderClr,
                      offset: const Offset(0, 0),
                      blurRadius: 0),
                ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 43.h,
                          color: whiteClr,
                          child:
                              const Text('About', style: Styles.titleMedium)),
                      const CustomVerticalSizedBox(15),
                      Table(children: [
                        TableRow(children: [
                          const Text("Height", textAlign: TextAlign.center),
                          Text('${searchListHome[0].height.toString()}m',
                              style: Styles.titleText15,
                              textAlign: TextAlign.center)
                        ]),
                        TableRow(children: [
                          const Text('Weight', textAlign: TextAlign.center),
                          Text('${searchListHome[0].weight.toString()}Kg',
                              style: Styles.titleText15,
                              textAlign: TextAlign.center)
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: const Text("Abilities",
                                textAlign: TextAlign.center),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: searchListHome[0].abilities.length == 2
                                  ? Text(
                                      '• ${searchListHome[0].abilities[0].ability.name}\n• ${searchListHome[0].abilities[1].ability.name}',
                                      style: Styles.titleText15,
                                      textAlign: TextAlign.center)
                                  : context
                                              .read<HomeCubit>()
                                              .searchListHome[0]
                                              .abilities
                                              .length ==
                                          3
                                      ? Text(
                                          '• ${searchListHome[0].abilities[0].ability.name}\n• ${searchListHome[0].abilities[1].ability.name}\n• ${searchListHome[0].abilities[2].ability.name}',
                                          style: Styles.titleText15,
                                          textAlign: TextAlign.center)
                                      : Text(
                                          '• ${searchListHome[0].abilities[0].ability.name}',
                                          style: Styles.titleText15,
                                          textAlign: TextAlign.center))
                        ])
                      ])
                    ]))));
  }
}
