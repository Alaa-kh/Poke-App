import 'package:poke/src/core/constants/packages.dart';

class DetailsViewAboutTable extends StatelessWidget {
  const DetailsViewAboutTable({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final detailsPokemonItems =
        context.read<ViewAllCubit>().detailsPokemonItems;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Container(
            decoration: BoxDecoration(color: lynxWhiteClr, boxShadow: [
              BoxShadow(
                  color: borderClr, offset: const Offset(0, -3), blurRadius: 8),
              const BoxShadow(color: whiteClr, offset: Offset(-8, 0)),
              const BoxShadow(color: whiteClr, offset: Offset(8, 0)),
              BoxShadow(
                  color: borderClr, offset: const Offset(0, 0), blurRadius: 0),
            ]),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 43.h,
                      color: whiteClr,
                      child: const Text('About', style: Styles.titleMedium)),
                  const CustomVerticalSizedBox(15),
                  Table(children: [
                    TableRow(children: [
                      const Text("Height", textAlign: TextAlign.center),
                      Text('${detailsPokemonItems[index].height.toString()}m',
                          style: Styles.titleText15,
                          textAlign: TextAlign.center)
                    ]),
                    TableRow(children: [
                      const Text('Weight', textAlign: TextAlign.center),
                      Text('${detailsPokemonItems[index].weight.toString()}Kg',
                          style: Styles.titleText15,
                          textAlign: TextAlign.center)
                    ]),
                    TableRow(children: [
                      Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: const Text("Abilities",
                              textAlign: TextAlign.center)),
                      Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: detailsPokemonItems[index].abilities.length ==
                                  2
                              ? Text(
                                  '• ${detailsPokemonItems[index].abilities[0].ability.name}\n• ${detailsPokemonItems[index].abilities[1].ability.name}',
                                  style: Styles.titleText15,
                                  textAlign: TextAlign.center)
                              : detailsPokemonItems[index].abilities.length == 3
                                  ? Text(
                                      '• ${detailsPokemonItems[index].abilities[0].ability.name}\n• ${detailsPokemonItems[index].abilities[1].ability.name}\n• ${detailsPokemonItems[index].abilities[2].ability.name}',
                                      style: Styles.titleText15,
                                      textAlign: TextAlign.center)
                                  : Text(
                                      '• ${detailsPokemonItems[index].abilities[0].ability.name}',
                                      style: Styles.titleText15,
                                      textAlign: TextAlign.center))
                    ])
                  ])
                ])));
  }
}
