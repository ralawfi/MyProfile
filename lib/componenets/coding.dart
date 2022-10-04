import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

import 'animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.55,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.60,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.56,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.59,
          label: "JavaScript",
        ),
      ],
    );
  }
}
