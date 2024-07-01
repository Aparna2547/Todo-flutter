import 'package:flutter/material.dart';
import 'package:todo/widgets/appBar.dart';
import 'package:todo/widgets/createNote.dart';
import 'package:todo/widgets/pages.dart';

class NotesListing extends StatefulWidget {
  const NotesListing({Key? key}) : super(key: key);

  @override
  State<NotesListing> createState() => _NotesListingState();
}

class _NotesListingState extends State<NotesListing> {
  List<String> notes = [];

  void addNote(String newNote) {
    setState(() {
      notes.add(newNote);
    });
  }

  void editNote(int index,String editedNote){
    setState(() {
      notes[index] = editedNote;
    });
  }

  void deleteNote(int index) {
    setState(() {
      notes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Navbar(),
      ),
      body: Column(
        children: [
          Createnote(
            addNote: addNote,
          ),
          Expanded(
            child: NotesList(
              notes: notes,
              onEdit :editNote,
              onDelete: deleteNote,
            ),
          ),
        ],
      ),
    );
  }
}
