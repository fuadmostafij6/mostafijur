import 'package:flutter/material.dart';
import 'package:portfolio/core/res/responsive.dart';
import 'package:sizer/sizer.dart';
import 'home_desktop.dart';
import 'home_mobile.dart';
import 'home_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SizedBox(height: 10.h),
        const Responsive(
          mobile: HomeMobile(),
          tablet: HomeTab(),
          desktop: HomeDesktop(),
        ),
      ],
    );
  }
}
