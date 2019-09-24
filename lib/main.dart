import 'package:cpp_schedule_calendar_app/core/view_models/app_view_model.dart';
import 'package:cpp_schedule_calendar_app/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            builder: (BuildContext _) {
              return AppViewModel();
            },
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}
