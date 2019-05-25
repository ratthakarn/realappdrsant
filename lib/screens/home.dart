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
  String title1 = 'GKRGROUP';
  String title2 = 'บริษัท.จี.เค.อาร์.กรุ๊ป จำกัด';

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
              'GKRSHOP',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('สั่งสินค้า'),
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
              'RME',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('ระบบบันทึกเสียง'),
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
              'STUDIOLOGIC',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('คีย์บอร์ดและซินธีไซด์เซอร์'),
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
              'GKR CHANNEL',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('ช่องวีดีโอ '),
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
              'GKRGROUP ',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('เวปไซด์'),
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
              'SPL',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('พรีไมค์,โพเซสเซอร์'),
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
              'RODE',
              style: TextStyle(fontSize: 18.0),
            ),
            subtitle: Text('ไมโครโฟน'),
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
  
      Container(
          margin: EdgeInsets.all(0.0),
          child: Image.asset('images/template.jpg'),
        ),    

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GKRGROUP'),
      ),
      body: Container(
        child: showContent(),
      ),
      drawer: menuDrawer(context),
    );
  }
}
