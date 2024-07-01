import 'package:flutter/material.dart';

class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 100,
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child:const TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your note',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.note),
                  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




      // body: ListView.builder(
        
      //   // itemCount: todoList.length,
      //   itemCount: notes.length,

      //   itemBuilder: (BuildContext context, int index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         padding:const EdgeInsets.all(10),
      //         decoration: BoxDecoration(
      //           color: const Color.fromARGB(255, 80, 18, 186),
      //           borderRadius: BorderRadius.circular(10),
                
      //         ),
      //       

      //         // child: Row(
      //         //   children: [
      //         //     Expanded(
      //         //       child: Text(
      //         //         todoList[index][0],
      //         //         style: const TextStyle(color: Colors.white, fontSize: 18),
      //         //       ),
      //         //     ),
      //         //    const SizedBox(width: 20),
      //         //     IconButton(
      //         //       onPressed: () {
      //         //       print('hii');
      //         //       },
      //         //       icon:const Icon(Icons.edit, color: Colors.white),
      //         //     ),
      //         //     IconButton(
      //         //       onPressed: () {
      //         //       },
      //         //       icon:const Icon(Icons.delete, color: Colors.white),
      //         //     ),
      //         //   ],
      //         // ),
      //       ),
      //     );
      //   },
      // pages|

      //matte createnote le page
       // Expanded(
            //   child: ListView.builder(
            //     itemCount: notes.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Container(
            //           padding: const EdgeInsets.all(10),
            //           decoration: BoxDecoration(
            //             color: const Color.fromARGB(255, 80, 18, 186),
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //           child: Row(
            //             children: [
            //               Expanded(
            //                 child: Text(
            //                   notes[index],
            //                   style: const TextStyle(
            //                     color: Colors.white,
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(width: 20),
            //               IconButton(
            //                 onPressed: () {
            //                   // Handle edit button press
            //                   print('Edit note: ${notes[index]}');
            //                 },
            //                 icon: Icon(Icons.edit, color: Colors.white),
            //               ),
            //               IconButton(
            //                 onPressed: () {
            //                   // Handle delete button press
            //                   setState(() {
            //                     notes.removeAt(index);
            //                   });
            //                 },
            //                 icon: Icon(Icons.delete, color: Colors.white),
            //               ),
            //             ],
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),





            

 // appBar: AppBar(
      //   title: const Text('Add note'),
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(4),
      //   child: Column(
      //     children: [
      //       Container(
      //         width: 100,
      //         color: Colors.red,
      //         child:const Center(
      //           child: Text(
      //             'Your Note Content',
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 18,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),