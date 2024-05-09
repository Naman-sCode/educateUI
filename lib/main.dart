import 'package:flutter/material.dart';
import 'package:educate/pages/Pop-up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        Expanded(
          child: Content(),
        ),
        BottomNavigation(),
      ],
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find your own way",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Search in 600 colleges around!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                color: Colors.white,
                onPressed: () {
                  // Add notification button onPressed action
                },
              ),
            ],
          ),
          SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search for colleges, schools....",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: Icon(Icons.mic),
                  color: Colors.blue[900],
                  onPressed: () {
                    // Add mic button onPressed action
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSheetWidget();
                    },
                  );
                },
                child: ContentItem(
                  image: 'assets/image1.jpeg',
                  label: 'Top Colleges',
                  count: '+126 colleges',
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSheetWidget();
                    },
                  );
                },
                child: ContentItem(
                  image: 'assets/image2.jpg',
                  label: 'Top Schools',
                  count: '+106 schools ',
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSheetWidget();
                    },
                  );
                },
                child: ContentItem(
                  image: 'assets/image3.jpeg',
                  label: 'Exams',
                  count: '   +16 Exams ',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ContentItem extends StatelessWidget {
  final String image;
  final String label;
  final String count;

  const ContentItem({
    Key? key,
    required this.image,
    required this.label,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.black.withOpacity(0.3),
            ),
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Search through thousands of accredited colleges and universities to find the right one for you. Apply in 3 mins, connect with your future.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 250,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                count,
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      color: Colors.blue[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
                onPressed: () {
                  // Add home button onPressed action
                },
              ),
              Text(
                'home',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
                onPressed: () {
                  // Add bookmark button onPressed action
                },
              ),
              Text(
                'bookmark',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
                onPressed: () {
                  // Add directions button onPressed action
                },
              ),
              Text(
                'directions',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
                onPressed: () {
                  // Add profile button onPressed action
                },
              ),
              Text(
                'account',
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:educate/pages/Pop-up.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: HomeBody(),
//     );
//   }
// }

// class HomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Header(),
//         Expanded(
//           child: Content(),
//         ),
//         BottomNavigation(),
//       ],
//     );
//   }
// }

// class Header extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.3,
//       padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
//       decoration: BoxDecoration(
//         color: Colors.blue[900],
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(20),
//           bottomRight: Radius.circular(20),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Find your own way",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
//                     "Search in 600 colleges around!",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16.0,
//                     ),
//                   ),
//                 ],
//               ),
//               IconButton(
//                 icon: Icon(Icons.notifications),
//                 color: Colors.white,
//                 onPressed: () {
//                   // Add notification button onPressed action
//                 },
//               ),
//             ],
//           ),
//           SizedBox(height: 32.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: const TextField(
//                     decoration: InputDecoration(
//                       hintText: "Search for colleges, schools....",
//                       border: InputBorder.none,
//                       prefixIcon: Icon(Icons.search),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(width: 16.0),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   color: Colors.white,
//                 ),
//                 child: IconButton(
//                   icon: Icon(Icons.mic),
//                   color: Colors.blue[900],
//                   onPressed: () {
//                     // Add mic button onPressed action
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Content extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: Stack(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   showModalBottomSheet(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return BottomSheetWidget();
//                     },
//                   );
//                 },
//                 child: ContentItem(
//                   image: 'assets/image1.jpeg',
//                   label: 'Top Colleges',
//                   count: '+126 colleges',
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Expanded(
//           child: Stack(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   showModalBottomSheet(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return BottomSheetWidget();
//                     },
//                   );
//                 },
//                 child: ContentItem(
//                   image: 'assets/image2.jpg',
//                   label: 'Top Schools',
//                   count: '+106 schools',
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Expanded(
//           child: Stack(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   showModalBottomSheet(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return BottomSheetWidget();
//                     },
//                   );
//                 },
//                 child: ContentItem(
//                   image: 'assets/image3.jpeg',
//                   label: 'Exams',
//                   count: '+16 Exams',
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class ContentItem extends StatelessWidget {
//   final String image;
//   final String label;
//   final String count;

//   const ContentItem({
//     Key? key,
//     required this.image,
//     required this.label,
//     required this.count,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Positioned.fill(
//       child: Stack(
//         children: [
//           Container(
//             margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16.0),
//               image: DecorationImage(
//                 image: AssetImage(image),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16.0),
//               color: Colors.black.withOpacity(0.3),
//             ),
//             child: Padding(
//               padding: EdgeInsets.all(5.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     label,
//                     style: TextStyle(color: Colors.white, fontSize: 24.0),
//                     textAlign: TextAlign.left,
//                   ),
//                   Text(
//                     "Search through thousands of accredited colleges and universities to find the right one for you. Apply in 3 mins, connect with your future.",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 12.0,
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 10,
//             right: 20,
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               decoration: BoxDecoration(
//                 color: Colors.black.withOpacity(0.7),
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: Text(
//                 count,
//                 style: TextStyle(color: Colors.white, fontSize: 16.0),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BottomNavigation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70.0,
//       color: Colors.blue[900],
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Column(
//             children: [
//               IconButton(
//                 icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                 onPressed: () {
//                   // Add home button onPressed action
//                 },
//               ),
//               Text(
//                 'home',
//                 style: TextStyle(color: Colors.grey, fontSize: 10),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                 icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                 onPressed: () {
//                   // Add bookmark button onPressed action
//                 },
//               ),
//               Text(
//                 'bookmark',
//                 style: TextStyle(color: Colors.grey, fontSize: 10),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                 icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                 onPressed: () {
//                   // Add directions button onPressed action
//                 },
//               ),
//               Text(
//                 'directions',
//                 style: TextStyle(color: Colors.grey, fontSize: 10),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               IconButton(
//                 icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                 onPressed: () {
//                   // Add profile button onPressed action
//                 },
//               ),
//               Text(
//                 'account',
//                 style: TextStyle(color: Colors.grey, fontSize: 10),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(
//               top: MediaQuery.of(context).size.height * 0.09,
//               left: 32.0,
//               right: 16.0,
//             ),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search for colleges, schools....",
//                             border: InputBorder.none,
//                             prefixIcon: Icon(Icons.search),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16.0),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.0),
//                         color: Colors.white,
//                       ),
//                       child: IconButton(
//                         icon: Icon(Icons.mic),
//                         color: Colors.blue[900],
//                         onPressed: () {
//                           // Add mic button onPressed action
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+126 colleges",
//                             style:
//                                 TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.all(10),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Top Colleges",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 24.0,
//                                       ),
//                                     ),
//                                     SizedBox(height: 5.0),
//                                     Text(
//                                       "Search through thousands of accredited colleges and universities to find the right one for you. Apply in 3 mins, connect with your future.",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 12.0,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+106 schools",
//                             style:
//                                 TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.all(10),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Top Schools",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 24.0,
//                                       ),
//                                     ),
//                                     SizedBox(height: 5),
//                                     Text(
//                                       "Searching for the best school for you just got easier. With our Advanced School Search, you can easily filter out schools that are fit for you.",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 12,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 40,
//                         right: 20,
//                         child: Container(
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+16 Exams",
//                             style:
//                                 TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Exams",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 24.0,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                       tooltip: 'Home',
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon:
//                           Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                       tooltip: 'Bookmark',
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions,
//                           size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                       tooltip: 'Directions',
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                       tooltip: 'Account',
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search for colleges, schools....",
//                             border: InputBorder.none,
//                             prefixIcon: Icon(Icons.search),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16.0),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.0),
//                         color: Colors.white,
//                       ),
//                       child: IconButton(
//                         icon: Icon(Icons.mic),
//                         color: Colors.blue[900],
//                         onPressed: () {
//                           // Add mic button onPressed action
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+126 colleges",
//                             style: TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: const Column(
//                             children: [
//                               Text(
//                                 "Top Colleges",
//                                 style: TextStyle(color: Colors.white, fontSize: 24.0),
//                               ),
//                               SizedBox(height: 5.0),
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Text(
//                                   "Search through thousands of accredited colleges and universities to find the right one for you. Apply in 3 mins, connect with your future.",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 12.0,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+106 schools",
//                             style: TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Top Schools",
//                                 style: TextStyle(color: Colors.white, fontSize: 24.0),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 40,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+16 Exams",
//                             style: TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Exams",
//                                 style: TextStyle(color: Colors.white, fontSize: 24.0),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                       tooltip: 'Home',
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                       tooltip: 'Bookmark',
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                       tooltip: 'Directions',
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                       tooltip: 'Account',
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(
//                 top: MediaQuery.of(context).size.height * 0.09,
//                 left: 32.0,
//                 right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         // Spacer(),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search for colleges, schools....",
//                             border: InputBorder.none,
//                             prefixIcon: Icon(Icons.search),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16.0),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.0),
//                         color: Colors.white,
//                       ),
//                       child: IconButton(
//                         icon: Icon(Icons.mic),
//                         color: Colors.blue[900],
//                         onPressed: () {
//                           // Add mic button onPressed action
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+126 colleges",
//                             style:
//                                 TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                           child: Container(
//                               margin: EdgeInsets.fromLTRB(20, 35, 20, 5),
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(16.0),
//                                 color: Colors.black.withOpacity(0.3),
//                               ),
//                               child: const Center(
//                                 child: Padding(
//                                   padding: EdgeInsets.all(10.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         "Top Colleges",
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 15.0,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                           height:
//                                               5.0), 
//                                       Align(
//                                         alignment: Alignment.centerLeft,
//                                         child: Text(
//                                           "Search through thousands of accredited colleges and universities to find the right one for you. Apply in 3 mins, connect with your future.",
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 12.0,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ))),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 5),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
                              
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(),
//                           ),
//                           child: Text(
//                             "+106 schools",
//                             style:
//                                 TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 5),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Schools",
//                               style: TextStyle(
//                                   color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 5, 20, 35),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 40,
//                         right: 20,
//                         child: Container(
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           child: Text(
//                             "+16 Exams",
//                             style:
//                                 TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 5, 20, 35),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Exams",
//                               style: TextStyle(
//                                   color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon:
//                           Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions,
//                           size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                         print(MediaQuery.of(context).size);
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search for colleges, schools....",
//                             border: InputBorder.none,
//                             prefixIcon: Icon(Icons.search),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16.0),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.0),
//                         color: Colors.white,
//                       ),
//                       child: IconButton(
//                         icon: Icon(Icons.mic),
//                         color: Colors.blue[900],
//                         onPressed: () {
//                           // Add mic button onPressed action
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+126 colleges",
//                             style: TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Colleges",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
                            
//                           ),
//                           SizedBox(
//                                       height:
//                                               5.0), 
//                                       Align(
//                                         alignment: Alignment.centerLeft,
//                                         child: Text(
//                                           "Search through thousands of accredited colleges and universities to find the right one for you. Apply in 3 mins, connect with your future.",
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 12.0,
//                                           ),
//                                         ),
//                                       ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(),
//                           ),
//                           child: Text(
//                             "+106 schools",
//                             style: TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Schools",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 40,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           child: Text(
//                             "+16 Exams",
//                             style: TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Exams",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),  
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// PERFECT
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search for colleges, schools....",
//                             border: InputBorder.none,
//                             prefixIcon: Icon(Icons.search),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16.0),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.0),
//                         color: Colors.white,
//                       ),
//                       child: IconButton(
//                         icon: Icon(Icons.mic),
//                         color: Colors.blue[900],
//                         onPressed: () {
//                           // Add mic button onPressed action
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10),
//                           decoration: BoxDecoration(
//                             color: Colors.black.withOpacity(0.7),
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+126 colleges",
//                             style: TextStyle(color: Colors.white, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
                          
                         
//                           child: Padding(padding:EdgeInsets.all(5.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Top Colleges",
//                                 style: TextStyle(color: Colors.white, fontSize: 24.0),
//                                 textAlign: TextAlign.left,
//                               ),
//                               Text(
//                                 "Search through thousands of accredited colleges and universities to find the right one for you. Apply in 3 mins, connect with your future.",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 12.0,
//                                 ),
//                                 textAlign: TextAlign.left,
//                               ),
//                             ],
//                           ),
//                           ),
//                         ),
                        
//                       )
//                       //   ),
//                       // ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.black.withOpacity(0.7),
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+106 schools",
//                             style: TextStyle(color: Colors.white, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Schools",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 5, 20, 35),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 40,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.black.withOpacity(0.7),
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+16 Exams",
//                             style: TextStyle(color: Colors.white, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 5, 20, 35),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Exams",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// positioned
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search for colleges, schools....",
//                             border: InputBorder.none,
//                             prefixIcon: Icon(Icons.search),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16.0),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.0),
//                         color: Colors.white,
//                       ),
//                       child: IconButton(
//                         icon: Icon(Icons.mic),
//                         color: Colors.blue[900],
//                         onPressed: () {
//                           // Add mic button onPressed action
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+126 colleges",
//                             style: TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Colleges",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(),
//                           ),
//                           child: Text(
//                             "+106 schools",
//                             style: TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Schools",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 40,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           child: Text(
//                             "+16 Exams",
//                             style: TextStyle(color: Colors.black, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Exams",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// PERFECT
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search for colleges, schools....",
//                             border: InputBorder.none,
//                             prefixIcon: Icon(Icons.search),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16.0),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.0),
//                         color: Colors.white,
//                       ),
//                       child: IconButton(
//                         icon: Icon(Icons.mic),
//                         color: Colors.blue[900],
//                         onPressed: () {
//                           // Add mic button onPressed action
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.black.withOpacity(0.7),
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+126 colleges",
//                             style: TextStyle(color: Colors.white, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Colleges",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 10,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.black.withOpacity(0.7),
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+106 schools",
//                             style: TextStyle(color: Colors.white, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Schools",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: 40,
//                         right: 20,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                           decoration: BoxDecoration(
//                             color: Colors.black.withOpacity(0.7),
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: Text(
//                             "+16 Exams",
//                             style: TextStyle(color: Colors.white, fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Exams",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: "Search for colleges, schools....",
//                             border: InputBorder.none,
//                             prefixIcon: Icon(Icons.search),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16.0),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10.0),
//                         color: Colors.white,
//                       ),
//                       child: IconButton(
//                         icon: Icon(Icons.mic),
//                         color: Colors.blue[900],
//                         onPressed: () {
//                           // Add mic button onPressed action
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Top Colleges",
//                                   style: TextStyle(color: Colors.white, fontSize: 24.0),
//                                 ),
//                                 Text(
//                                   "+126 colleges",
//                                   style: TextStyle(color: Colors.white, fontSize: 16.0),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Top Schools",
//                                   style: TextStyle(color: Colors.white, fontSize: 24.0),
//                                 ),
//                                 Text(
//                                   "+106 schools",
//                                   style: TextStyle(color: Colors.white, fontSize: 16.0),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Exams",
//                                   style: TextStyle(color: Colors.white, fontSize: 24.0),
//                                 ),
//                                 Text(
//                                   "+16 Exams",
//                                   style: TextStyle(color: Colors.white, fontSize: 16.0),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

// }




// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: const TextField(
//                             decoration: InputDecoration(
//                               hintText: "Search for colleges, schools....",
//                               border: InputBorder.none,
//                               prefixIcon: Icon(Icons.search),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 16.0),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10.0),
//                           color: Colors.white,
//                         ),
//                         child: IconButton(
//                           icon: Icon(Icons.mic),
//                           color: Colors.blue[900],
//                           onPressed: () {
//                             // Add mic button onPressed action
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Colleges",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Schools",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Exams",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 16.0),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               hintText: "Search for colleges, schools....",
//                               border: InputBorder.none,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 16.0),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10.0),
//                           color: Colors.white,
//                         ),
//                         child: IconButton(
//                           icon: Icon(Icons.mic),
//                           color: Colors.blue[900],
//                           onPressed: () {
//                             // Add mic button onPressed action
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(16.0),
//                           image: DecorationImage(
//                             image: AssetImage('assets/image1.jpeg'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(16.0),
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 bottom: 10,
//                                 right: 10,
//                                 child: Container(
//                                   padding: EdgeInsets.all(8.0),
//                                   decoration: BoxDecoration(
//                                     color: Colors.black.withOpacity(0.5),
//                                     borderRadius: BorderRadius.circular(10.0),
//                                   ),
//                                   child: Text(
//                                     "+126 Colleges",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Container(
//                         margin:
//                             EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(16.0),
//                           image: DecorationImage(
//                             image: AssetImage('assets/image2.jpg'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(16.0),
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 bottom: 10,
//                                 right: 10,
//                                 child: Container(
//                                   padding: EdgeInsets.all(8.0),
//                                   decoration: BoxDecoration(
//                                     color: Colors.black.withOpacity(0.5),
//                                     borderRadius: BorderRadius.circular(10.0),
//                                   ),
//                                   child: Text(
//                                     "Top Schools",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(16.0),
//                           image: DecorationImage(
//                             image: AssetImage('assets/image3.jpeg'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(16.0),
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 bottom: 10,
//                                 right: 10,
//                                 child: Container(
//                                   padding: EdgeInsets.all(8.0),
//                                   decoration: BoxDecoration(
//                                     color: Colors.black.withOpacity(0.5),
//                                     borderRadius: BorderRadius.circular(10.0),
//                                   ),
//                                   child: Text(
//                                     "Exams",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon:
//                           Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions,
//                           size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
   







// Best do the padding right that's it
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: const TextField(
//                             decoration: InputDecoration(
//                               hintText: "Search for colleges, schools....",
//                               border: InputBorder.none,
//                               prefixIcon: Icon(Icons.search),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 16.0),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10.0),
//                           color: Colors.white,
//                         ),
//                         child: IconButton(
//                           icon: Icon(Icons.mic),
//                           color: Colors.blue[900],
//                           onPressed: () {
//                             // Add mic button onPressed action
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Colleges",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Top Schools",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Exams",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// Only padding issue
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Find your own way",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           "Search in 600 colleges around!",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 16.0),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: TextField(
//                             enabled: false,
//                             decoration: InputDecoration(
//                               hintText: "Search for colleges, schools....",
//                               border: InputBorder.none,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 16.0),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10.0),
//                           color: Colors.white,
//                         ),
//                         child: IconButton(
//                           icon: Icon(Icons.mic),
//                           color: Colors.blue[900],
//                           onPressed: () {
//                             // Add mic button onPressed action
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image1.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Image 1",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image2.jpg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Image 2",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             image: DecorationImage(
//                               image: AssetImage('assets/image3.jpeg'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16.0),
//                             color: Colors.black.withOpacity(0.3),
//                           ),
//                           child: Center(
//                             child: Text(
//                               "Image 3",
//                               style: TextStyle(color: Colors.white, fontSize: 24.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'home',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'bookmark',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'directions',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





// Only padding issue
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.3,
//             padding: EdgeInsets.only(top: 60, left: 32.0, right: 16.0),
//             decoration: BoxDecoration(
//               color: Colors.blue[900],
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Find your own way",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8.0),
//                     Text(
//                       "Search in 600 colleges around!",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16.0,
//                       ),
//                     ),
//                       ],
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.notifications),
//                       color: Colors.white,
//                       onPressed: () {
//                         // Add notification button onPressed action
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 32.0),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 16.0),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                           child: TextField(
//                             enabled: false,
//                             decoration: InputDecoration(
//                               hintText: "Search for colleges, schools....",
//                               border: InputBorder.none,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 16.0),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10.0),
//                           color: Colors.white,
//                         ),
//                         child: IconButton(
//                           icon: Icon(Icons.mic),
//                           color: Colors.blue[900],
//                           onPressed: () {
//                             // Add mic button onPressed action
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Stack(
//               children: [
//                 Positioned.fill(
//                   child: Container(
//                     margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16.0),
//                       image: DecorationImage(
//                         image: AssetImage('assets/image1.jpeg') ,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned.fill(
//                   child: Container(
//                     margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16.0),
//                       color: Colors.black.withOpacity(0.3),
//                     ),
//                     child: Center(
//                       child: Text(
//                         "",
//                         style: TextStyle(color: Colors.white, fontSize: 24.0),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Stack(
//               children: [
//                 Positioned.fill(
//                   child: Container(
//                     margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16.0),
//                       image: DecorationImage(
//                         image: AssetImage('assets/image2.jpg'), // Replace this with your image
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned.fill(
//                   child: Container(
//                     margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16.0),
//                       color: Colors.black.withOpacity(0.3),
//                     ),
//                     child: Center(
//                       child: Text(
//                         "",
//                         style: TextStyle(color: Colors.white, fontSize: 24.0),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Stack(
//               children: [
//                 Positioned.fill(
//                   child: Container(
//                     margin: EdgeInsets.all(20.0),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16.0),
//                       image: DecorationImage(
//                         image: AssetImage('assets/image3.jpeg'), // Replace this with your image
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned.fill(
//                   child: Container(
//                     margin: EdgeInsets.all(20.0),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16.0),
//                       color: Colors.black.withOpacity(0.3),
//                     ),
//                     child: Center(
//                       child: Text(
//                         "",
//                         style: TextStyle(color: Colors.white, fontSize: 24.0),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 70.0,
//             color: Colors.blue[900],
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add home button onPressed action
//                       },
//                     ),
//                     Text(
//                       'search',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.bookmark, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add bookmark button onPressed action
//                       },
//                     ),
//                     Text(
//                       'saved',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.directions, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add directions button onPressed action
//                       },
//                     ),
//                     Text(
//                       'saved',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person, size: 28.0, color: Colors.grey),
//                       onPressed: () {
//                         // Add profile button onPressed action
//                       },
//                     ),
//                     Text(
//                       'account',
//                       style: TextStyle(color: Colors.grey, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//         ],
//       ),
//     );
//   }
// }
