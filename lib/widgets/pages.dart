import 'package:flutter/material.dart';

class NotesList extends StatelessWidget {
  final List<String> notes;
  final Function(int) onDelete;
  final Function(int, String) onEdit;

  const NotesList({
    required this.notes,
    required this.onDelete,
    required this.onEdit,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 80, 18, 186),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      notes[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      openEditDialog(context, index);
                    },
                    icon: const Icon(Icons.edit, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {
                      onDelete(index);
                    },
                    icon: const Icon(Icons.delete, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void openEditDialog(BuildContext context, int index) {
    String editedNote = notes[index];
    TextEditingController editingController =
        TextEditingController(text: editedNote);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Note'),
          content: TextField(
            controller: editingController,
            decoration: const InputDecoration(
              hintText: 'Edit your note...',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                String newNote = editingController.text.trim();
                if (newNote.isNotEmpty) {
                  onEdit(index, newNote); 
                  Navigator.pop(context); 
                }
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
