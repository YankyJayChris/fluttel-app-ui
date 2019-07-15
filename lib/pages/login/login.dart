import 'package:flutter/material.dart';
import 'package:withme/pages/home/homePage.dart';


class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  bool _isObscured = true;
  Color _eyeButtonColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          padding:  const EdgeInsets.fromLTRB(22.0, 0.0, 22, 22.0),
          children: <Widget>[
            SizedBox(height: kToolbarHeight,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Login', style: TextStyle(fontSize: 42.0),),
            ),
            Text('WELCOME BACK', style: TextStyle(fontSize: 20.0),),
            SizedBox(height: 60.0,),
            TextFormField(
              onSaved: (emailInput) => _email = emailInput,
              validator: (emailInput){
                if(emailInput.isEmpty){
                  return 'please enter an Email';
                }
              },
              decoration: InputDecoration(
                labelText: 'Email andress',
              ),
            ),
            SizedBox(height: 30.0,),
            TextFormField(
              onSaved: (passwordInput) => _password = passwordInput,
              validator: (passwordInput){
                if(passwordInput.isEmpty){
                  return 'please enter a password';
                }
              },
              obscureText: _isObscured,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: (){
                    if(_isObscured){
                      setState(() {
                        _isObscured = false;
                        _eyeButtonColor = Colors.blue;
                      });
                      
                    }else{
                        setState(() {
                        _isObscured = true;
                        _eyeButtonColor = Colors.grey;
                      });
                    }
                  },
                  icon: Icon(Icons.remove_red_eye, color: _eyeButtonColor,),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('Forget Password', style: TextStyle(fontSize: 12.0, color: Colors.blue)),
              ),
            ),
            SizedBox(height: 60.0,),
            Align(
              child: SizedBox(
                height: 50.0,
                width: 270.0,
                child: FlatButton(
                  onPressed: (){
                    if(_formKey.currentState.validate()){
                      _formKey.currentState.save();
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext Context) => MyHomePage()),);
                    }
                  },
                  color: Color(0xff813594),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  child: Text('LOGIN',style: TextStyle(fontSize: 16.0, color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 80.0,),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text('Need a account Sign UP', style: TextStyle(fontSize: 15.0, color: Colors.blue)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}