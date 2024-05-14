import 'package:poke/src/core/constants/packages.dart';


class HomeViewTextField extends StatelessWidget {
  const HomeViewTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
              labelText: 'Enter pokemon name',
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                ),
                child: Container(
                    height: 43,
                    width: 43,
                    decoration: BoxDecoration(
                        color: babyBlueClr, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.search,
                      color: whiteClr,
                    )),
              )),
        ),
        const CustomVerticalSizedBox(10),
        Text('View all', style: Styles.textStyleUnderLine),
      ],
    );
  }
}
