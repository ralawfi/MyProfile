import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
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
            "Knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: "Java"),
        KnowledgeText(text: "Assembly"),
        KnowledgeText(text: "C++"),
        KnowledgeText(text: "C"),
        KnowledgeText(text: "VHDL"),
        KnowledgeText(text: "PLC"),
        KnowledgeText(text: "Control Systems"),
        KnowledgeText(text: "Altera Quartus II"),
        KnowledgeText(text: "AutoCAD"),
        KnowledgeText(text: "PSoC Creator"),
        KnowledgeText(text: "MATLAB/ModelSim"),
        KnowledgeText(text: "Eclipse"),
        KnowledgeText(text: "PSpice"),
        KnowledgeText(text: "JetBrains"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: defaultPadding / 2,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/check.svg",
          ),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}
