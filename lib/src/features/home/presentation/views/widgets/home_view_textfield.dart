import 'package:poke/src/core/constants/packages.dart';

class HomeViewTextField extends StatelessWidget {
  const HomeViewTextField({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      BlocBuilder<HomeCubit, HomeState>(
          builder: (BuildContext context, HomeState state) => TextField(
                  onChanged: (String name) {
                    context.read<HomeCubit>().addSearchToListHome(name);
                  },
                  controller: context.read<HomeCubit>().searchHomeController,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      fillColor: whiteClr,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: babyBlueClr, width: 4)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: babyBlueClr, width: 4)),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 22, vertical: 16),
                      labelText: 'Enter pokemon name',
                      suffixIcon: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                          child: HomeViewSearchIcon())))
              .animate()
              .slideX(delay: 1000.ms, duration: 1000.ms)),
      const CustomVerticalSizedBox(10),
      GestureDetector(
          onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const ViewAllView())),
          child: Text('View all', style: Styles.textStyleUnderLine))
    ]);
  }
}
