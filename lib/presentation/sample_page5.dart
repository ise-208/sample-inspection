import 'package:flutter/material.dart';

class SamplePage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page5"),
      ),
      body: Row(
        children: [
          SideNavigation(),
          const VerticalDivider(thickness: 1, width: 1),
        ],
      ),
    );
  }
}

class AdminMobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        SideNavigation(),
        VerticalDivider(thickness: 1, width: 1),
        Expanded(child: PostList())
      ],
    ));
  }
}

class _PostGreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Post(
        name: "name",
        message: "message",
        textReason: "textReason",
        colorPrimary: Colors.greenAccent,
        colorPositive: Colors.greenAccent,
        textPositive: "textPositive",
        colorNegative: Colors.blueAccent,
        textNegative: "textNegative");
  }
}

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _PostHeader(),
          Expanded(
              child: ListView(
            children: [_PostGreen(), _PostGreen()],
          )),
        ],
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ListTile(
            leading: ClipOval(
              child: Container(
                color: Colors.grey[300],
                width: 48,
                height: 48,
                child: Icon(
                  Icons.storage,
                  color: Colors.grey[800],
                ),
              ),
            ),
            title: Text('Posts'),
            subtitle: Text('20 Posts'),
          ),
        ),
        Expanded(
          flex: 1,
          child: ListTile(
            leading: ClipOval(
              child: Container(
                color: Colors.grey[300],
                width: 48,
                height: 48,
                child: Icon(
                  Icons.storage,
                  color: Colors.grey[800],
                ),
              ),
            ),
            title: Text('All Types'),
            subtitle: Text(' '),
          ),
        ),
      ],
    );
  }
}

class _Post extends StatelessWidget {
  final String name;
  final String message;
  final String textReason;
  final Color colorPrimary;
  final Color colorPositive;
  final String textPositive;
  final Color colorNegative;
  final String textNegative;

  const _Post({
    required this.name,
    required this.message,
    required this.textReason,
    required this.colorPrimary,
    required this.colorPositive,
    required this.textPositive,
    required this.colorNegative,
    required this.textNegative,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Card(
        elevation: 8,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            ListTile(
              leading: ClipOval(
                child: Container(
                  color: colorPositive,
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      name.substring(0, 1),
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              title: Text(name),
              subtitle: Text("2 min ago"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 72),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                        border: Border.all(color: colorPositive, width: 4),
                        borderRadius: BorderRadius.circular(8)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SideNavigation extends StatefulWidget {
  @override
  _SideNavigationState createState() => _SideNavigationState();
}

class _SideNavigationState extends State<SideNavigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      destinations: [
        NavigationRailDestination(
            icon: Icon(Icons.thumbs_up_down), label: Text("ThumbsUpDown")),
        NavigationRailDestination(
            icon: Icon(Icons.thumbs_up_down), label: Text("ThumbsUpDown")),
        NavigationRailDestination(
            icon: Icon(Icons.thumbs_up_down), label: Text("ThumbsUpDown")),
        NavigationRailDestination(
            icon: Icon(Icons.thumbs_up_down), label: Text("ThumbsUpDown")),
      ],
    );
  }
}
