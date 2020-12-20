import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final Map data;
  PostCard({@required this.data});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          _cardHeader(data),
          _cardBody(data),
          _cardFooter(data, context)
        ],
      ),
    );
  }

  Widget _cardHeader(Map data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(data["avatar"]),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: data["postAuthor"],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                            text: " added a new post",
                            style: TextStyle(color: Colors.black38))
                      ]),
                ),
                SizedBox(height: 4),
                Row(children: [
                  Text(data["postDate"],
                      style: TextStyle(color: Colors.black45)),
                  SizedBox(width: 5),
                  Icon(
                    Icons.public,
                    size: 16,
                  )
                ]),
              ],
            ),
          ],
        ),
        Icon(Icons.more_horiz),
      ],
    );
  }

  Widget _cardBody(Map data) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text(data["postDescription"]),
        SizedBox(height: 10),
        Image.network(data["postImage"])
      ],
    );
  }

  Widget _cardFooter(Map data, context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/originals/39/44/6c/39446caa52f53369b92bc97253d2b2f1.png"),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                    "https://spng.pngfind.com/pngs/s/6-62693_facebook-heart-transparent-facebook-heart-icon-hd-png.png"),
              ),
              SizedBox(width: 5),
              Text(data["reacts"])
            ],
          ),
          Row(children: [
            Text('${data["comments"]} comments',
                style: TextStyle(color: Colors.black54)),
            SizedBox(width: 4),
            Text('${data["shares"]} shares',
                style: TextStyle(color: Colors.black54)),
          ])
        ]),
        Divider(color: Colors.black26, thickness: 1),
        SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  _showClickedDialog(context,
                      'You clicked Like on ${data["postAuthor"]}\'s post!!');
                },
                child: Row(children: [
                  Icon(Icons.thumb_up),
                  SizedBox(width: 10),
                  Text("Like"),
                ]),
              ),
              GestureDetector(
                onTap: () {
                  _showClickedDialog(context,
                      'You clicked Comment on ${data["postAuthor"]}\'s post!!');
                },
                child: Row(children: [
                  Icon(Icons.message),
                  SizedBox(width: 10),
                  Text("Comment"),
                ]),
              ),
              GestureDetector(
                onTap: () {
                  _showClickedDialog(context,
                      'You clicked Share on ${data["postAuthor"]}\'s post!!');
                },
                child: Row(children: [
                  Icon(Icons.share),
                  SizedBox(width: 10),
                  Text("Share"),
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _showClickedDialog(context, message) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            backgroundColor: Colors.white,
            children: [Text(message, textAlign: TextAlign.center)],
          );
        });
  }
}
