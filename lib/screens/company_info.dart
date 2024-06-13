import 'dart:math';
import 'package:flutter/material.dart';
import 'company.dart';
import 'package:url_launcher/url_launcher.dart';

class CompanyInfo extends StatefulWidget {
  final Company company;
  final String imageUrl;

  CompanyInfo({
    required this.company,
    required this.imageUrl,
  });

  @override
  State<StatefulWidget> createState() {
    return CompanyInfoState();
  }
}

class CompanyInfoState extends State<CompanyInfo> {
  final _random = Random();

  int getRandomValue(int max) {
    return _random.nextInt(max) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        moveToLastPage();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Text(
            'Company Info',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: moveToLastPage,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              _buildLogo(),
              _buildInfoItem(
                'Company:',
                widget.company.companyName,
                20,
                TextAlign.center,
              ),
              _buildInfoItem(
                'Description:',
                widget.company.description,
              ),
              _buildCompanyProcessItem(),
              _buildWebsiteLink(), // Add website link
              _buildLocations(),
              _buildBenefits(),
              _buildTechnologies(),
              _buildIndustries(),
              _buildSocialMediaButtons(), // Add social media buttons
              // Add more items as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Center(
        child: Image.network(
          widget.imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildInfoItem(
    String title,
    String value, [
    double fontSize = 16,
    TextAlign textAlign = TextAlign.start,
  ]) {
    TextStyle titleStyle =
        TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold);
    TextStyle valueStyle = TextStyle(fontSize: fontSize);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title',
            style: titleStyle,
            textAlign: textAlign,
          ),
          Text(
            '$value',
            style: valueStyle,
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }

  Widget _buildCompanyProcessItem() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recruitment Process:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.company.process
                .asMap()
                .entries
                .map(
                  (entry) => _buildProcessStep(
                    'Step ${entry.key + 1}:',
                    widget.company.process[entry.key],
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildProcessStep(String title, String value) {
    return Text(
      '$title $value',
      style: TextStyle(fontSize: 16),
    );
  }

  Widget _buildWebsiteLink() {
    String label = 'Website: ';
    String url = widget.company.website;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: GestureDetector(
        onTap: () {
          _launchURL(url); // Open URL when tapped
        },
        child: Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              url,
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocations() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Locations:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.company.locations
                .map((location) => Text(
                      location,
                      style: TextStyle(fontSize: 16),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildBenefits() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Benefits:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.company.benefits
                .map((benefit) => Text(
                      benefit,
                      style: TextStyle(fontSize: 16),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildTechnologies() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Technologies:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.company.technologies
                .map((technology) => Text(
                      technology,
                      style: TextStyle(fontSize: 16),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildIndustries() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Industries:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.company.industries
                .map((industry) => Text(
                      industry,
                      style: TextStyle(fontSize: 16),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialMediaButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: widget.company.socialMedia.entries.map((entry) {
          return IconButton(
            icon: Image.asset(
              _getSocialMediaIcon(entry.key), // Use method to get icon path
              width: 30,
              height: 30,
            ),
            onPressed: () {
              _launchURL(entry.value); // Launch URL when button is pressed
            },
          );
        }).toList(),
      ),
    );
  }

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url); // Convert the string URL to a Uri object
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
      print('Launching $url'); // Launch the URL using launch
    } else {
      print('Could not launch $url');
    }
  }


  String _getSocialMediaIcon(String platform) {
    switch (platform.toLowerCase()) {
      case 'twitter':
        return 'assets/twitter_img.png'; // Replace with actual path to Twitter icon
      case 'linkedin':
        return 'assets/linkdin_img.png'; // Replace with actual path to LinkedIn icon
      case 'facebook':
        return 'assets/facebook_img.png'; // Replace with actual path to Facebook icon
      default:
        return 'assets/default_social_icon.png'; // Replace with default icon path
    }
  }

  void moveToLastPage() {
    Navigator.pop(context);
  }
}
