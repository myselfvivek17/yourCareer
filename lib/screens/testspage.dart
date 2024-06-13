import 'package:flutter/material.dart';
import 'package:yourcareer/screens/test_info.dart';
import 'package:yourcareer/screens/exam.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestsPage(),
    );
  }
}

class TestsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestsPageState();
  }
}

class TestsPageState extends State<TestsPage> {
  List<Exam> exams = [
    Exam(
      testName: "AMCAT",
      description:
          "AMCAT (Aspiring Minds Computer Adaptive Test) is a widely accepted employability assessment that evaluates candidates' skills in various domains, including English, Quantitative Ability, Logical Ability, and more.",
      imageUrl:
          "https://cdn6.aptoide.com/imgs/b/6/8/b68437ad0c6ec6729d53112d99efb413_fgraphic.png",
      numberOfQuestions: 145,
      durationInMinutes: 101,
      difficulty: "Intermediate",
      examTakingFrequency: "Once a month",
    ),
    Exam(
      testName: "GRE",
      description:
          "The GRE (Graduate Record Examinations) is a standardized test that is an admissions requirement for many graduate schools in the United States and other countries.",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/GRE_logo.svg/2560px-GRE_logo.svg.png",
      numberOfQuestions: 82,
      durationInMinutes: 225,
      difficulty: "Advanced",
      examTakingFrequency: "Multiple times a year",
    ),
    Exam(
      testName: "TOEFL",
      description:
          "The TOEFL (Test of English as a Foreign Language) is a standardized test to measure the English language ability of non-native speakers wishing to enroll in English-speaking universities.",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/TOEFL_Logo.svg/2560px-TOEFL_Logo.svg.png",
      numberOfQuestions: 54,
      durationInMinutes: 116,
      difficulty: "Intermediate",
      examTakingFrequency: "Multiple times a month",
    ),
    Exam(
      testName: "SAT",
      description:
          "The SAT is a standardized test widely used for college admissions in the United States. It assesses a student's readiness for college and is intended to provide colleges with a common data point.",
      imageUrl:
          "https://w7.pngwing.com/pngs/885/645/png-transparent-sat-act-standardized-test-college-board-tutoring-class.png",
      numberOfQuestions: 54,
      durationInMinutes: 64,
      difficulty: "Intermediate",
      examTakingFrequency: "Several times a year",
    ),
    Exam(
      testName: "IELTS",
      description:
          "IELTS (International English Language Testing System) is an international standardized test of English language proficiency for non-native English language speakers.",
      imageUrl:
          "https://e7.pngegg.com/pngimages/486/912/png-clipart-test-of-english-as-a-foreign-language-toefl-international-english-language-testing-system-sat-graduate-management-admission-test-ielts-english-label.png",
      numberOfQuestions: 85,
      durationInMinutes: 164,
      difficulty: "Intermediate",
      examTakingFrequency: "Multiple times a month",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getTestsPageView(),
    );
  }

  ListView getTestsPageView() {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/exam_img.png', // Replace with your image asset path
                  fit: BoxFit.contain, // Adjust the width as needed
                ),
              ),
              Text(
                'Exam Information',
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 2.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
              ),
            ],
          ),
        ),
        for (var exam in exams)
          Card(
            color: Colors.white,
            elevation: 2.0,
            child: InkWell(
              onTap: () {
                debugPrint("tap");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return TestInfo(exam: exam);
                    }),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  exam.testName,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                subtitle: Text("Exam details for ${exam.testName}"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(exam.imageUrl),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
