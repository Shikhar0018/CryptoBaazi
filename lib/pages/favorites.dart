import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Favorites",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        body: Container(
            child: Column(
          children: [
            ListView.builder(
              itemBuilder: (context, index) => FavList(),
              itemCount: 3,
            )
          ],
        )),
      ),
    );
  }
}

class FavList extends StatefulWidget {
  const FavList({Key? key}) : super(key: key);

  @override
  _FavListState createState() => _FavListState();
}

class _FavListState extends State<FavList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 4.0,
      child: ListTile(
        title: Text("Added to Favorites"),
        trailing: IconButton(
            onPressed: () {}, icon: Icon(Icons.remove_circle_outline)),
      ),
    );
  }
}
