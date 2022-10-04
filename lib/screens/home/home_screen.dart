import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Reward.dart';
import 'package:flutter_profile/screens/home/components/recommendations.dart';
import 'package:flutter_profile/screens/home/components/rewards.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

import 'components/high_lights_info.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        Recommendations(),
        MyProjects(),
        Rewards(),
      ],
    );
  }
}
