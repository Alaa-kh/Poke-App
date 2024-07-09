import 'package:poke/src/core/constants/packages.dart';

AppBar viewAllViewAppBar(BuildContext context) {
  return AppBar(
      backgroundColor: tealBlueClr,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80.0),
          bottomRight: Radius.circular(80.0),
        ),
      ),
      shadowColor: tealBlueClr,
      surfaceTintColor: tealBlueClr,
      leadingWidth: double.infinity,
      elevation: 5,
      toolbarHeight: 190.h,
      automaticallyImplyLeading: true,
      title: Column(children: [
        const ViewAllViewUpContainer(),
        const CustomVerticalSizedBox(15),
        ViewAllViewTextField(
            controller: context.read<ViewAllCubit>().searchController,
            onChanged: (name) =>
                context.read<ViewAllCubit>().addSearchToList(name))
      ]));
}
