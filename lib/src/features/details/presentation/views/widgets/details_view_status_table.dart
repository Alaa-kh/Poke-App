import 'package:poke/src/core/constants/packages.dart';

class DetailsViewStatusTable extends StatelessWidget {
  const DetailsViewStatusTable({
    Key? key,
    required this.detailsPokemonItem,
  }) : super(key: key);
  final DetailsModel detailsPokemonItem;
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
                  color: borderClr, offset: const Offset(0, 0), blurRadius: 0)
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
                  const CustomVerticalSizedBox(10),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.w),
                      child: Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(children: [
                              Text(
                                detailsPokemonItem.stats[0].stat.name,
                              ),
                              DetailsViewStatusTableLinearProgress(
                                  value: detailsPokemonItem.stats[0].baseStat
                                          .toDouble() /
                                      100),
                              Text(
                                  detailsPokemonItem.stats[0].baseStat
                                      .toString(),
                                  style: Styles.titleMedium,
                                  textAlign: TextAlign.end)
                            ]),
                            TableRow(children: [
                              Text(
                                detailsPokemonItem.stats[1].stat.name,
                              ),
                              DetailsViewStatusTableLinearProgress(
                                  value: detailsPokemonItem.stats[1].baseStat
                                          .toDouble() /
                                      100),
                              Text(
                                  detailsPokemonItem.stats[1].baseStat
                                      .toString(),
                                  style: Styles.titleMedium,
                                  textAlign: TextAlign.end)
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Text(
                                  detailsPokemonItem.stats[2].stat.name,
                                ),
                              ),
                              DetailsViewStatusTableLinearProgress(
                                  value: detailsPokemonItem.stats[2].baseStat
                                          .toDouble() /
                                      100),
                              Text(
                                  detailsPokemonItem.stats[2].baseStat
                                      .toString(),
                                  style: Styles.titleMedium,
                                  textAlign: TextAlign.end)
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Text(
                                  detailsPokemonItem.stats[3].stat.name,
                                ),
                              ),
                              DetailsViewStatusTableLinearProgress(
                                  value: detailsPokemonItem.stats[3].baseStat
                                          .toDouble() /
                                      100),
                              Text(
                                  detailsPokemonItem.stats[3].baseStat
                                      .toString(),
                                  style: Styles.titleMedium,
                                  textAlign: TextAlign.end)
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Text(
                                  detailsPokemonItem.stats[4].stat.name,
                                ),
                              ),
                              DetailsViewStatusTableLinearProgress(
                                  value: detailsPokemonItem.stats[4].baseStat
                                          .toDouble() /
                                      100),
                              Text(
                                  detailsPokemonItem.stats[4].baseStat
                                      .toString(),
                                  style: Styles.titleMedium,
                                  textAlign: TextAlign.end)
                            ]),
                            TableRow(children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 10.h),
                                  child: Text(
                                    detailsPokemonItem.stats[5].stat.name,
                                  )),
                              DetailsViewStatusTableLinearProgress(
                                  value: detailsPokemonItem.stats[5].baseStat
                                          .toDouble() /
                                      100),
                              Text(
                                  detailsPokemonItem.stats[5].baseStat
                                      .toString(),
                                  textAlign: TextAlign.end,
                                  style: Styles.titleMedium)
                            ])
                          ]))
                ])));
  }
}
