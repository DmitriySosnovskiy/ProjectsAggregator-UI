import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_work_ui/app/Strings.dart';
import 'package:graduation_work_ui/features/registration/presentation/ui/registration_form.dart';
import 'package:graduation_work_ui/runner.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationForm(),
    );
  }
}