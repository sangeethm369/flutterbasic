import 'package:flutter/material.dart';
import 'package:flutterbasic/home.dart';

class SignInPg extends StatefulWidget {
  const SignInPg({super.key});

  @override
  State<SignInPg> createState() => _SignInPgState();
}

class _SignInPgState extends State<SignInPg> {
  bool _isChecked=false;
  bool _eye=true;
  List<String>_socialImg=[
    "assets/images/facebook.png",
    "assets/images/twitter.png",
    "assets/images/google.png",
    "assets/images/instagram.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 31, 39),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft,child: Text("Log In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.person,color: Colors.grey),hintText: "Username",hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),),
                SizedBox(height: 20),
                TextField(obscureText: _eye,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.grey),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: TextButton(onPressed: (){
                      setState(() {
                        _eye=!_eye;
                      });
                    }, child: _eye?Text("Show"):Text("Hide")),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),),
                SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(value: _isChecked, onChanged: (value) {
                      setState(() {
                        _isChecked=!_isChecked;
                      });
                    },side: BorderSide(color: Colors.white),
                    ),
                    Text("Remember me",style: TextStyle(color: Colors.white),),Spacer(),
                    Text("Forget Password",style: TextStyle(color: Colors.red),)
                  ],
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePg(),));
                  }, 
                  child: Text("Log In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red,fixedSize: Size.fromWidth(300)),),
                  SizedBox(height: 150,),
                  Align(alignment: Alignment.center,child: Text("Or Sign in with",style: TextStyle(color: Colors.white))),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for(int i=0;i<4;i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,width: 30,color: Colors.white,
                          child: Image.asset(_socialImg[i],fit: BoxFit.fill,),
                        ),
                      ),
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?",style: TextStyle(color: Colors.white)),
                      TextButton(
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPg(),));
                      }, child: Text("Sign up",style: TextStyle(color: Colors.red)))
                    ],)
                    
              ],
            ),
          ),
        ),
      ),
    );
  }
}






class SignUpPg extends StatefulWidget {
  const SignUpPg({super.key});

  @override
  State<SignUpPg> createState() => _SignUpPgState();
}

class _SignUpPgState extends State<SignUpPg> {
  bool _isChecked=false;
  bool _eye1=true;
  bool _eye2=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 31, 39),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft,child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(hintText: "First Name",hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),),
                    ),SizedBox(width: 5,),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(hintText: "Last Name",hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                      decoration: InputDecoration(hintText: "Email",hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25))),),
                SizedBox(height: 20),
                TextField(obscureText: _eye1,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.grey),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: TextButton(onPressed: (){
                      setState(() {
                        _eye1=!_eye1;
                      });
                    }, child: _eye1?Text("Show"):Text("Hide")),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25))),),
                SizedBox(height: 16),
                TextField(obscureText: _eye2,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.grey),
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: TextButton(onPressed: (){
                      setState(() {
                        _eye2=!_eye2;
                      });
                    }, child: _eye2?Text("Show"):Text("Hide")),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25))),),
                SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(value: _isChecked, onChanged: (value) {
                      setState(() {
                        _isChecked=!_isChecked;
                      });
                    },side: BorderSide(color: Colors.white),
                    ),
                    Text("I Agree with",style: TextStyle(color: Colors.white),),
                    Text(" privacy",style: TextStyle(color: Colors.red),),
                    Text(" and",style: TextStyle(color: Colors.white),),
                    Text(" policy",style: TextStyle(color: Colors.red),)
                  ],
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePg(),));
                  }, 
                  child: Text("Sign up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red,fixedSize: Size.fromWidth(300)),),
                  SizedBox(height: 100,),
                  
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ?",style: TextStyle(color: Colors.white,)),
                      TextButton(
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPg(),));
                      }, child: Text("Sign in",style: TextStyle(color: Colors.red)))
                    ],)
                    
              ],
            ),
          ),
        ),
      ),
    );
  }
}