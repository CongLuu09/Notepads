import 'package:flutter/material.dart';
import 'package:nodetpads/models/note_model.dart';
import 'package:nodetpads/services/database_service.dart';
import 'package:nodetpads/widgets/note_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Note> notes = DatabaseService.getNotes();

    return Scaffold(
      appBar: AppBar(
        title: Text('Notepad'),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return NoteTile(note: notes[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/create');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}