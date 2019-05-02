import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './Model/AppStateModel.dart';
import './Model/product.dart';
class ShrineHome extends StatefulWidget{
  @override
  _ShrineHome createState() {
    return _ShrineHome();
  }
}
class _ShrineHome extends State<ShrineHome>{
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant(
      builder: (BuildContext context, Widget child, AppStateModel model){
        final Product p1 = model.getProductById(1);
        final name = p1.name;
        print(p1);
        return Scaffold(
          appBar: AppBar(
            title:Text('shopping app title.')
          ),
          body: Center(
            child: Text('$name'),
          ),
        );
      }
    );
  }
}