import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Recommendation.dart';
import 'package:flutter_profile/screens/home/components/rewards.dart';

import '../../../models/Reward.dart';

class RewardsCard extends StatelessWidget {
  const RewardsCard({
    Key? key,
    required this.reward,
  }) : super(key: key);

  final Reward reward;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            reward.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            reward.source!,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            reward.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
