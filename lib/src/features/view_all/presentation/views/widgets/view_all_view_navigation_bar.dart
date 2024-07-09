import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewNavigationBar extends StatelessWidget {
  const ViewAllViewNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImagesAssets.backgroundImage),
                fit: BoxFit.fill)),
        child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: BlocBuilder<ViewAllCubit, ViewAllState>(
                builder: (BuildContext context, ViewAllState state) =>
                    NumberPaginator(
                        initialPage: context.read<ViewAllCubit>().currntIndex,
                        config: NumberPaginatorUIConfig(
                            height: 40.h,
                            buttonShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            buttonSelectedForegroundColor: whiteClr,
                            buttonUnselectedForegroundColor: darkClr,
                            buttonUnselectedBackgroundColor: borderClr,
                            buttonSelectedBackgroundColor: babyBlueClr,
                            buttonTextStyle: Styles.textStyleNavigationBar),
                        showPrevButton: true,
                        showNextButton: true,
                        numberPages:
                            context.read<ViewAllCubit>().viewAllModel != null
                                ? context
                                        .read<ViewAllCubit>()
                                        .viewAllModel!
                                        .count ~/
                                    5
                                : 10,
                        onPageChange: (int index) {
                          context.read<ViewAllCubit>().changeIndex(index);
                          if (context.read<ViewAllCubit>().offset > 0) {
                            context.read<ViewAllCubit>().mines();
                          } else {
                            context.read<ViewAllCubit>().add();
                          }
                        }))));
  }
}
