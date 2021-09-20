import 'package:flutter/material.dart';

class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;

  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);

  static List<Job> generateJobs() {
    return [
      Job(
        'Google LLC',
        'assets/images/google_logo.png',
        true,
        'Principle Product Design',
        '417 Marion,New York\n UnitedStates',
        'Full Time',
        [
          'Creative with an eye for shape colour',
          'Understand different material and production method',
          'How technical, practical and scientific knowledge and ability',
          'Intrested in the way people choose and use product'
        ],
      ),
      Job(
        'Airbnb lnc,',
        'assets/images/airbnb_logo.png',
        false,
        'Vp Buisnesss Intelligence',
        '417 Marion,New York\n UnitedStates',
        'Full Time',
        [
          'Creative with an eye for shape colour',
          'Understand different material and production method',
          'How technical, practical and scientific knowledge and ability',
          'Intreseted in the way people choose and use product'
        ],
      ),
      Job(
        'Linkedin corps,',
        'assets/images/linkedin_logo.png',
        false,
        'Talent Aquistion Lead',
        '417 Marion,New York\n UnitedStates',
        'Full Time',
        [
          'Creative with an eye for shape colour',
          'Understand different material and production method',
          'How technical, practical and scientific knowledge and ability',
          'Intreseted in the way people choose and use product'
        ],
      ),

    ];
  }
}
