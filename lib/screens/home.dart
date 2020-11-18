import 'package:flutter/material.dart';
import 'package:twitter_ui/screens/drawer_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _ind = 0;

  List<Map<String, Object>> _pages;

  void _setPage(int index) {
    setState(() {
      _ind = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {'title': 'Home', 'pages': HomeScreen()},
      {'title': 'Home', 'pages': TrendsScreen()},
      {'title': 'Fav', 'pages': NotificationScreen()},
      {'title': 'Test', 'pages': MessageScreen()},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Twitter',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(Icons.star_purple500_sharp),
          ),
        ],
      ),
      drawer: DrawerScreen(),
      body: _pages[_ind]['pages'],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: _setPage,
        currentIndex: _ind,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'trends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: 'notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'messages',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  HomeScreen buildHomeScreen() => HomeScreen();
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 20,
                left: 6,
              ),
              child: SizedBox(
                child: CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person),
                ),
              ),
            ),
          ],
        ),
        Divider(),
        Container(
          child: Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (ctx, ind) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CircleAvatar(
                                  child: Icon(Icons.person),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Name',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('@username'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        // top: 8,
                        left: 50.0,
                        right: 8.0,
                        bottom: 10,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  ',
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.mode_comment,
                          size: 19,
                        ),
                        Icon(
                          Icons.reply_all,
                          size: 19,
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 19,
                        ),
                        Icon(
                          Icons.share,
                          size: 19,
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class TrendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Trends will show up here'),
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No notifications'),
      ),
    );
  }
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No Messages '),
      ),
    );
  }
}
