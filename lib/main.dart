
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'Login Form',
  home: new LoginPage(),
));

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget>createState() => _LoginPageState();
}
class _LoginData{
  String email ='';
  String password ='';
}
 class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey =new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Login'),
        ),
        body: new Container(
         padding: new EdgeInsets.all(20.0),
          key:this._formKey ,
          child:new ListView(
            children: <Widget>[
              new TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: new InputDecoration(
                hintText: 'voce@example.com',
                  labelText:'E-mail'
              ),
              ),
              new TextFormField(
                obscureText:true,
                decoration:new InputDecoration(
                    hintText: 'Senha', 
                    labelText: 'Digite sua senha'
                ),
              ),
              new Container(
                width: screenSize.width,
                child: new RaisedButton(
                  child:new Text(
                    'Login',
                    style: new TextStyle(color: Colors.white
                    ),
                  ),
                    onPressed:() => null,
                  color:Colors.blue,
                ),
                margin:new EdgeInsets.only(
                  top: 20.0
                )
              )
            ],
          ) ,


        ),
        );
  }
}
