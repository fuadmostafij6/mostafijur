import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app/sections/home/widgets/animation_text.dart';
import 'package:portfolio/core/animations/zoom_animation.dart';
import 'package:portfolio/core/res/responsive_size.dart';
import 'package:portfolio/core/theme/cubit/theme_cubit.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/widgets/color_chage_btn.dart';
import 'package:portfolio/changes/img.dart';
import 'package:portfolio/changes/links.dart';
import 'package:portfolio/changes/strings.dart';
import 'package:portfolio/core/animations/entrance_fader.dart';
import 'package:portfolio/core/configs/configs.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
        return SizedBox(
          // height: 80.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  width: 55.w,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(hellotag,
                              style:  TextStyle(
                                fontSize: 25,
                                color: theme.textColor.withOpacity(0.6),
                                fontWeight: FontWeight.w100,
                              )),
                          EntranceFader(
                            offset: const Offset(0, 0),
                            delay: const Duration(seconds: 2),
                            duration: const Duration(milliseconds: 800),
                            child: Image.asset(StaticImage.hi, height: 40),
                          ),
                        ],
                      ),
                      Space.y(0.5.w)!,
                      Text(yourname,
                          style:  TextStyle(
                            fontSize: 50,
                            color: theme.textColor,
                            fontWeight: FontWeight.w600,
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                           Text("A",
                              style: TextStyle(
                                fontSize: 32,
                                color: theme.textColor.withOpacity(0.6),
                                fontWeight: FontWeight.w400,
                              )),
                          AnimatedTextKit(
                            isRepeatingAnimation: false,
                            repeatForever: false,
                            animatedTexts: [
                              TyperAnimatedText(animationtxt1,
                                  speed: const Duration(milliseconds: 50),
                                  textStyle: AppText.h2!.copyWith(fontSize: 32,color: theme.textColor.withOpacity(0.6), )),
                            ],
                          ),
                        ],
                      ),
                      Space.y(1.5.w)!,
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Text(miniDescription,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: isFontSize(context, 20),
                              fontWeight: FontWeight.w400,
                              color: theme.textColor.withOpacity(0.6),

                            )),
                      ),
                      Space.y(3.w)!,
                      ColorChageButton(
                        text: 'download cv',
                        onTap: () {
                          html.window.open(resume, "pdf");
                        },
                      ),
                    ],
                  ),
                ),
                const ZoomAnimations(),
              ],
            ),
          ),
        );
      }
    );
  }
}
