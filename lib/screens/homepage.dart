import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'company.dart';
import 'company_info.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  late List<Company> _filteredCompanies;

  @override
  void initState() {
    super.initState();
    _filteredCompanies = companies;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/home_img.png', // Replace with your image asset path
                    fit: BoxFit.contain, // Adjust the width as needed
                  ),
                ),
                Text(
                  'Top Software Companies',
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
              ),
              style: TextStyle(color: Colors.black),
              onChanged: _filterCompanies,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredCompanies.length,
              itemBuilder: (context, index) {
                return FutureBuilder(
                  future:
                      fetchCompanyInfo(_filteredCompanies[index].companyName),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData &&
                        snapshot.data!.containsKey('icon')) {
                      Company localCompany = _filteredCompanies[index];
                      return Card(
                        color: Colors.white,
                        elevation: 2.0,
                        child: InkWell(
                          onTap: () {
                            debugPrint("tap");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) {
                                  return CompanyInfo(
                                    company: Company(
                                      companyName: localCompany.companyName,
                                      description: localCompany.description,
                                      process: localCompany.process,
                                      benefits: localCompany.benefits,
                                      locations: localCompany.locations,
                                      technologies: localCompany.technologies,
                                      industries: localCompany.industries,
                                      website: localCompany.website,
                                      socialMedia: localCompany.socialMedia,
                                    ),
                                    imageUrl: snapshot.data!['icon'],
                                  );
                                }),
                              ),
                            );
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(snapshot.data!['icon']),
                            ),
                            title: Text(
                              snapshot.data!['name'],
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            subtitle: Text(snapshot.data!['domain']),
                          ),
                        ),
                      );
                    } else {
                      // Return an empty container if no valid data is available
                      return SizedBox.shrink();
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _filterCompanies(String query) {
    setState(() {
      _filteredCompanies = companies
          .where((company) =>
              company.companyName.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Future<Map<String, dynamic>> fetchCompanyInfo(String companyName) async {
    final response = await http.get(
      Uri.parse('https://api.brandfetch.io/v2/search/$companyName'),
    );

    if (response.statusCode == 200) {
      List<dynamic> dataList = json.decode(response.body);

      if (dataList.isNotEmpty) {
        Map<String, dynamic> data = dataList[0];

        if (data.containsKey('name') && data.containsKey('icon')) {
          // Check if the domain is available
          String domain = data['domain'] ?? 'Unknown Domain';

          return {
            'name': data['name'],
            'icon': data['icon'],
            'domain': domain,
          };
        } else {
          throw Exception('Invalid data format from the API');
        }
      } else {
        throw Exception('No data found for the company');
      }
    } else {
      throw Exception('Failed to load company data');
    }
  }
}
