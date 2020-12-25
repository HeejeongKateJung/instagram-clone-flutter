import 'package:flutter/material.dart';

Widget post(String userImage, String userName, String postPic, String postTxt) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Container(
      height: 400.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
            )

            // 포스트의 이미지를 담는 Container 를 만들어보자

          ],

        ),
      ),
    ),
  );
}