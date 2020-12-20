import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Card Details"),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(data["postImage"]),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                      text: data["postAuthor"],
                      children: [
                        TextSpan(
                            text: '\n${data["postDescription"]}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: '\n${data["postDate"]}',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                height: 2))
                      ]),
                ),
                SizedBox(height: 10),
                Divider(color: Colors.white70),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _textWhite('${data["reacts"]} Likes'),
                    _textWhite('${data["comments"]} Comments'),
                    _textWhite('${data["shares"]} Shares'),
                  ],
                ),
                SizedBox(height: 10),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _textWhite(String text) {
    return Text(text, style: TextStyle(color: Colors.white));
  }
}
