import 'package:flutter/material.dart';
import 'package:snoo/log_in.dart';
/*class SignUp extends StatefulWidget{
  @override
  _SignupState createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
        width: width,
        height: height * 0.30,
        child: Image.asset(
        'assets/play.png',
        fit: BoxFit.fill,
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text(
    'Signup',
    style: TextStyle(
    fontSize: 25.0, fontWeight: FontWeight.bold),
    ),
    ],
    ),
    ),*/
class SignUp extends StatelessWidget{
  final _formkey =GlobalKey<FormState>();


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('SIGN UP')
        ),
        body:Form(
          key: _formkey,
          child: Padding(
           padding: const EdgeInsets.all(80.0),
          child:Column(
            children: [

              TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration:InputDecoration(
                  icon: Icon(Icons.account_circle),
                  labelText: 'NAME',
                  hintText:'Anusha',
                ),
                textInputAction: TextInputAction.next,
                validator: (String name){
                  Pattern pattern= r'^[A-Za-z\s]{1,}[\.]{0,1}[A-Za-z\s]{0,}$';
                  RegExp regex=RegExp(pattern);
                  if(!regex.hasMatch(name)) return 'Invalid name';
                  else return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration:InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: 'EMAIL',
                  hintText:'abc@gmail.com',
                ),
                textInputAction: TextInputAction.next,
                validator: (String email){
                  Pattern pattern= r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
                  RegExp regex= RegExp(pattern);

                  if (!regex.hasMatch(email)) return 'Invalid email';
                  else return null;
                }
              ),
              TextFormField(
                keyboardType:TextInputType.number,
                decoration:InputDecoration(
                  icon: Icon(Icons.call),
                  labelText: 'PHONE',
                  hintText:'900000000',
                  prefixText:'+91',
                ),
                //textInputAction: TextInputAction.next,
                validator: (String number){
                  if (number.length!=10) return 'Invalid mobile number';
                  else return null;

                },
              ),
              TextFormField(
               // keyboardType: TextInputType.emailAddress,
                decoration:InputDecoration(
                  icon: Icon(Icons.lock_open),
                  labelText: 'Password',
                  hintText:'Anusha123',
                ),
                textInputAction: TextInputAction.next,
                validator: (String password){
                  Pattern pattern=r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%_*?&])[A-Za-z\d@$!%_*?&]{8,}$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(password)) return 'Must contain number, upper case and lower case and special characters';
                  else return null;

                },
              ),
              SizedBox(height:20),
              RaisedButton(onPressed:(){


                FocusScope.of(context).requestFocus(FocusNode());
                if(_formkey.currentState.validate()){}
              },
                  child: Text('Submit')),

            ],

          ),
      ),
        ),

    ),
    );
  }
}

