import 'package:ass7/Login.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _HomeState();
}

class _HomeState extends State<Search> {
  Widget customSearchBar = const Text("Search Here");
  Icon customIcon = const Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Image(
                image: NetworkImage(
                    "https://www.clarin.eu/sites/default/files/styles/medium/public/icon-services-fcs.png?itok=seug9Hqn")),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  suffixIcon: customIcon,
                  hintText: 'Search url...',
                  border: OutlineInputBorder(),
                  labelText: 'Search Here'),
            ),
            SizedBox(
              height: 70,
            ),
            ElevatedButton.icon(
                onPressed: (() {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  });
                }),
                icon: Icon(Icons.logout_rounded),
                label: Text("Log Out"))
          ],
        ),
      ),
    );
  }
}
