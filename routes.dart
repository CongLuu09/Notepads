import 'package:flutter/material.dart';
import 'package:nodetpads/screens/home_screen.dart';
import 'package:nodetpads/screens/note_detail_screen.dart';

import 'models/note_model.dart';
import 'screens/create_note_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeScreen(),
  '/create': (context) => CreateNoteScreen(),
  '/detail': (context) => NoteDetailScreen(Note: Note),
};

