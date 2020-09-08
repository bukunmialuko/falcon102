import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Hexcolor('#ff6c70'),
        autofocus: true,
        onPressed: () {},
        child: Icon(Icons.filter_list),
        tooltip: 'Pick Image',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: Text("Feed"),
        backgroundColor: Hexcolor('#ff6c70'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
            Icons.inbox,
            color: Colors.white,
          ))
        ],
      ),
      body: ListView(
        children: <Widget>[
          FeedCard(),
          FeedCard(),
        ],
      ),
    );
  }
}

class FeedCard extends StatelessWidget {
  const FeedCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/img3.jpeg"),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "James Wilson",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade900),
                        ),
                        Text("Posted",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ))
                      ],
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.timer,
                      color: Colors.grey,
                      size: 16,
                    ),
                    Text(
                      "2h",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/img1.jpg"),
                    fit: BoxFit.cover)),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: MediaQuery.of(context).size.height * 0.28,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  verticalDirection: VerticalDirection.down,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Portable women light",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "s99",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.shop,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      onTap: () {
                        print("Like");
                      },
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("2k",
                        style: TextStyle(
                          color: Colors.grey,
                        ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.chat,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "2k",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.share,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("2k",
                        style: TextStyle(
                          color: Colors.grey,
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
