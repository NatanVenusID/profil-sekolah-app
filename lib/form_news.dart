import 'package:flutter/material.dart';
import 'package:maps_schoolapp/model_news.dart';
import 'dbhelper.dart';

class FormNews extends StatefulWidget {
  final ModelNews modelNews;
  FormNews(this.modelNews);

  @override
  _FormNewsState createState() => _FormNewsState();
}

class _FormNewsState extends State<FormNews> {
  DatabaseHelper db = new DatabaseHelper();
  TextEditingController _judulBeritaControler;
  TextEditingController _isiBeritaControler;

  @override
  void initState() {
    super.initState();
    _judulBeritaControler =
        new TextEditingController(text: widget.modelNews.judulberita);
    _isiBeritaControler =
        new TextEditingController(text: widget.modelNews.isiberita);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form News'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          TextField(
            controller: _judulBeritaControler,
            decoration: InputDecoration(
                labelText: 'Judul Berita',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller: _isiBeritaControler,
            maxLines: 5,
            decoration: InputDecoration(
                labelText: 'Isi Berita',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            height: 5,
          ),
         
          RaisedButton(
              color: Colors.amber,
              child: (widget.modelNews.id != null)
                  ? Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    )
                  : Text(
                      'Add',
                      style: TextStyle(color: Colors.white),
                    ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                if (widget.modelNews.id != null) {
                  db
                      .updateNews(ModelNews.fromMap({
                    'id': widget.modelNews.id,
                    'judulberita': _judulBeritaControler.text,
                    'isiberita': _isiBeritaControler.text,
                  }))
                      .then((_) {
                    Navigator.pop(context, 'update');
                  });
                } else {
                  db
                      .saveNews(
                    ModelNews(
                      _judulBeritaControler.text,
                      _isiBeritaControler.text,
                    ),
                  )
                      .then((_) {
                    Navigator.pop(context, 'save');
                  });
                }
              })
        ],
      ),
    );
  }
}
