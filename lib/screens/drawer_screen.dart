import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final List<Map> list = [
    {
      'icon': Icon(Icons.person_outline),
      'text': 'Profile',
    },
    {
      'icon': Icon(Icons.featured_play_list),
      'text': 'Lists',
    },
    {
      'icon': Icon(Icons.offline_pin),
      'text': 'Topics',
    },
    {
      'icon': Icon(Icons.bookmark_border),
      'text': 'Bookmarks',
    },
    {
      'icon': Icon(Icons.threed_rotation),
      'text': 'Moments',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 195,
            padding: EdgeInsets.only(
              top: 2,
              left: 6,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    children: [
                      SizedBox(
                        child: CircleAvatar(
                          radius: 35,
                          child: Icon(Icons.person),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      // left: 10.0,
                      // top: 9,
                      ),
                  child: ListTile(
                    title: Text('Name'),
                    subtitle: Text('@username'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      // top: 9,
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text('0 Following'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text('0 Followers'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Container(
            height: 290,
            child: Column(
              children: [
                ListTile(
                  leading: list[0]['icon'],
                  title: Text(list[0]['text']),
                ),
                ListTile(
                  leading: list[1]['icon'],
                  title: Text(list[1]['text']),
                ),
                ListTile(
                  leading: list[2]['icon'],
                  title: Text(list[2]['text']),
                ),
                ListTile(
                  leading: list[3]['icon'],
                  title: Text(list[3]['text']),
                ),
                ListTile(
                  leading: list[4]['icon'],
                  title: Text(list[4]['text']),
                ),
              ],
            ),
            // child: ListView.builder(
            //   itemCount: list.length,
            //   itemBuilder: (ctx, ind) {
            //     return ListTile(
            //       leading: list[ind]['icon'],
            //       title: Text(list[ind]['text']),
            //     );
            //   },
            // ),
          ),
          Divider(),
          SizedBox(
            child: ListTile(
              leading: Icon(Icons.launch),
              title: Text('Twitter Ads'),
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.only(top: 0),
            child: ListTile(
              title: Text('Settings and privacy'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 0),
            child: ListTile(
              title: Text('Help Center'),
            ),
          ),
        ],
      ),
    );
  }
}
