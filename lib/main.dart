import 'package:flutter/material.dart';
import 'package:flutter_app_mountain/cubit/app_cubit_logic.dart';
import 'package:flutter_app_mountain/cubit/app_cubits.dart';
import 'package:flutter_app_mountain/pages/detail_page.dart';
import 'package:flutter_app_mountain/pages/navpages/main_page.dart';
import 'package:flutter_app_mountain/pages/welcome_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(),
        child: AppCubitLogics(),
      ),
    );
  }
}
