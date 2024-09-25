import 'package:nodetpads/models/note_model.dart';

class DatabaseService {
  static List<Note> _notes = [];

  static List<Note> getNotes() {
    return _notes;
  }

  static void addNote(Note note) {
    _notes.add(note);
  }
}
