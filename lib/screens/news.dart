class News {
  final String headline;
  final String description;
  final List<String> hashtags;

  News({
    required this.headline,
    required this.description,
    required this.hashtags,
  });
}

List<News> newsList = [
  News(
    headline: "PWS has just arrived",
    description: "Description for PWS news.",
    hashtags: ["#PWS", "#Arrival"],
  ),
  News(
      headline: "Amazon Drive Coming Soon",
      description: "Amazon  one of the famous software company coming to AU",
      hashtags: ["#Amazone", "#Arrival"]),
  News(
      headline: "Tech Mahindra is here",
      description: "Hear goes new placements",
      hashtags: ["#TechMahindra", "#Arrival"])
  // Add more news items here...
];
