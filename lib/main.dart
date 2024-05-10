import 'package:flutter/material.dart';
import 'package:educate/pages/Pop-up.dart';

// Code is according to screen size - Size(448.0, 949.3), can be optimised for 
// all screen sizes
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
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.085,
          left: 32.0,
          right: 16.0),
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.0084),
                  Text(
                    "Search in 600 colleges around!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.0168,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height * 0.0316),
              child: 
              IconButton(
                icon: Icon(Icons.notifications),
                color: Colors.white,
                onPressed: () {
                  // Add notification button onPressed action
                },
              ),
            )
              
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.0450),
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
                    // enabled: false,
                    decoration: InputDecoration(
                      hintText: "Search for colleges, schools....",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.height * 0.0168),
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
    return Stack(
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
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.height * 0.0253),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Search through thousands of accredited colleges and universities to find the right one for you. Apply in 3 mins, connect with your future.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: MediaQuery.of(context).size.width * 0.671,
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
                  print(MediaQuery.of(context).size);
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

