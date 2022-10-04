class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "M.S., Electrical & Computer Engineering",
    source: "University of Wisconsin - Milwaukee",
    text: "GPA: 3.73/4.0",
  ),
  Recommendation(
    name: "B.S., Computer Engineering",
    source: "Milwaukee School of Engineering",
    text: "GPA: 3.52/4.0",
  ),
  Recommendation(
    name: "Intensive English Program",
    source: "University of Miami - IEP",
    text: "Passed 5 levels of intensive English courses.",
  ),
  /* Recommendation(
    name: "Roshan Shetty",
    source: "YouTube",
    text:
        "Very straightforward, professional and also the best flutter videos in the youtube! It will be great if you add some comments to your steps with 0.5 seconds pause before implementing this step. By meaning of steps, I mean not the basic, but structural steps, like 10-20 steps per video. However, thank you very much!",
  ), */
];
