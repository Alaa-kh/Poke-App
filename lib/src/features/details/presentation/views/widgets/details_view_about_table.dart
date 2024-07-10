import 'package:poke/src/core/constants/packages.dart';

class DetailsViewAboutTable extends StatelessWidget {
  const DetailsViewAboutTable({
    Key? key,
    required this.detailsModel,
  }) : super(key: key);
  final DetailsModel detailsModel;
  @override
  Widget build(BuildContext context) {
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
                      Text('${detailsModel.height.toString()}m',
                          style: Styles.titleText15,
                          textAlign: TextAlign.center)
                    ]),
                    TableRow(children: [
                      const Text('Weight', textAlign: TextAlign.center),
                      Text('${detailsModel.weight.toString()}Kg',
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
                          child: detailsModel.abilities.length ==
                                  2
                              ? Text(
                                  '• ${detailsModel.abilities[0].ability.name}\n• ${detailsModel.abilities[1].ability.name}',
                                  style: Styles.titleText15,
                                  textAlign: TextAlign.center)
                              : detailsModel.abilities.length == 3
                                  ? Text(
                                      '• ${detailsModel.abilities[0].ability.name}\n• ${detailsModel.abilities[1].ability.name}\n• ${detailsModel.abilities[2].ability.name}',
                                      style: Styles.titleText15,
                                      textAlign: TextAlign.center)
                                  : Text(
                                      '• ${detailsModel.abilities[0].ability.name}',
                                      style: Styles.titleText15,
                                      textAlign: TextAlign.center))
                    ])
                  ])
                ])));
  }
}
