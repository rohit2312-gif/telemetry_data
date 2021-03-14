import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'dart:math';
class temperature extends StatefulWidget {
  @override
  _temperatureState createState() => _temperatureState();
}

class _temperatureState extends State<temperature> {
 int v;
  int f() {
setState(() {
   v = Random().nextInt(120);
});
return v;
   // i v = Random().nextInt(120);
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('telemetry')
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          FloatingActionButton(
            backgroundColor: Colors.redAccent,
            onPressed: (){
              setState(() {

              });
            },
            child: CircleAvatar(
              backgroundColor: Colors.red,
             foregroundColor: Colors.white,
             // alignment: Alignment.topRight,
             // color: Colors.red,

            ),
          ),
          Center(
            child: Card(
              elevation: 20.0,
              margin: EdgeInsets.all(20.0),
              shadowColor: Colors.black,
              //shape: ShapeBorder(

              //),
              color: Colors.white,
              //shape: Bor,
              child: Text(
                'TEMPERATURE MONITOR',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.redAccent,
                  //fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: SfRadialGauge(axes: <RadialAxis>[

              RadialAxis(

                backgroundImage: AssetImage('images/light.jpeg'),
                minimum: -50,
                maximum: 50,
                interval: 10,
                radiusFactor: 0.5,
                showAxisLine: false,
                labelOffset: 5,
                useRangeColorForAxis: true,
                axisLabelStyle: GaugeTextStyle(fontWeight: FontWeight.bold),
                ranges: <GaugeRange>[
                  GaugeRange(
                      startValue: -50,
                      endValue: -20,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: Colors.green,
                      endWidth: 0.03,
                      startWidth: 0.03),
                  GaugeRange(
                      startValue: -20,
                      endValue: 20,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: Colors.yellow,
                      endWidth: 0.03,
                      startWidth: 0.03),
                  GaugeRange(
                      startValue: 20,
                      endValue: 50,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: Colors.red,
                      endWidth: 0.03,
                      startWidth: 0.03),
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Text(
                        '°C',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      positionFactor: 0.8,
                      angle: 90)
                ],
              ),
              RadialAxis(
                //backgroundImage: AssetImage(''),
                ticksPosition: ElementsPosition.outside,
                labelsPosition: ElementsPosition.outside,
                minorTicksPerInterval: 5,
                axisLineStyle: AxisLineStyle(
                  thicknessUnit: GaugeSizeUnit.factor,
                  thickness: 0.1,
                ),
                axisLabelStyle:
                GaugeTextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                radiusFactor: 0.97,
                majorTickStyle: MajorTickStyle(
                    length: 0.1, thickness: 2, lengthUnit: GaugeSizeUnit.factor),
                minorTickStyle: MinorTickStyle(
                    length: 0.05, thickness: 1.5, lengthUnit: GaugeSizeUnit.factor),
                minimum: -60,
                maximum: 120,
                interval: 20,
                startAngle: 115,
                endAngle: 65,
                ranges: <GaugeRange>[
                  GaugeRange(
                      startValue: -60,
                      endValue: 120,
                      startWidth: 0.1,
                      sizeUnit: GaugeSizeUnit.factor,
                      endWidth: 0.1,
                      gradient: SweepGradient(stops: <double>[
                        0.2,
                        0.5,
                        0.75
                      ], colors: <Color>[
                        Colors.green,
                        Colors.yellow,
                        Colors.red,
                      ])),
                ],
                pointers: <GaugePointer>[
                  NeedlePointer(
                      value: f().toDouble(),
                      needleColor: Colors.black,
                      tailStyle: TailStyle(
                          length: 0.18,
                          width: 8,
                          color: Colors.black,
                          lengthUnit: GaugeSizeUnit.factor),
                      needleLength: 0.68,
                      needleStartWidth: 1,
                      needleEndWidth: 8,
                      knobStyle: KnobStyle(
                          knobRadius: 0.07,
                          color: Colors.white,
                          borderWidth: 0.05,
                          borderColor: Colors.black),
                      lengthUnit: GaugeSizeUnit.factor)
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Text(
                        '°F',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      positionFactor: 0.8,
                      angle: 90)
                ],

              ),
            ]),
          ),


        ],
      ),
    );
  }
}
