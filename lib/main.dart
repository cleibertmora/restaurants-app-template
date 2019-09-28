import 'package:flutter/material.dart';
import 'basics.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cleibert Restaurant',
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            body: TabBarView(
              children: [
                new Container(
                    color: mainColor,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 300,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                bottom: 0,
                                left: -50,
                                top: -230,
                                child: Container(
                                  width: 350.0,
                                  height: 250.0,
                                  decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient:
                                          LinearGradient(colors: mainGradient)),
                                ),
                              ),
                              Container(
                                child: Positioned(
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(25.0, 15.0, 0, 0),
                                    child: Text('Discover \nRestaurants', 
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 30.0
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                            overflow: Overflow.clip,
                          ),
                        )
                      ],
                    )),
                new Container(
                  color: Colors.orange,
                ),
                new Container(
                  color: Colors.lightGreen,
                ),
                new Container(
                  color: Colors.red,
                ),
                new Container(
                  color: Colors.red,
                ),
              ],
            ),
            bottomNavigationBar: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.place),
                ),
                Tab(
                  icon: new Icon(Icons.dashboard),
                ),
                Tab(
                  icon: new Icon(Icons.photo_camera),
                ),
                Tab(
                  icon: new Icon(Icons.notifications),
                ),
                Tab(
                  icon: new Icon(Icons.person),
                ),
              ],
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: mainColor),
                insets: EdgeInsets.symmetric(horizontal: 20),
              ),
              labelColor: hoverColor,
              unselectedLabelColor: greyColor,
              labelPadding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 20.0),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: mainColor,
            ),
            backgroundColor: mainColor,
          ),
        ));
  }
}
