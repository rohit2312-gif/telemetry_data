import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:flutter/material.dart';
import 'final.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'graph1.dart';
import 'radial.dart';
import 'temperature.dart';
import 'final.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
final firestoreInstance=FirebaseFirestore.instance;

  final Future<FirebaseApp> fbapp= Firebase.initializeApp();

  // This widget is the root of your application.
  class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(

        home:Builder(
        builder: (context) =>
          Scaffold(
            backgroundColor: Color(0xffFCFCF8),


          appBar: AppBar(
            backgroundColor: Color(0xffE85D40),
            title: Text('            TELEMETRY SYSTEM'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container(
                //alignment: Alignment.topCenter,
                height: 150.0,
                width: double.infinity,
                child: FittedBox(child: Image.asset('images/miles.jpeg')),

                //child: AssetImage('images/light.jpeg'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context){
                                  return ChartApp();
                                }
                              ));
                            },
                            child: Container(
                              alignment: Alignment.bottomRight,
//                      padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xffE85D40),

                            ),
                            child: Center(
                              child: Icon(Icons.speed,
                              size: 50.0,
                              color: Colors.white,),
                            ),
                            height: 80.0,
                            //color: Colors.green,
                      ),
                          ),
                        ),
                      ),
                      Expanded(

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return temperature();
                              }));
                            },
                            child: Container(
                              alignment: Alignment.bottomLeft,
                             // padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Color(0xffE85D40),

                              ),
                              child: Center(
                                child: Icon(Icons.device_thermostat,
                                color: Colors.white,
                                size: 50.0,),
                              ),

                              height: 80.0,
                              //color: Colors.green,
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        )
      );
    }
  }
  