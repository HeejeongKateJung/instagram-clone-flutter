import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget post(String userImage, String userName, String postPic, String postTxt) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Container(
      height: 550.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 아이콘 이미지, 작성자 이름, 더보기 버튼을 순서대로 만들자
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8.0),
                  width: 53.0,
                  height: 53.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      image: DecorationImage(
                          image: NetworkImage(userImage)
                      )
                  ),
                ),
                Text(userName),
                Expanded(
                    child: IconButton(
                      onPressed: (){},
                      alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.more_horiz,
                      ),
                    )
                )
              ],
            ),

            SizedBox(
              height: 10.0,
            ),

            // 포스트의 이미지를 담는 Container 를 만들어보자
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(image: NetworkImage(postPic), fit: BoxFit.cover),
              ),
            ),

            // 버튼 레이아웃 만들기
            Row(
              children: [
                IconButton(
                  onPressed: (){

                  },
                  color: Colors.black,
                  iconSize: 28.0,
                  icon: Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: (){

                  },
                  color: Colors.black,
                  iconSize: 28.0,
                  icon: Icon(Icons.chat_bubble_outline),
                ),
                IconButton(
                  onPressed: (){

                  },
                  color: Colors.black,
                  iconSize: 28.0,
                  icon: Icon(Icons.send),
                ),

                Expanded(
                    child: IconButton(
                      onPressed: (){},
                      alignment: Alignment.centerRight,
                      icon: Icon(
                        Icons.account_box_outlined,
                      ),
                    )
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("63 Likes"),
                      SizedBox(width: 10.0, height: 0.0,),
                      Text("9 Comments"),
                    ],
                  ),

                  SizedBox(height: 8.0,),
                  Row(
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),

                      ),

                      SizedBox(width: 8.0,),
                      Text(
                        postTxt,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),

                  // 댓글 달기 버튼
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 4.0),
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                            image: DecorationImage(
                                image: NetworkImage(userImage)
                            )
                        ),
                      ),
                      Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: Colors.blueGrey[50],
                              hintText: "Write a comment",
                              contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                            ),
                          ),
                      ),
                      SizedBox(height: 70.0, width: 0.0,),
                      IconButton(
                        onPressed: (){

                        },
                        color: Colors.blue,
                        icon: Icon(Icons.send),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      margin: EdgeInsets.only(bottom:12.0)
    ),
  );
}