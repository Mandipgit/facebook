// import 'package:facebook/firebase_options.dart';
import 'package:facebook/homePage.dart';
import 'package:facebook/new_acc_page.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()  {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPasswordHidden = true;
  var emailText=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text('Login Page'),
      //   centerTitle: true,
      // ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF0D1A2B),
                        Color(0XFF000000),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'English (US) v',
                              style: TextStyle(
                                color: Color(0xFF8A8D91),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/image.png'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        const SizedBox(
                          height: 130,
                        ),
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color(0xFF1D3041),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Color(0xFF8A8D91),
                            ),
                          ),
                          child: TextField(
                            controller: emailText,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              labelText: "Mobile number or email",
                              labelStyle: TextStyle(
                                color: Color(0xFF8A8D91),
                              ),
                              border: InputBorder.none,
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.start,
                              floatingLabelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8A8D91),
                              ),
                              contentPadding: EdgeInsets.only(left: 20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color(0xFF1D3041),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xFF8A8D91),
                              width: 1,
                            ),
                          ),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            obscureText: isPasswordHidden,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Color(0xFF8A8D91),
                              ),
                              border: InputBorder.none,
                              floatingLabelStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8A8D91),
                              ),
                              contentPadding: EdgeInsets.only(left: 20),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordHidden = !isPasswordHidden;
                                  });
                                },
                                style: IconButton.styleFrom(
                                  foregroundColor: Colors.white,
                                ),
                                icon: Icon(isPasswordHidden
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: double.maxFinite,
                          height: 45,
                          child: FilledButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => homepage()));
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: Color(0xFF1877F2),
                            ),
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.maxFinite,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 80,),
                        Column(
                          children: [
                            Container(
                              height:50,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.blue,
                                  width:2.0,
                                  )
                                ),
                                child: TextButton(onPressed: (){
                                  setState(() {
                                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>new_Acc()));
                                  });
                                }, 
                                child:Text("Create new account",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),) ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
