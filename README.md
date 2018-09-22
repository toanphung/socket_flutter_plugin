# socket_flutter_plugin

Support both Android and iOS
# Demo
[Website](http://ongbut.net/)

[Android](https://play.google.com/store/apps/details?id=net.ongbut.app)

[iOS](https://itunes.apple.com/us/app/ông-bụt-ongbut-net/id1436428369?ls=1&mt=8)

## Example
```
import 'package:socket_flutter_plugin/socket_flutter_plugin.dart';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    try {
      SocketFlutterPlugin myIO = new SocketFlutterPlugin();
      myIO.socket("http://10.2.2.22:9006");
      myIO.connect();
      String jsonData =
              '{"content":"test"}';
      myIO.emit("chat",jsonData);
      myIO.on("chat",(data){
        debugPrint(data.toString());
      });
    } on PlatformException {

      _platformVersion = 'Failed to get platform version.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Plugin example app'),
        ),
        body: new Center(
          child: new Text('Test socketio'),
        ),
      ),
    );
  }
}
```
