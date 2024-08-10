import 'package:flutter/material.dart';
import 'package:shop/pages/main_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffFDF9EC),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.center,
              image: AssetImage('lib/images/bacimg4.jpeg'),),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                Text('',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
                ),)
              ],
            ),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(bottom: 55.0,right: 10),
                child: Container(
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),),);
                          },
                          child: Text(
                            'Sign Up with Email',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
