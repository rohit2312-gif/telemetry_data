import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'final.dart';
import 'dart:async';
import 'dart:math';
FlutterTimeDemo t = FlutterTimeDemo();

void main() => runApp(ChartApp());

class ChartApp extends StatefulWidget {
  //String _timestring;

  @override

  _ChartAppState createState() => _ChartAppState();
}

class _ChartAppState extends State<ChartApp> {
  String _timeString;

  int v;
  int f() {

    //return v;
//    int v = Random().nextInt(120);
  //  return v;
  }

  @override
  void initState() {
    _timeString = "${DateTime
        .now()
        .hour} : ${DateTime
        .now()
        .minute} :${DateTime
        .now()
        .second}";
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
    // TODO: implement initState
    super.initState();
  }

  void _getCurrentTime() {
    setState(() {
      _timeString = "${DateTime
          .now()
          .hour} : ${DateTime
          .now()
          .minute} :${DateTime
          .now()
          .second}";
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xff00D3FE),
            body: Center(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(

                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            //color: Colors.red,
                            child: Text('LAP COUNT:',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),),
                          ),
                          //
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            width: 80.0,
                            height: 40.0,
                            //color: Colors.red,
                            // child: Text('25'),

                            padding: EdgeInsets.all(20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                filled: true,
                                fillColor: Colors.green,
                                //icon: Icon(Icons.location_city,
                                //color: Colors.white,),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              onChanged: (value) {

                              },

                            ),
                          ),

                          SizedBox(
                            width: 1.0,
                          ),

                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                               // decoration: ,
                                color: Colors.white,
                                  child: Text(_timeString, style: TextStyle(fontSize: 30),)),
                            ),

                        ],
                      ),
                    ),
                    SfRadialGauge(
                      // backgroundColor: Colors.white,
                        axes: <RadialAxis>[
                          RadialAxis(minimum: 0,
                              maximum: 100,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                    startValue: 0,
                                    endValue: 40,
                                    color: Colors.green,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 40,
                                    endValue: 70,
                                    color: Colors.orange,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 70,
                                    endValue: 100,
                                    color: Colors.red,
                                    startWidth: 10,
                                    endWidth: 10)
                              ],
                              pointers: <GaugePointer>[
                                NeedlePointer(value: 0)
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Container(
                                        child: Text('0' 'kmph',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold))),
                                    angle: 90,
                                    positionFactor: 0.5)
                              ]


                          )
                        ]),
                  ],
                ))));
  }
}


class FlutterTimeDemo extends StatefulWidget {
  @override _FlutterTimeDemoState createState() => _FlutterTimeDemoState();
}

class _FlutterTimeDemoState extends State<FlutterTimeDemo> {
  String _timeString;

  @override void initState() {

    super.initState();
  }

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fluter Test'),),
      body: Center(

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                child: Text(_timeString, style: TextStyle(fontSize: 30),)),
          ],
        ),),);
  }


}