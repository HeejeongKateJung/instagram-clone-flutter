import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone_flutter/post.dart';
import 'package:instagram_clone_flutter/storybtn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: InstagramApp(),
    );
  }
}

class InstagramApp extends StatefulWidget {
  @override
  _InstagramAppState createState() => _InstagramAppState();
}

class _InstagramAppState extends State<InstagramApp> {
  // 먼저 메인 background color 를 지정.
  Color mainColor = Colors.blueGrey[50];

  // rest api 로부터 dummy data 가져오기

  //Avatar Dummy
  List<String> userAvatar = [
    "https://randomuser.me/portraits/men/46.jpg",
    "https://randomuser.me/portraits/women/65.jpg",
    "https://randomuser.me/portraits/men/45.jpg",
    "https://randomuser.me/portraits/women/55.jpg",
    "https://randomuser.me/portraits/men/48.jpg",
    "https://randomuser.me/portraits/women/98.jpg",
  ];

  //Posts dummy
  List<String> imageUrl = [
    "https://randomuser.me/portraits/men/44.jpg",
    "https://randomuser.me/portraits/women/63.jpg",
    "https://randomuser.me/portraits/men/43.jpg",
    "https://randomuser.me/portraits/women/52.jpg",
    "https://randomuser.me/portraits/men/46.jpg",
    "https://randomuser.me/portraits/women/96.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,

      //adding app bar
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0.0,
        title: Text(
            "Instagram",
            style: GoogleFonts.pacifico(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 26,
              ),
        ),
        leading: IconButton(
          onPressed: () {

          },
          color: Colors.black,
          icon: Icon(Icons.photo_camera)
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){

            },
            color: Colors.black,
            icon: Icon(Icons.send),
          )
        ]
      ),

      // body of the app
      body: SingleChildScrollView(
          child: Column(
            children: [
              //타임 라인 column
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),

                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Stories",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                      Text(
                          "Watch all",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ],
                ), //Row
              ),
              Container(
                  height: 110.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // 스토리에 담길 사람 얼굴인 FaceWidget 만들어서 넣기
                      storyButton(userAvatar[0], "Joseph"),
                      storyButton(userAvatar[1], "Eva"),
                      storyButton(userAvatar[2], "Joe"),
                      storyButton(userAvatar[3], "Elena"),
                      storyButton(userAvatar[4], "Tom"),
                      storyButton(userAvatar[5], "Haejoo"),
                    ],
                  ),
                ),

              // 스토리에 담길 게시물, PostWidget 만들어서 넣기
              post(userAvatar[0], "Joseph", imageUrl[0], "I'm in vacation!"),
              post(userAvatar[1], "Eva", imageUrl[1], "Life is so hard"),
              post(userAvatar[2], "Joe", imageUrl[2], "Tough day today but I loved it!"),
              post(userAvatar[3], "Elena", imageUrl[3], "Merry Christmas, everybody!"),
              post(userAvatar[4], "Tom", imageUrl[4], "I love this moment"),
              post(userAvatar[5], "Haejoo", imageUrl[5], "Thank you for everyone who support me so far"),
              ],
          ),
      ),

      // bottom navigation bar 만들기
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.pink,
        backgroundColor: mainColor,
        items: [
          BottomNavigationBarItem(
            backgroundColor: mainColor,
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: mainColor,
            icon: Icon(Icons.search),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: mainColor,
            icon: Icon(Icons.camera),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: mainColor,
            icon: Icon(Icons.favorite),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: mainColor,
            icon: Icon(Icons.person),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
