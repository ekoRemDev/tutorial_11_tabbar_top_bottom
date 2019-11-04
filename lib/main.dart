import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
          bottom: TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              new Tab(
                icon: Icon(
                  Icons.favorite,
                ),
              ),
              new Tab(
                icon: Icon(
                  Icons.ac_unit,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            new Center(
              child: new Text("Welcome Home"),
            ),
            new Center(
              child: new Text("This is Favorites"),
            ),
            new Center(
              child: new Text("Lets Guess"),
            ),
          ],
        ),
          bottomNavigationBar: Material(
              color: Colors.amber,
              child:TabBar(
                  controller: controller,
                  tabs: <Widget>[
                      new Tab(
                          icon: Icon(
                              Icons.home,
                          ),
                      ),
                      new Tab(
                          icon: Icon(
                              Icons.favorite,
                          ),
                      ),
                      new Tab(
                          icon: Icon(
                              Icons.ac_unit,
                          ),
                      ),
                  ],
              ),
          ),
      ),
    );
  }
}

//new Scaffold(
//appBar: new AppBar(
//title: Text("tabbar"),
//bottom: TabBar(
//controller: _tabController,
//tabs: <Widget>[
//new Tab(icon: Icon(Icons.home,),),
//new Tab(icon: Icon(Icons.favorite,),),
//new Tab(icon: Icon(Icons.ac_unit,),),
//],
//),
//),
//)
