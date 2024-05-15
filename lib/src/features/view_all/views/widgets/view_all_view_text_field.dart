import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewTextField extends StatelessWidget {
  const ViewAllViewTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5.h),
          fillColor: lightWhiteClr,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: borderClr)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: borderClr)),
          hintText: 'Enter pokemon name',
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Icon(
              Icons.search,
              color: lightGreyClr,
            ),
          )),
    );
  }
}
