import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseconggg16/pages/tasks_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(home: TasksPage(), debugShowCheckedModeBanner: false));
}
