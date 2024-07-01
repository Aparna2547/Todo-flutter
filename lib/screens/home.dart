import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/constants/colors.dart';

class MyHome extends StatelessWidget{
  const MyHome ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:tdBGColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const  Icon(
              Icons.menu,
              color: tdBlack,
              size:30,
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/avathar.jpeg'),
              ),
            )
          ],
        ),
      )
    );
  }
}



// import 'package:flutter/material.dart';

// class NotesList extends StatelessWidget{
//    NotesList ({super.key});

// List todoList = [
//   ["learn flutter",false],
//   ["Drink coffee",false],
//   ["learn node",false]
// ];

//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//     body: ListView.builder(
//       itemCount: todoList.length,
//       itemBuilder: (BuildContext context ,int index){
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             color:const Color.fromARGB(255, 136, 4, 127),
//             padding:const  EdgeInsets.all(10),
//             decoration:const BoxDecoration(
//               color: Colors.deepPurple,
//               // borderRadius: BorderRadius.circular(15),
//             ),
//             child:Text(
//               todoList[index][0]
//             )
//           ),
//         );
//       }
//     ),
//    );
//   }}