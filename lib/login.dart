import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100),
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset('assets/images/sample.jpg',
                    width: 120, height: 120, fit: BoxFit.cover),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  )),
              Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter FullName',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.red
                      )
                    )
                  ),
                  validator: (val){
                    if(val.length ==0 ){
                      return 'Name field cannot be empty' ;
                    }else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.amberAccent),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter FullName',
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Colors.red
                          )
                      )
                  ),
                  validator: (val){
                    if(val.length ==0 ){
                      return 'Name field cannot be empty' ;
                    }else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text('Submit', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
