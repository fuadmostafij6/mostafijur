import 'package:flutter/material.dart';
import 'package:portfolio/core/configs/configs.dart';
import 'package:portfolio/core/res/responsive.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Responsive(
      desktop: Text(
        text,
        style:  TextStyle(fontSize: 56, color:  theme.textColor),
      ),
      tablet: Text(
        text,
        style:  TextStyle(fontSize: 36, color:  theme.textColor),
      ),
      mobile: Text(
        text,
        style:  TextStyle(fontSize: 26,color:   theme.textColor),
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Responsive(
      desktop: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: theme.textColor.withOpacity(0.6),
          fontSize: 18,
        ),
      ),
      tablet: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: theme.textColor.withOpacity(0.6),
          fontSize: 16,
        ),
      ),
      mobile: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: theme.textColor.withOpacity(0.6),
          fontSize: 13,
        ),
      ),
    );
  }
}
