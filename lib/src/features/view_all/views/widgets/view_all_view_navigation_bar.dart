import 'package:poke/src/core/constants/packages.dart';

int selectedIndex = 1;

class ViewAllViewNavigationBar extends StatelessWidget {
  const ViewAllViewNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => Container(
                height: 40.h,
                width: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: borderClr),
                child: Center(
                  child: Text(
                    '${selectedIndex++}',
                    style: Styles.textStyleNavigationBar,
                  ),
                ),
              ),
          separatorBuilder: (BuildContext context, int index) =>
              const CustomHorizontalSizedBox(10),
          itemCount: 4),
    );
  }
}
