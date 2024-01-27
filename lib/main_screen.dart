import 'package:unbin/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:unbin/model/university_bogor.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Universitas'),
        backgroundColor: const Color.fromARGB(255, 167, 90, 115),
        actions: [
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              })
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final University campus = universitylist[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(campus: campus);
              }));
            },
            child: Card(
              elevation: 7,
              color: Colors.pink[50],
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset(campus.imageAssets),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        // child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(30),
                        //     child: Image.asset(campus.imageAssets,
                        //       width: 150,
                        //       height: 150,
                        //       fit: BoxFit.cover,
                        //     ),
                        //     ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              campus.name,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(campus.location)
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          );
        },
        itemCount: universitylist.length,
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'Binaniaga',
    'Pakuan',
    'Bina Sarana Informatika',
    'Diponegoro',
    'Pelita Harapan',
    'Gajah Mada'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
