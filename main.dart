import 'package:flutter/material.dart';
import 'package:nodetpads/screens/home_screen.dart';
import 'package:nodetpads/routes.dart';

void main() {
  runApp(NotepadApp());
}
class NotepadApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notepad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: appRoutes,
    );
  }

}
