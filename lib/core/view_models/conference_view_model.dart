import 'package:flutter/material.dart';

class ConferenceViewModel with ChangeNotifier {
  List<Conference> _conferenceList = [];
}

class Conference {
  String _title;
  
}
