import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sort by',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black, // Set the color of the divider to black
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.school, size: 20),
                        SizedBox(width: 10),
                        Text('Bachelors of Technology', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    if (selectedOption == 'Bachelors of Technology')
                      Icon(Icons.radio_button_checked, size: 20)
                    else
                      Icon(Icons.radio_button_unchecked, size: 20),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedOption = 'Bachelors of Technology';
                  });
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.architecture, size: 20),
                        SizedBox(width: 10),
                        Text('Bachelor of Architecture', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    if (selectedOption == 'Bachelor of Architecture')
                      Icon(Icons.radio_button_checked, size: 20)
                    else
                      Icon(Icons.radio_button_unchecked, size: 20),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedOption = 'Bachelor of Architecture';
                  });
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_pharmacy_outlined, size: 20),
                        SizedBox(width: 10),
                        Text('Pharmacy', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    if (selectedOption == 'Pharmacy')
                      Icon(Icons.radio_button_checked, size: 20)
                    else
                      Icon(Icons.radio_button_unchecked, size: 20),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedOption = 'Pharmacy';
                  });
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.scale_outlined, size: 20),
                        SizedBox(width: 10),
                        Text('Law', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    if (selectedOption == 'Law')
                      Icon(Icons.radio_button_checked, size: 20)
                    else
                      Icon(Icons.radio_button_unchecked, size: 20),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedOption = 'Law';
                  });
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.settings_accessibility_outlined, size: 20),
                        SizedBox(width: 10),
                        Text('Management', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    if (selectedOption == 'Management')
                      Icon(Icons.radio_button_checked, size: 20)
                    else
                      Icon(Icons.radio_button_unchecked, size: 20),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedOption = 'Management';
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';


// class BottomSheetWidget extends StatefulWidget {
//   @override
//   _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
// }

// class _BottomSheetWidgetState extends State<BottomSheetWidget> {
//   String? selectedOption;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(20),
//         topRight: Radius.circular(20),
//       ),
//       color: Colors.white,
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Sort by',
//                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.close),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               Divider(
//                 color: Colors.black, // Set the color of the divider to black
//               ),
//               ListTile(
//                 title: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(Icons.school, size: 20),
//                         SizedBox(width: 10),
//                         Text('Bachelors of Technology',
//                             style: TextStyle(fontSize: 14)),
//                       ],
//                     ),
//                     if (selectedOption == 'Bachelors of Technology')
//                       Icon(Icons.radio_button_checked, size: 20)
//                     else
//                       Icon(Icons.radio_button_unchecked, size: 20),
//                   ],
//                 ),
//                 onTap: () {
//                   setState(() {
//                     selectedOption = 'Bachelors of Technology';
//                   });
//                 },
//               ),
//               ListTile(
//                 title: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(Icons.architecture, size: 20),
//                         SizedBox(width: 10),
//                         Text('Bachelor of Architecture',
//                             style: TextStyle(fontSize: 14)),
//                       ],
//                     ),
//                     if (selectedOption == 'Bachelor of Architecture')
//                       Icon(Icons.radio_button_checked, size: 20)
//                     else
//                       Icon(Icons.radio_button_unchecked, size: 20),
//                   ],
//                 ),
//                 onTap: () {
//                   setState(() {
//                     selectedOption = 'Bachelor of Architecture';
//                   });
//                 },
//               ),
//               ListTile(
//                 title: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(Icons.local_pharmacy_outlined, size: 20),
//                         SizedBox(width: 10),
//                         Text('Pharmacy', style: TextStyle(fontSize: 14)),
//                       ],
//                     ),
//                     if (selectedOption == 'Pharmacy')
//                       Icon(Icons.radio_button_checked, size: 20)
//                     else
//                       Icon(Icons.radio_button_unchecked, size: 20),
//                   ],
//                 ),
//                 onTap: () {
//                   setState(() {
//                     selectedOption = 'Pharmacy';
//                   });
//                 },
//               ),
//               ListTile(
//                 title: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(Icons.scale_outlined, size: 20),
//                         SizedBox(width: 10),
//                         Text('Law', style: TextStyle(fontSize: 14)),
//                       ],
//                     ),
//                     if (selectedOption == 'Law')
//                       Icon(Icons.radio_button_checked, size: 20)
//                     else
//                       Icon(Icons.radio_button_unchecked, size: 20),
//                   ],
//                 ),
//                 onTap: () {
//                   setState(() {
//                     selectedOption = 'Law';
//                   });
//                 },
//               ),
//               ListTile(
//                 title: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(Icons.settings_accessibility_outlined, size: 20),
//                         SizedBox(width: 10),
//                         Text('Management', style: TextStyle(fontSize: 14)),
//                       ],
//                     ),
//                     if (selectedOption == 'Management')
//                       Icon(Icons.radio_button_checked, size: 20)
//                     else
//                       Icon(Icons.radio_button_unchecked, size: 20),
//                   ],
//                 ),
//                 onTap: () {
//                   setState(() {
//                     selectedOption = 'Management';
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }







// Screen 2 perfect
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bottom Sheet Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showModalBottomSheet(
//               context: context,
//               builder: (BuildContext context) {
//                 return BottomSheetWidget();
//               },
//             );
//           },
//           child: Text('Open Bottom Sheet'),
//         ),
//       ),
//     );
//   }
// }

// class BottomSheetWidget extends StatefulWidget {
//   @override
//   _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
// }

// class _BottomSheetWidgetState extends State<BottomSheetWidget> {
//   String? selectedOption;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       height: 400,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Sort by',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.close),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             ),
//           ),
//           Divider(
//             color: Colors.black, // Set the color of the divider to black
//           ),
//           ListTile(
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Bachelors of Technology', style: TextStyle(fontSize: 14)),
//                 if (selectedOption == 'Bachelors of Technology')
//                   Icon(Icons.radio_button_checked, size: 20)
//                 else
//                   Icon(Icons.radio_button_unchecked, size: 20),
//               ],
//             ),
//             onTap: () {
//               setState(() {
//                 selectedOption = 'Bachelors of Technology';
//               });
//             },
//           ),
//           ListTile(
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Bachelor of Architecture', style: TextStyle(fontSize: 14)),
//                 if (selectedOption == 'Bachelor of Architecture')
//                   Icon(Icons.radio_button_checked, size: 20)
//                 else
//                   Icon(Icons.radio_button_unchecked, size: 20),
//               ],
//             ),
//             onTap: () {
//               setState(() {
//                 selectedOption = 'Bachelor of Architecture';
//               });
//             },
//           ),
//           ListTile(
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Pharmacy', style: TextStyle(fontSize: 14)),
//                 if (selectedOption == 'Pharmacy')
//                   Icon(Icons.radio_button_checked, size: 20)
//                 else
//                   Icon(Icons.radio_button_unchecked, size: 20),
//               ],
//             ),
//             onTap: () {
//               setState(() {
//                 selectedOption = 'Pharmacy';
//               });
//             },
//           ),
//           ListTile(
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Law', style: TextStyle(fontSize: 14)),
//                 if (selectedOption == 'Law')
//                   Icon(Icons.radio_button_checked, size: 20)
//                 else
//                   Icon(Icons.radio_button_unchecked, size: 20),
//               ],
//             ),
//             onTap: () {
//               setState(() {
//                 selectedOption = 'Law';
//               });
//             },
//           ),
//           ListTile(
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Management', style: TextStyle(fontSize: 14)),
//                 if (selectedOption == 'Management')
//                   Icon(Icons.radio_button_checked, size: 20)
//                 else
//                   Icon(Icons.radio_button_unchecked, size: 20),
//               ],
//             ),
//             onTap: () {
//               setState(() {
//                 selectedOption = 'Management';
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


// Screen 2 almost there 
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bottom Sheet Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showModalBottomSheet(
//               context: context,
//               builder: (BuildContext context) {
//                 return BottomSheetWidget();
//               },
//             );
//           },
//           child: Text('Open Bottom Sheet'),
//         ),
//       ),
//     );
//   }
// }

// class BottomSheetWidget extends StatefulWidget {
//   @override
//   _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
// }

// class _BottomSheetWidgetState extends State<BottomSheetWidget> {
//   String? selectedOption;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       height: 300,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Sort by',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.close),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             ),
//           ),
//           Divider(
//             color: Colors.black, // Set the color of the divider to black
//           ),
//           Expanded(
//             child: ListView(
//               children: [
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('Bachelors of Technology'),
//                       if (selectedOption == 'Bachelors of Technology')
//                         Icon(Icons.radio_button_checked)
//                       else
//                         Icon(Icons.radio_button_unchecked),
//                     ],
//                   ),
//                   onTap: () {
//                     setState(() {
//                       selectedOption = 'Bachelors of Technology';
//                     });
//                   },
//                 ),
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('Bachelor of Architecture'),
//                       if (selectedOption == 'Bachelor of Architecture')
//                         Icon(Icons.radio_button_checked)
//                       else
//                         Icon(Icons.radio_button_unchecked),
//                     ],
//                   ),
//                   onTap: () {
//                     setState(() {
//                       selectedOption = 'Bachelor of Architecture';
//                     });
//                   },
//                 ),
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('Pharmacy'),
//                       if (selectedOption == 'Pharmacy')
//                         Icon(Icons.radio_button_checked)
//                       else
//                         Icon(Icons.radio_button_unchecked),
//                     ],
//                   ),
//                   onTap: () {
//                     setState(() {
//                       selectedOption = 'Pharmacy';
//                     });
//                   },
//                 ),
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('Law'),
//                       if (selectedOption == 'Law')
//                         Icon(Icons.radio_button_checked)
//                       else
//                         Icon(Icons.radio_button_unchecked),
//                     ],
//                   ),
//                   onTap: () {
//                     setState(() {
//                       selectedOption = 'Law';
//                     });
//                   },
//                 ),
//                 ListTile(
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('Management'),
//                       if (selectedOption == 'Management')
//                         Icon(Icons.radio_button_checked)
//                       else
//                         Icon(Icons.radio_button_unchecked),
//                     ],
//                   ),
//                   onTap: () {
//                     setState(() {
//                       selectedOption = 'Management';
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
