import 'package:flutter_animate/flutter_animate.dart';
import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewThemeColor extends StatelessWidget {
  const ViewAllViewThemeColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
        builder: (BuildContext context, ThemeData state) => Container(
            alignment: Alignment.center,
            width: 340.w,
            height: 90.h,
            child: ListView.separated(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color:
                              context.read<ThemeCubit>().selectedIndex == index
                                  ? blackClr
                                  : whiteClr),
                      shape: BoxShape.circle,
                    ),
                    child: GestureDetector(
                        onTap: () {
                          context.read<ThemeCubit>().selected(index);
                          context.read<ThemeCubit>().changeTheme(
                              viewAllViewChooseThemeModelList[index].theme);
                        },
                        child: Animate(
                          effects: const [FadeEffect(), ScaleEffect()],
                          child: Container(
                              decoration: BoxDecoration(
                                  color: viewAllViewChooseThemeModelList[index]
                                      .color,
                                  shape: BoxShape.circle),
                              width: 56.w,
                              height: 56.h),
                        )
                            .animate()
                            .fade(duration: 900.ms)
                            .slide(delay: 900.ms))),
                separatorBuilder: (BuildContext context, int index) =>
                    const CustomHorizontalSizedBox(10),
                itemCount: viewAllViewChooseThemeModelList.length)));
  }
}
