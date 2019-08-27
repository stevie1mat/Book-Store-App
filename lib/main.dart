import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:math';
import 'package:positioning_drill_real/screens/login_page.dart';
import 'auth.dart';
import 'root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   @override
   Widgetbuild(BuildContext context) {
      returnMaterialApp(
         home: RootPage(auth: new Auth()),
         debugShowCheckedModeBanner: false,
         theme: ThemeData(primarySwatch: Colors.blue),
      );
   }
}