import 'package:flutter/material.dart';
import 'package:nodetpads/models/note_model.dart';
import 'package:nodetpads/screens/note_detail_screen.dart';
class NoteTile extends StatelessWidget {
  final Note note;

  NoteTile({required this.note});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(note.title),
      subtitle: Text(note.content.length > 30
          ? note.content.substring(0, 30) + '...'
          : note.content),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NoteDetailScreen(Note: note),
          ),
        );
      },
    );
  }
}
