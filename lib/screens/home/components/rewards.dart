import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';
import 'package:flutter_profile/screens/home/components/recommendation_card.dart';
import 'package:flutter_profile/screens/home/components/rewards_card.dart';

import '../../../constants.dart';
import '../../../models/Reward.dart';

class Rewards extends StatelessWidget {
  const Rewards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Honors & Awards",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                rewards_list.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RewardsCard(
                    reward: rewards_list[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
