import 'package:poke/src/core/constants/packages.dart';
import 'package:poke/src/core/shared/custom_horizontal_sized_box.dart';

class ViewAllView extends StatelessWidget {
  const ViewAllView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        surfaceTintColor: whiteClr,
        backgroundColor: whiteClr,
        shadowColor: darkClr.withOpacity(.2),
        elevation: 6,
        bottomOpacity: 10,
        toolbarHeight: 86.h,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 18.h),
              child: Image.asset(
                ImagesAssets.homeImage,
                width: 114.w,
                height: 71.h,
              ),
            ),
            const CustomHorizontalSizedBox(5),
            RichText(
                text: TextSpan(
              text: 'Poké',
              style: Styles.titleMedium.copyWith(color: darkClr),
              children: <TextSpan>[
                TextSpan(
                    text: 'book',
                    style: Styles.titleMedium.copyWith(color: babyBlueClr)),
              ],
            )),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 18.w),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(color: gryClr),
              shape: BoxShape.circle,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: babyBlueClr,
                shape: BoxShape.circle,
              ),
              width: 42.w,
              height: 42.h,
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  ImagesAssets.backgroundImage,
                ),
                fit: BoxFit.fill,
              )),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    TextField(
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
                          labelText: 'Enter pokemon name',
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                            ),
                            child: Icon(
                              Icons.search,
                              color: lightGreyClr,
                            ),
                          )),
                    ),
                    CustomVerticalSizedBox(50),
                    Container(
                      height: 361.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: whiteClr),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Container(
                              height: 199.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: lightBlackClr),
                            ),
                          ),
                          Positioned(
                            top: -50,
                            child: Image.asset(
                              ImagesAssets.homeImage,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'charizard',
                                style: Styles.titleText32,
                              ),
                              Row(children: [
                                Container(
                                    width: 93.w,
                                    height: 36.h,
                                    decoration: BoxDecoration(
                                        color: lightBlackClr,
                                        borderRadius:
                                            BorderRadius.circular(53)),
                                    child: Text(
                                      '🔥 Fire',
                                      style: Styles.titleMedium.copyWith(
                                          fontWeight: FontWeight.w400),
                                    )),
                                Container(
                                    width: 93.w,
                                    height: 36.h,
                                    decoration: BoxDecoration(
                                        color: lightBlackClr,
                                        borderRadius:
                                            BorderRadius.circular(53)),
                                    child: Text(
                                      '🦋 Flying',
                                      style: Styles.titleMedium.copyWith(
                                          fontWeight: FontWeight.w400),
                                    )),
                              ])
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
