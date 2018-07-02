import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nav_drawer/ui/second_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav Drawer"),
        centerTitle: true,
        elevation: defaultTargetPlatform == TargetPlatform.android ? 6.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("J"),
              ),
              accountName: Text(
                "Joan Cabezas",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text("joan.santiago.cabezas@gmail.com",
                  style: TextStyle(color: Colors.white)),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: Text("S"),
                ),CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: Text("C"),
                )
              ],
            ),
            ListTile(
                title: Text("First page"),
                trailing: Icon(Icons.assessment),
                onTap: () => _onTapItemDrawer(context, "First page")),
            ListTile(
                title: Text("Second page"),
                trailing: Icon(Icons.favorite),
                onTap: () => _onTapItemDrawer(context, "Second page")),
            Divider(),
            ListTile(
                title: Text("Sixth page"),
                trailing: Icon(Icons.send),
                onTap: () => _onTapItemDrawer(context, "Sixth page")),
            ListTile(
                title: Text("Fourth page"),
                trailing: Icon(Icons.forward),
                onTap: () => _onTapItemDrawer(context, "Fourth page")),
            ListTile(
                title: Text("Fifth page"),
                trailing: Icon(Icons.camera_alt),
                onTap: () => _onTapItemDrawer(context, "Fifth page")),
            ListTile(
                title: Text("Third page"),
                trailing: Icon(Icons.settings),
                onTap: () => _onTapItemDrawer(context, "Third page")),

          ],
        ),
      ),
      body: new Container(
        child: Center(
          child: Text(
            "Hello Nav Drawer !",
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }

  void _onTapItemDrawer(_, String title) {
    Navigator.push(_, MaterialPageRoute(builder: (BuildContext context) {
      return SecondPage(
        title: title,
      );
    }));
  }
}
