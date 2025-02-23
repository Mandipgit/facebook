import 'package:facebook/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class new_Acc extends StatefulWidget {
  const new_Acc({super.key});

  @override
  State<new_Acc> createState() => new_AccState();
}

class new_AccState extends State<new_Acc> {
  bool isPasswordHidden = true;
  var emailText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                      const SizedBox(
                          height: 80,
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
                                      builder: (context) => HomePage()));
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: Color(0xFF1877F2),
                            ),
                            child: Text(
                              'Create',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                       
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