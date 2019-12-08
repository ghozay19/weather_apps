import 'package:flutter/material.dart';
import 'package:weather_apps/unused/model.dart';


class NameScreen extends StatefulWidget {
  @override
  _NameScreenState createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {

  var _model = Model();
  final formKey = GlobalKey<FormState>();

  String namaUser;



  void _submit(){
    if(formKey.currentState.validate()){
      formKey.currentState.save();

      var _model = Model();
      _model.nama = namaUser;

      print('nama ' + _model.nama);
//      print(_password);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            children: <Widget>[
              TextFormField(
                onSaved: (e) => namaUser = e,
                decoration: InputDecoration(labelText: 'Nama Lu'),
              ),
              RaisedButton(onPressed: (){
                _submit();


                Navigator.pop(context);
              })

            ],
          ),
        ),
      ),
    );
  }
}
