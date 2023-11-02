import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

class Disable_Ss_Sr extends StatefulWidget {
  const Disable_Ss_Sr({super.key});

  @override
  State<Disable_Ss_Sr> createState() => _Disable_Ss_SrState();
}

class _Disable_Ss_SrState extends State<Disable_Ss_Sr> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // DisbaleCapture(5);
    DisbaleCapture();
  }

  static const MethodChannel _channel = MethodChannel("FlutterWindowManager");

  // static Future<bool> DisbaleCapture(int flags) async {
  //   return await _channel.invokeMethod("addflags",
  //     {
  //       "flags": flags,
  //     }
  //   );
  // }

  Future<void> DisbaleCapture() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Disable Screenshots",
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Users are not allowed to take screenshots or record screen. ",
            style: TextStyle(color: Colors.red, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
