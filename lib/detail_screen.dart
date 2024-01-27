import 'package:flutter/material.dart';
import 'package:unbin/model/university_bogor.dart';

class DetailScreen extends StatelessWidget {
  final University campus;
  const DetailScreen({Key? key, required this.campus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var informationTextSyle = const TextStyle(fontFamily: 'Oxygen');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(campus.imageAssets),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 185, 130, 148),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.white),
                          ),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                campus.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                  color: Color.fromARGB(255, 190, 81, 117),
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Icon(Icons.calendar_today),
                        const SizedBox(height: 8.0),
                        Text(
                          campus.openDays,
                          style: informationTextSyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.access_time),
                        const SizedBox(height: 8.0),
                        Text(
                          campus.openTime,
                          style: informationTextSyle,
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                campus.description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: campus.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
    );
  }
}
