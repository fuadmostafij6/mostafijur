import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/sections/home/widgets/animation_text.dart';
import 'package:portfolio/app/widgets/color_chage_btn.dart';
import 'package:portfolio/changes/img.dart';
import 'package:portfolio/changes/links.dart';
import 'package:portfolio/changes/strings.dart';
import 'package:portfolio/core/animations/entrance_fader.dart';
import 'package:portfolio/core/animations/zoom_animation.dart';
import 'package:portfolio/core/configs/configs.dart';
import 'package:portfolio/core/res/responsive_size.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.9,
      child: Stack(
        children: [
          Positioned(
            right: 10.w,
            bottom: 20.w,
            child: const EntranceFader(
              offset: Offset(0, 0),
              delay: Duration(seconds: 1),
              duration: Duration(milliseconds: 800),
              child: ZoomAnimations(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      hellotag,
                      style: AppText.h3!
                          .copyWith(fontSize: isFontSize(context, 18),
                        color: theme.textColor.withOpacity(0.6),
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(StaticImage.hi, height: 10.sp),
                    ),
                  ],
                ),
                Space.y(1.w)!,
                Text(
                  yourname,
                  style: TextStyle(
                    fontSize: isFontSize(context, 38),
                    fontWeight: FontWeight.w600,
                    color: theme.textColor,
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "A ",
                        style: TextStyle(
                          fontSize: isFontSize(context, 24),
                          fontWeight: FontWeight.w400,
                          color: theme.textColor.withOpacity(0.6),
                        ),
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(animationtxt1,
                              speed: const Duration(milliseconds: 50),
                              textStyle: AppText.h2!.copyWith(fontSize: 20,color:theme.textColor.withOpacity(0.6))),
                        ],
                        isRepeatingAnimation: false,
                        repeatForever: false,
                      ),
                    ],
                  ),
                ),
                Space.y(1.5.w)!,
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 50.w),
                    child: Text(
                      miniDescription,
                      style: TextStyle(
                          fontSize: isFontSize(context, 16),
                          fontWeight: FontWeight.w100,
                          color: theme.textColor.withOpacity(0.6)),
                    ),
                  ),
                ),
                Space.y(2.w)!,
                Flexible(
                  child: ColorChageButton(
                    text: 'download cv',
                    onTap: () {
                      html.window.open(resume, "pdf");
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
