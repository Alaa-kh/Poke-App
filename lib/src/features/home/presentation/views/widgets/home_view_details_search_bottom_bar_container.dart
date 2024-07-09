import 'package:poke/src/core/constants/packages.dart';

class HomeViewDetailsSearchBottomBarContainer extends StatelessWidget {
  const HomeViewDetailsSearchBottomBarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (BuildContext context, HomeState state) => Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
          height: 55.h,
          decoration: BoxDecoration(
              border: Border.all(color: gryClr.withOpacity(.4)),
              borderRadius: BorderRadius.circular(60),
              color: bottomBarClr),
          child: SizedBox(
            height: 43.h,
            child: ListView.separated(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                      onTap: () => context.read<HomeCubit>().selected(index),
                      child: Container(
                        alignment: Alignment.center,
                        width: 124.w,
                        decoration: BoxDecoration(
                            color: context.read<HomeCubit>().select == index
                                ? whiteClr
                                : bottomBarClr,
                            borderRadius: BorderRadius.circular(60)),
                        child: Text(labelBottomBar[index],
                            style: Styles.titleText15)
                      )
                    ),
                separatorBuilder: (BuildContext context, int index) =>
                    const CustomHorizontalSizedBox(50),
                itemCount: labelBottomBar.length)
          ))
    );
  }
}

List<String> labelBottomBar = ['About', 'Stats'];
