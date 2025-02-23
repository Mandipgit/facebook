import 'package:facebook/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class homepage extends StatefulWidget {
  homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool darkMode=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage('assets/image2.png'),
            fit: BoxFit.cover,
            height: 40),
            IconButton(onPressed: (){
                      setState(() {
                        darkMode=!darkMode;
                      });
                    }, 
                    icon: Icon(darkMode?Icons.light_mode:Icons.dark_mode),
                             ),
            TextButton.icon(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
            },
          icon: Icon(
            Icons.logout,
            color: Colors.red,
          ) ,
          label: Text('LogOut',
          style:TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w500,
          ) ,),)
         ],
          ),
         ),
         body: Padding(
           padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            child: Container(
              height:double.maxFinite,
              width:double.maxFinite,
              decoration: BoxDecoration(
                color: darkMode?Colors.black:Colors.white,
                border: Border.all(
                  color: darkMode?Colors.white:Colors.black,
                )
              ),
             )
                ),
              );
         }
}