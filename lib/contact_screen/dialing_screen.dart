import 'package:flutter/material.dart';
// import 'package:flutter_callkeep/flutter_callkeep.dart';
import 'package:flutter_callkeep/flutter_callkeep.dart';

class CallingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calling Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Call in progress...'),
            ElevatedButton(
              onPressed: () {
                // End the call when the button is pressed
                // FlutterCallkeep.endCall(uuid: 'YOUR_CALL_UUID');
                CallKeep.instance.activeCalls();
              },
              child: Text('End Call'),
            ),
          ],
        ),
      ),
    );
  }
}
