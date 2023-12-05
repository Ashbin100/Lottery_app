import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random =Random();
  int x=4;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: Icon(Icons.login_rounded),
          ),
          foregroundColor: const Color.fromARGB(255, 255, 7, 48),
          backgroundColor: Colors.amber,
          title: const Center(child:  Text('Lottery App')),),
          
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: Center(child: Text('Your winning number is 4'))),
             const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                child:x==4?Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.done_all, color: Colors.green, size: 35,),
                      const SizedBox(height: 10,),
                      Text('congrats you won\nyour number is $x\n', textAlign: TextAlign.center,),
                    ],
                  )):
                       Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [const 
                      Icon(Icons.error_sharp, color: Colors.red, size: 35,),
                      const SizedBox(height: 10,),
                      Text('your number is $x\n Better luck next time', textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          
          print(x);
          x=random.nextInt(6);
          setState(() {
            
          });
        },
       child: const Icon(Icons.refresh),
        ),
      ),

    );
  }
}