import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image:AssetImage('assets/login_bg.png'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 80,top: 130),
              child:  Text('খাদক',
                style: TextStyle(
                  color: Colors.tealAccent,
                  fontWeight: FontWeight.w700,
                  fontSize: 80,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.5,
                  left: 35,
                  right: 35,),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In',style: TextStyle(
                          color: Colors.brown,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        )),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.green,
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, 'register');},
                            child: Text('Sign Up',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.green,
                              ),)),
                        TextButton(
                            onPressed: (){},
                            child: Text('Forget Password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.green,
                              ),)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

