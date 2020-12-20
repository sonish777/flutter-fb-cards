import 'package:fb_cards/screens/post_card.dart';
import 'package:flutter/material.dart';

List dummyData = [
  {
    "id": "POST__1",
    "avatar":
        "https://i.pinimg.com/originals/30/99/af/3099aff4115ee20f43e3cdad04f59c48.png",
    "postAuthor": "Doggo App",
    "postDate": "Aug 28",
    "postDescription":
        "Pamper your pooch. The Bark Shoope is a pet care facility in NewYork offering grooming products and makeovers with your pet's individual needs in mind.",
    "postImage":
        "https://api.time.com/wp-content/uploads/2020/04/Pets-Covid-19-Coronavirus.jpg",
    "reacts": "25K",
    "comments": "100K",
    "shares": "10K",
  },
  {
    "id": "POST__2",
    "avatar":
        "https://cdn1.vectorstock.com/i/1000x1000/31/95/user-sign-icon-person-symbol-human-avatar-vector-12693195.jpg",
    "postAuthor": "John Doe",
    "postDate": "Dec 22",
    "postDescription":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "postImage":
        "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/eggs-breakfast-avocado-1296x728-header.jpg",
    "reacts": "100K",
    "comments": "1200K",
    "shares": "5K",
  },
  {
    "id": "POST__3",
    "avatar":
        "https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png",
    "postAuthor": "Seeya KC",
    "postDate": "Jan 10",
    "postDescription":
        "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
    "postImage":
        "https://d2r2ijn7njrktv.cloudfront.net/IL/uploads/2020/06/12150253/Work-from-home.jpg",
    "reacts": "125K",
    "comments": "90K",
    "shares": "1K",
  },
  {
    "id": "POST__4",
    "avatar":
        "https://toppng.com/uploads/preview/samsung-logo-png-samsung-logo-2018-11563277541bjxxdi2h3b.png",
    "postAuthor": "Samsung Official",
    "postDate": "Mar 29",
    "postDescription":
        "The Samsung Group is a South Korean multinational conglomerate headquartered in Samsung Town, Seoul. It comprises numerous affiliated businesses, most of them united under the Samsung brand, and is the largest South Korean chaebol (business conglomerate).",
    "postImage": "https://i.ytimg.com/vi/g236H6nCt8o/maxresdefault.jpg",
    "reacts": "256K",
    "comments": "100K",
    "shares": "822K",
  }
];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Cards"),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < dummyData.length; i++)
            Column(
              children: [
                GestureDetector(
                    child: PostCard(data: dummyData[i]),
                    onTap: () {
                      Navigator.pushNamed(context, "/details",
                          arguments: dummyData[i]);
                    }),
                SizedBox(
                    height: 10, child: Container(color: Colors.grey.shade400))
              ],
            )
        ],
      ),
    );
  }
}
