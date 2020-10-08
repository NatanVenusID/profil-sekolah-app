import 'package:flutter/material.dart';

import 'package:maps_schoolapp/detail_page.dart';
import 'package:maps_schoolapp/form_news.dart';
import 'package:maps_schoolapp/model_news.dart';
import 'package:maps_schoolapp/pagehome.dart';
import 'dbhelper.dart';

class ListNews extends StatefulWidget {
  @override
  _ListNewsState createState() => _ListNewsState();
}

class _ListNewsState extends State<ListNews> {
  List<ModelNews> items = new List();
  DatabaseHelper db = new DatabaseHelper();

  @override
  void initState() {
    super.initState();
    db.getAllNews().then((newss) {
      setState(() {
        newss.forEach((news) {
          items.add(ModelNews.fromMap(news));
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.only(left: 16),
              title: Text(
                '${items[index].judulberita} ${items[index].isiberita}',
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.deepOrangeAccent),
              ),
              subtitle: Text(
                '${items[index].isiberita}',
              ),
              onTap: () {
                _navigateToNews(context, items[index]);
              },
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  AlertDialog hapus = AlertDialog(
                    backgroundColor: Colors.amber,
                    title: Text('Information'),
                    content: Container(
                      color: Colors.amber,
                      height: 100.0,
                      child: Column(
                        children: <Widget>[
                          Text(
                              'Apakah anda yakin ingin hapus data ${items[index].judulberita}')
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text(
                          'Yes!',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          _deleteNews(context, items[index], index);

                          Navigator.of(context, rootNavigator: true)
                              .pop('dialog');
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'No!',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                        Navigator.of(context, rootNavigator: true)
                              .pop('dialog');
                        },
                      ),
                    ],
                  );
                  showDialog(context: context, child: hapus);
                },
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PageDetail(
                                judul: items[index].judulberita,
                                isi: items[index].isiberita,
                              )));
                },
                icon: Icon(Icons.visibility),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
          onPressed: () {
            _createNewNews(context);
          }),
    );
  }

  _deleteNews(BuildContext context, ModelNews news, int position) {
    db.deleteNews(news.id).then((newss) {
      setState(() {
        items.removeAt(position);
      });
    });
  }

  void _navigateToNews(BuildContext context, ModelNews news) async {
    String result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => FormNews(news)));
    if (result == 'update') {
      db.getAllNews().then((newss) {
        setState(() {
          items.clear();
          newss.forEach((news) {
            items.add(ModelNews.fromMap(news));
          });
        });
      });
    }
  }

  void _createNewNews(BuildContext context) async {
    String result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => FormNews(ModelNews('', ''))));
    if (result == 'save') {
      db.getAllNews().then((newss) {
        setState(() {
          items.clear();
          newss.forEach((news) {
            items.add(ModelNews.fromMap(news));
          });
        });
      });
    }
  }
}
