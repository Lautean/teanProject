import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tomato_plantation_app/firebase_options.dart';
import 'package:tomato_plantation_app/registration.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agricultural App',
        theme: ThemeData(
            primarySwatch: Colors.blue),
        home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('TOMATO PLANTATION')
    ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
         decoration: BoxDecoration(
         image: DecorationImage(
           image: const NetworkImage('https://as2.ftcdn.net/v2/jpg/08/92/63/97/1000_F_892639785_cnr1CqZQ3Om4FN13TWU5kj9yoog2tdZg.jpg'
           ),
               fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(
    Colors.black.withOpacity(0.5),
    BlendMode.dstATop,
           ),
         ),
         ),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            const Text('WELCOME IN TOMATOES PLANTATION'
              '\nTomatoes are popular and versatile crop that can be grown in a variety of climates.'
                '\nThey require well drained soil, plenty of sunlight and regular watering.'
                '\nProper care and maintenance can lead to a bountiful harvest\n'
                '\nBy joining us '
                '\nyou can learn more on how to take care and manage your tomatoes in different soil types.',
          style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
          const Spacer(),
            Padding(padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder:(context)=> const  RegistrationPage()
                  ),
                  );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              foregroundColor: Colors.white,
                //Text color
                padding:const  EdgeInsets.symmetric(horizontal: 24,
                    vertical: 12),
                textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                ),
              ),
                child: const Text('Next'),
              ),
            ),
          ],
          ),
        ),
    );
  }
}
