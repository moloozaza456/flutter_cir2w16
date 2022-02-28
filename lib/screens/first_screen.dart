import 'package:flutter/material.dart';
import 'package:flutter_cir2w16/screens/login.dart';

import 'contact.dart';
import 'home.dart';
import 'profile.dart';

class FirstScreen extends StatefulWidget {
  static String id = '/first';
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("หน้าแรก"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
              margin: EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                splashColor: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home, size: 50, color: Colors.blueAccent),
                    Text("Home", style: TextStyle(fontSize: 17))
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactScreen()),
                  );
                },
                splashColor: Colors.blue,
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.android, size: 50, color: Colors.blueAccent),
                    Text("Contact", style: TextStyle(fontSize: 17))
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                splashColor: Colors.blue,
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.new_releases, size: 50, color: Colors.blueAccent),
                    Text("Profile", style: TextStyle(fontSize: 17))
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                splashColor: Colors.blue,
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.military_tech, size: 50, color: Colors.blueAccent),
                    Text("Login", style: TextStyle(fontSize: 17))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              child: UserAccountsDrawerHeader(
                accountName: Text("Mark Zakerberg"),
                accountEmail: Text("mark@gmail.com"),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                currentAccountPicture: CircleAvatar(
                  // backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg"),
                ),
              ),
            ),
            ListTile(
              title: const Text("Home",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.home,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              title: const Text("Profile",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.manage_accounts,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text("Contact",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.contact_page,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactScreen()));
              },
            ),
            ListTile(
              title: const Text("First",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.call,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
