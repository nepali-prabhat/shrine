import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './Model/AppStateModel.dart';
import './home.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyApp createState() {
    return _MyApp();
  }
}
class _MyApp extends State<MyApp>{
  AppStateModel model;
  @override
  void initState() {
    super.initState();
    model = new AppStateModel()..loadProducts();
  }
  @override
  Widget build(BuildContext context) {
    //now any child widget can call ScopedModelDecendent widget to access model. 
    //they will also be automatically notified when the notifyListeners() in the model are called.
    return ScopedModel<AppStateModel>(
      model: model,
      child: MaterialApp(
        title: 'Layout in flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: ShrineHome()
      )
    );
  }
}