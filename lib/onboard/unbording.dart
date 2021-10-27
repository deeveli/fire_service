class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent({required this.image, required this.title, required this.description});
}

List<UnboardingContent> contents = [
  UnboardingContent(
    image: 'assets/img/1.png',
    title: "Faster and Reliable",
    description: "Call the nearest fire service department "
        "and have them come to your location "
        "with realtime tracking.",
  ),
  UnboardingContent(
    image: 'assets/img/3.png',
    title: "Get Connected",
    description: "Call the nearest fire service department "
        "and have them come to your location "
        "with realtime tracking.",
  ),
  UnboardingContent(
    image: 'assets/img/2.png',
    title: "Get Daily Tips",
    description: "Call the nearest fire service department "
        "and have them come to your location "
        "with realtime tracking.",
  ),
];