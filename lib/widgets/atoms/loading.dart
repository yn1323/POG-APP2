import 'package:pog_app2/imports.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitWanderingCubes(
      color: Colors.amber[700]!,
      size: 50.0,
    );
  }
}
