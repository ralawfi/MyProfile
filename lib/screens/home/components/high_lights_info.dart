import 'package:flutter/material.dart';
import 'package:flutter_profile/componenets/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home/components/high_light.dart';

import '../../../constants.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: defaultPadding,
        bottom: defaultPadding,
        right: defaultPadding,
      ),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      counter: AnimatedCounter(
                        value: 4,
                        text: "+ yrs",
                      ),
                      label: "Experience",
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 41,
                        text: "+",
                      ),
                      label: "Clients",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      counter: AnimatedCounter(
                        value: 43,
                        text: "K+ hrs",
                      ),
                      label: "Volunteering",
                    ),
                    HighLight(
                      counter: AnimatedCounter(
                        value: 5,
                        text: "+",
                      ),
                      label: "Certificates",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(
                    value: 4,
                    text: "+ yrs",
                  ),
                  label: "Experience",
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 41,
                    text: "+",
                  ),
                  label: "Clients",
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 43,
                    text: "K+ hrs",
                  ),
                  label: "Volunteering",
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: 5,
                    text: "+",
                  ),
                  label: "Training Certificates",
                ),
              ],
            ),
    );
  }
}
