import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:task1/items.dart';

class Likes extends StatefulWidget {

  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Likes',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black54,
          ),
          onPressed: () {
            // Navigator.of(context).pop(),
          },
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(),
      body: ListView(
        children: [
          Likebody(
            userImage: "assets/user_1.jpg",
            name: "Joseph Jr",
            userName: "joseph_",
          ),
          Likebody(
            userImage: "assets/user_3.jpg",
            name: "Sarah Connor",
            userName: "sarah.conner",
          ),
          Likebody(
            userImage: "assets/user_5.jpg",
            name: "Alice Scott",
            userName: "alice_scott",
          ),
          Likebody(
            userImage: "assets/user_6.jpg",
            name: "Dunder",
            userName: "dunder.miffin",
          ),
          Likebody(
            userImage: "assets/user_1.jpg",
            name: "Joseph Jr",
            userName: "joseph_",
          ),
          Likebody(
            userImage: "assets/user_3.jpg",
            name: "Sarah Connor",
            userName: "sarah.conner",
          ),
          Likebody(
            userImage: "assets/user_5.jpg",
            name: "Alice Scott",
            userName: "alice_scott",
          ),
          Likebody(
            userImage: "assets/user_6.jpg",
            name: "Dunder",
            userName: "dunder.miffin",
          ),
          Likebody(
            userImage: "assets/user_1.jpg",
            name: "Joseph Jr",
            userName: "joseph_",
          ),
          Likebody(
            userImage: "assets/user_3.jpg",
            name: "Sarah Connor",
            userName: "sarah.conner",
          ),
          Likebody(
            userImage: "assets/user_5.jpg",
            name: "Alice Scott",
            userName: "alice_scott",
          ),
          Likebody(
            userImage: "assets/user_6.jpg",
            name: "Dunder",
            userName: "dunder.miffin",
          ),
        ],
      ),
    );
  }
}

class Likebody extends StatefulWidget {
  final String userImage;
  final String name;
  final String userName;

  const Likebody(
      {Key key,
        this.userImage,
        this.name,
        this.userName,
      })
      : super(key: key);
  @override
  _LikebodyState createState() => _LikebodyState();
}

class _LikebodyState extends State<Likebody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 10.0,top: 10.0,bottom: 10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.userImage),
                    radius: 20.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        )),
                    Text(widget.userName,
                        style: TextStyle(
                          color: Colors.black54,
                        )),
                  ],
                ),
              ],
            ),
            new Spacer(),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                // width: 100,
                padding: EdgeInsets.fromLTRB(0, 0, 15, 20),
                child: ButtonTheme(
                  // padding: EdgeInsets.all(12),
                  buttonColor: Colors.deepOrange,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text('FOLLOW',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
