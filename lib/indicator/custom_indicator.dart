// import 'package:flutter/material.dart';



// child: Padding(
//   padding: const EdgeInsets.only(top: 12, bottom: 1),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       Column(
//         children: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 currentIndex = 0;
//               });
//             },
//             icon: (currentIndex == 0)
//               ? const Icon(
//                   Icons.home_filled,
//                   size: 33,
//                   color: Color.fromRGBO(106, 98, 183, 1),
//                 )
//               : const Icon(
//                 Icons.home_filled,
//                 size: 33,
//                 color: Color.fromRGBO(185, 212, 220, 1),
//             )
//             ,
//           ),
//           (currentIndex == 0)
//             ? Padding(
//               padding: const EdgeInsets.only(top: 15),
//               child: Container(
//                   height: 4,
//                   width: 28,
//                   // padding: const EdgeInsets.only(top: 20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(1.5),
//                     color: const Color.fromRGBO(106, 98, 183, 1),
//                     boxShadow: const [
//                       BoxShadow(
//                         offset: Offset(0, -2),
//                         blurRadius: 6,
//                         color: Color.fromRGBO(185, 177, 255, 1),
//                       ),
//                     ],
//                   ),
//                 ),
//             )
//             : const SizedBox(),
//         ],
//       ),
//       Column(
//         children: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 currentIndex = 1;
//               });
//             },
//             icon: (currentIndex == 1)
//             ? const Icon(
//                 Icons.calendar_month_outlined,
//                 size: 33,
//                 color: Color.fromRGBO(106, 98, 183, 1),
//               )
//             : const Icon(
//                 Icons.calendar_month_outlined,
//                 size: 33,
//                 color: Color.fromRGBO(185, 212, 220, 1),
//             ),
//           ),
//           (currentIndex == 1)
//             ? Padding(
//               padding: const EdgeInsets.only(top: 15),
//               child: Container(
//                   height: 4,
//                   width: 28,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(1.5),
//                     color: const Color.fromRGBO(106, 98, 183, 1),
//                     boxShadow: const [
//                       BoxShadow(
//                         offset: Offset(0, -2),
//                         blurRadius: 6,
//                         color: Color.fromRGBO(185, 177, 255, 1),
//                       ),
//                     ],
//                   ),
//                 ),
//             )
//             : const SizedBox(),
//         ],
//       ),
//       Column(
//         children: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 currentIndex = 2;
//               });
//               print(currentIndex);
//             },
//             icon:(currentIndex == 2)
//               ? const Icon(
//                   Icons.search_rounded,
//                   size: 33,
//                   color: Color.fromRGBO(106, 98, 183, 1),
//                 )
//               : const Icon(
//                   Icons.search_rounded,
//                   size: 33,
//                   color: Color.fromRGBO(185, 212, 220, 1),
//                 ),
//           ),
//           (currentIndex == 2)
//             ? Padding(
//               padding: const EdgeInsets.only(top: 15),
//               child: Container(
//                   height: 4,
//                   width: 28,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(1.5),
//                     color: const Color.fromRGBO(106, 98, 183, 1),
//                     boxShadow: const [
//                       BoxShadow(
//                         offset: Offset(0, -2),
//                         blurRadius: 6,
//                         color: Color.fromRGBO(185, 177, 255, 1),
//                       ),
//                     ],
//                   ),
//                 ),
//             )
//             : const SizedBox(),
//         ],
//       ),
//       Column(
//         children: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 currentIndex = 3;
//               });
//             },
//             icon: (currentIndex == 3)
//               ? const Icon(
//                   Icons.person_rounded,
//                   size: 33,
//                   color: Color.fromRGBO(106, 98, 183, 1),
//                 )
//               : const Icon(
//                   Icons.person_rounded,
//                   size: 33,
//                   color: Color.fromRGBO(185, 212, 220, 1),
//               ),
//           ),
//           (currentIndex == 3)
//             ? Padding(
//               padding: const EdgeInsets.only(top: 15),
//               child: Container(
//                   height: 4,
//                   width: 28,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(1.5),
//                     color: const Color.fromRGBO(106, 98, 183, 1),
//                     boxShadow: const [
//                       BoxShadow(
//                         offset: Offset(0, -2),
//                         blurRadius: 6,
//                         color: Color.fromRGBO(185, 177, 255, 1),
//                       ),
//                     ],
//                   ),
//                 ),
//             )
//             : const SizedBox(),
//         ],
//       ),
//     ],
//   ),
// ),





// child: ClipRRect(
//   borderRadius: BorderRadius.circular(44),
//   child: BottomNavigationBar(
//     unselectedItemColor: Color.fromRGBO(185, 212, 220, 1),
//     selectedItemColor: Color.fromRGBO(106, 98, 183, 1),
//     showUnselectedLabels: false,
//     showSelectedLabels: false,
//     landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
//     items: const [
//       BottomNavigationBarItem(
//           icon: Icon(
//             Icons.home_filled,
//             size: 30,
//           ),
//         label: '',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(
//           Icons.calendar_month_outlined,
//           size: 30,
//         ),
//         label: '',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(
//           Icons.search_rounded,
//           size: 30,
//         ),
//         label: '',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(
//           Icons.person_rounded,
//           size: 30,
//         ),
//         label: '',
//       ),
//     ]
//   ),
// ),