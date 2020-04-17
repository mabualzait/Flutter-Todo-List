import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {

  String _itemName;
  String _dateCreated;
  int _id;

  TodoItem(this._itemName, this._dateCreated);

  TodoItem.map(dynamic obj){
    this._itemName = obj["itemName"];
    this._dateCreated = obj["dateCreated"];
    this._id = obj["id"];
  }

  String get itemName => _itemName;
  String get dateCreated => _dateCreated;
  int get id =>_id;

  Map<String,dynamic> toMap(){
    var map = new Map<String,dynamic>();
    map["itemName"] = _itemName;
    map["dateCreated"] = _dateCreated;
    if(_id != null){
      map["id"] = _id;
    }
    return map;
  }

  TodoItem.fromMap(Map<String,dynamic> map){
    this._itemName =  map["itemName"];
    this._dateCreated =  map["dateCreated"];
    this._id =  map["id"];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: new Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _itemName,
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.9),
              ),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "Created on $_dateCreated",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13.5,
                    fontStyle: FontStyle.italic
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }


































}
