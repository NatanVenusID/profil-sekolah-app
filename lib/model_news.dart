class ModelNews {
  int _id;
  String _judulBerita;
  String _isiBerita;

  ModelNews(this._judulBerita, this._isiBerita,);
  ModelNews.map(dynamic obj) {
    this._id = obj['id'];
    this._judulBerita = obj['judulberita'];
    this._isiBerita = obj['isiberita'];

  }
  int get id => _id;
  String get judulberita => _judulBerita;
  String get isiberita => _isiBerita;


  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['judulberita'] = _judulBerita;
    map['isiberita'] = _isiBerita;

    return map;
  }

  ModelNews.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._judulBerita = map['judulberita'];
    this._isiBerita = map['isiberita'];

  }
}
