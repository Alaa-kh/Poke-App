import 'package:poke/src/core/constants/packages.dart';

class HomeViewStatusTable extends StatelessWidget {
  const HomeViewStatusTable({
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
                      blurRadius: 0)
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
                      const CustomVerticalSizedBox(10),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.w),
                          child: Table(
                              defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              children: [
                                TableRow(children: [
                                  Text(searchListHome[0].stats[0].stat.name),
                                  DetailsViewStatusTableLinearProgress(
                                      value: searchListHome[0]
                                              .stats[0]
                                              .baseStat
                                              .toDouble() /
                                          100),
                                  Text(
                                      searchListHome[0]
                                          .stats[0]
                                          .baseStat
                                          .toString(),
                                      style: Styles.titleMedium,
                                      textAlign: TextAlign.end)
                                ]),
                                TableRow(children: [
                                  Text(
                                    searchListHome[0].stats[1].stat.name,
                                  ),
                                  DetailsViewStatusTableLinearProgress(
                                      value: searchListHome[0]
                                              .stats[1]
                                              .baseStat
                                              .toDouble() /
                                          100),
                                  Text(
                                      searchListHome[0]
                                          .stats[1]
                                          .baseStat
                                          .toString(),
                                      style: Styles.titleMedium,
                                      textAlign: TextAlign.end)
                                ]),
                                TableRow(children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Text(searchListHome[0]
                                          .stats[2]
                                          .stat
                                          .name)),
                                  DetailsViewStatusTableLinearProgress(
                                      value: searchListHome[0]
                                              .stats[2]
                                              .baseStat
                                              .toDouble() /
                                          100),
                                  Text(
                                      searchListHome[0]
                                          .stats[2]
                                          .baseStat
                                          .toString(),
                                      style: Styles.titleMedium,
                                      textAlign: TextAlign.end)
                                ]),
                                TableRow(children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Text(searchListHome[0]
                                          .stats[3]
                                          .stat
                                          .name)),
                                  DetailsViewStatusTableLinearProgress(
                                      value: searchListHome[0]
                                              .stats[3]
                                              .baseStat
                                              .toDouble() /
                                          100),
                                  Text(
                                      searchListHome[0]
                                          .stats[3]
                                          .baseStat
                                          .toString(),
                                      style: Styles.titleMedium,
                                      textAlign: TextAlign.end)
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: Text(
                                      searchListHome[0].stats[4].stat.name,
                                    ),
                                  ),
                                  DetailsViewStatusTableLinearProgress(
                                      value: searchListHome[0]
                                              .stats[4]
                                              .baseStat
                                              .toDouble() /
                                          100),
                                  Text(
                                      searchListHome[0]
                                          .stats[4]
                                          .baseStat
                                          .toString(),
                                      style: Styles.titleMedium,
                                      textAlign: TextAlign.end)
                                ]),
                                TableRow(children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Text(searchListHome[0]
                                          .stats[5]
                                          .stat
                                          .name)),
                                  DetailsViewStatusTableLinearProgress(
                                      value: searchListHome[0]
                                              .stats[5]
                                              .baseStat
                                              .toDouble() /
                                          100),
                                  Text(
                                      searchListHome[0]
                                          .stats[5]
                                          .baseStat
                                          .toString(),
                                      textAlign: TextAlign.end,
                                      style: Styles.titleMedium)
                                ])
                              ]))
                    ]))));
  }
}
