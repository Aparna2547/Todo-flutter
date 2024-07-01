import 'package:flutter/material.dart';

class Createnote extends StatefulWidget {
final Function(String) addNote;
const Createnote({super.key, required this.addNote});
  @override
  State<Createnote> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Createnote> {
final TextEditingController noteController = TextEditingController();

  @override
  void dispose() {
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:const BorderRadius.all(Radius.circular(5)),
                // border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: noteController,
                      decoration:const InputDecoration(
                        hintText: 'Add a note...',
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      style:const TextStyle(fontSize: 16, color: Color.fromARGB(221, 104, 6, 83)),
                    ),
                  ),
                const  SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {
                      String newNote = noteController.text.trim();
                      if (newNote.isNotEmpty) {
                        setState(() {
                          widget.addNote(newNote);
                          noteController.clear();
                        });
                      }
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor:Color.fromARGB(255, 118, 8, 85),
                      foregroundColor: Colors.white,
                      shape:const BeveledRectangleBorder(),
                    ),
                    child:const Text('Add'),
                  ),
                ],
              ),
            ),
           const  SizedBox(height: 20),
           
          ],
        ),
      ),
    );
  }
}
