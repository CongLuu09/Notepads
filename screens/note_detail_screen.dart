import 'package:flutter/material.dart';
import 'package:nodetpads/models/note_model.dart';

class NoteDetailScreen extends StatelessWidget {
  final Note;

  NoteDetailScreen({required this.Note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Note.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Note.content,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Created on: ${Note.dateCreated.toLocal()}',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
