import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class TabPkgSpinkit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SpinKitFadingCircle(
          itemBuilder: (BuildContext context, int index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: index.isEven ? Colors.red : Colors.green,
              ),
            );
          },
        ),
        SpinKitPouringHourGlassRefined(
          color: Colors.blue,
          size: 50.0,
        ),
        SpinKitRotatingPlain(
          color: Colors.green,
          duration: Durations.extralong1,
        ),
        SpinKitFoldingCube(
          size: 70,
          color: Colors.yellow,
        ),
        SpinKitWaveSpinner(
          size: 70,
          color: Colors.yellow,
        )
      ],
    );
  }
}
