import 'package:flutter/material.dart';
import 'menu1.dart';
import 'menu2.dart';
import 'menu3.dart';
import 'menu4.dart';
import 'menu5.dart';
import 'menu6.dart';
import 'menu7.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title1 = 'DRSANT';
  String title2 = 'หมอสันต์';

  Widget showTitle() {
    return Text(
      title1,
      style: TextStyle(
        color: Colors.white,
        fontSize: 9.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget showSubTitle() {
    return Text(
      title2,
      style: TextStyle(
        color: Colors.white,
        fontSize: 9.0,
        fontWeight: FontWeight.bold,
        ),
    );
  }

  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  Widget menuDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue[700]),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 200.0,
                    child: showLogo(),
                  ),
                  showTitle(),
                  showSubTitle()
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.blueGrey[900],
              size: 32.0,
            ),
            title: Text(
              'BLOG',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('ตอบปัญหาสุขภาพ'),
            onTap: () {
              Navigator.of(context).pop();
              var menu1Route =
                  MaterialPageRoute(builder: (BuildContext context) => Menu1());
              Navigator.of(context).push(menu1Route);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.featured_video,
              color: Colors.blueGrey[900],size: 32.0,
            ),
            title: Text(
              'โภชนาการ',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('คลิปวีดีโอเรื่องอาหารสุขภาพ'),
            onTap: () {
              Navigator.of(context).pop();
              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu2());
              Navigator.of(context).push(menuRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.face,
              color: Colors.blueGrey[900],size: 32.0,
            ),
            title: Text(
              'การออกกำลังกาย',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('คลิปวีดีโอเรื่องการออกกำลังกาย'),
            onTap: () {
              Navigator.of(context).pop();
              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu3());
              Navigator.of(context).push(menuRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blueGrey[900],size: 32.0,
            ),
            title: Text(
              'การจัดการความเตรียด',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('คลิปวีดีโอเรื่องการจัดการกับความเครียด '),
            onTap: () {
              Navigator.of(context).pop();
              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu4());
              Navigator.of(context).push(menuRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.satellite,
              color: Colors.blueGrey[900],size: 32.0,
            ),
            title: Text(
              'Wellness We care ',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เวปไซด์ Wellness We care'),
            onTap: () {
              Navigator.of(context).pop();
              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu5());
              Navigator.of(context).push(menuRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.lightbulb_outline,
              color: Colors.blueGrey[900],size: 32.0,
            ),
            title: Text(
              'facebook',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เฟสบุ๊ค Wellness we care'),
            onTap: () {
              Navigator.of(context).pop();
              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu6());
              Navigator.of(context).push(menuRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.mic,
              color: Colors.blueGrey[900],size: 32.0,
            ),
            title: Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('Privacy Policy'),
            onTap: () {
              Navigator.of(context).pop();
              var menuRoute =
                  MaterialPageRoute(builder: (BuildContext context) => Menu7());
              Navigator.of(context).push(menuRoute);
            },
          ),
        ],
      ),
    );
  }

  Widget showContent() {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(0.0),
          child: Image.asset('images/bannerflutter.jpg'),
        ),
  
     

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หมอสันต์'),
      ),
      body: Container(
        child: showContent(),
      ),
      drawer: menuDrawer(context),
    );
  }
}
