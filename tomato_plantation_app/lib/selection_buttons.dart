import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tomato_plantation_app/area_selection.dart';
import 'package:tomato_plantation_app/caring.dart';
import 'package:tomato_plantation_app/disease_control.dart';
import 'package:tomato_plantation_app/seed_selection.dart';
import 'contact.dart';
import 'watering.dart';


class SelectionButtons extends StatelessWidget {
  const SelectionButtons({super.key});



 void logOut(){
   FirebaseAuth.instance.signOut();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: logOut, icon: const Icon(Icons.logout_rounded))
      ],
        title: const Text('Select the place you want to learn more about it or use'),
        centerTitle: true,
      ),
      drawer:  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
            ),
            child:  Text('More information about'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder: (context) => const SelectionButtons()
              ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact us'),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const ContactUsPage()
              ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.schedule),
            title: const Text('Watering schedule'),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const WateringSchedule()
              ),
              );
            },
          ),
        ],
      ),
    ),
      body:Container(decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image 3.jpg'),fit: BoxFit.cover),
      ),
        child:Center(
      child: Column(
          children: [
            Row(children: [
              Expanded(child: Column(
                children: [
                  Container(
      margin: const EdgeInsets.all(10.0),
          color: Colors.grey, height: 100,
                    child: Center(child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SeedSelection()
                        ),
                        );
                      },
                      child: const Text('Seed selection'),
                    ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.green, height: 100,
                    child: Center(child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const AreaSelection()
                        ),
                        );
                      },
                      child: const Text('Area selection'),
                    ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.green, height: 100,
                    child: Center(child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const CaringActivity()
                          ),
                        );
                        },
                      child: const Text('Caring activity'),
                    ),
                    ),
                  ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      color: Colors.green, height: 100,
                      child: Center(child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const DiseaseControlPage()
                            ),
                          );
                          },
                        child: const Text('Diseases control'),
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            ),
          ],
        ),
      ),),
    );
  }
}