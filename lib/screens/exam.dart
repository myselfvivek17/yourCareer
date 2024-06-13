class Exam {
  final String testName;
  final String description;
  final String imageUrl;
  final int numberOfQuestions;
  final int durationInMinutes;
  final String difficulty;
  final String examTakingFrequency;

  Exam({
    required this.testName,
    required this.description,
    required this.imageUrl,
    required this.numberOfQuestions,
    required this.durationInMinutes,
    required this.difficulty,
    required this.examTakingFrequency,
  });
}
